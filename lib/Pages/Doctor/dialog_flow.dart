import 'package:flutter/material.dart';
import 'package:Care4U/Pages/Doctor/facts_message.dart';
import 'package:flutter_dialogflow/dialogflow_v2.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FlutterFactsChatBot extends StatefulWidget {
  FlutterFactsChatBot(this.title, {Key key}) : super(key: key);

  final String title;

  @override
  _FlutterFactsChatBotState createState() => new _FlutterFactsChatBotState();
}

class _FlutterFactsChatBotState extends State<FlutterFactsChatBot> {
  final List<Facts> messageList = <Facts>[];
  final TextEditingController _textController = new TextEditingController();

  Widget _queryInputWidget(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30))),
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Flexible(
              child: TextField(
                controller: _textController,
                onSubmitted: _submitQuery,
                decoration:
                    InputDecoration.collapsed(hintText: "Escribe tu mensaje"),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xffC5EDFC),
                ),
                color: Color(0xffC5EDFC),
                borderRadius: BorderRadius.all(Radius.circular(50)),
                // boxShadow: [
                //   BoxShadow(
                //     color: Colors.black.withOpacity(0.25),
                //     spreadRadius: 0,
                //     blurRadius: 4,
                //     offset: Offset(0, 4), // changes position of shadow
                //   ),
                // ],
              ),
              // margin: EdgeInsets.symmetric(horizontal: 4.0),
              child: IconButton(
                  icon: FaIcon(
                    FontAwesomeIcons.paperPlane,
                    color: Color(0xFF0C2231),
                    size: 25,
                  ),
                  onPressed: () => _submitQuery(_textController.text)),
            ),
          ],
        ),
      ),
    );
  }

  void agentResponse(query) async {
    _textController.clear();
    AuthGoogle authGoogle =
        await AuthGoogle(fileJson: "assets/Care4U-a4aef-5c4e596516a1.json")
            .build();
    Dialogflow dialogFlow =
        Dialogflow(authGoogle: authGoogle, language: Language.english);
    AIResponse response = await dialogFlow.detectIntent(query);
    Facts message = Facts(
      text: response.getMessage() ??
          CardDialogflow(response.getListMessage()[0]).title,
      name: "Flutter",
      type: false,
    );
    setState(() {
      messageList.insert(0, message);
    });
  }

  void _submitQuery(String text) {
    _textController.clear();
    Facts message = new Facts(
      text: text,
      name: "User",
      type: true,
    );
    setState(() {
      messageList.insert(0, message);
    });
    agentResponse(text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          widget.title,
          style: TextStyle(
              color: Color(0xff0c2231),
              fontSize: 22,
              fontWeight: FontWeight.w700),
        ),
      ),
      body: Column(children: <Widget>[
        Flexible(
            child: ListView.builder(
          padding: EdgeInsets.all(8.0),
          reverse: true, //To keep the latest messages at the bottom
          itemBuilder: (_, int index) => messageList[index],
          itemCount: messageList.length,
        )),
        _queryInputWidget(context),
      ]),
    );
  }
}
