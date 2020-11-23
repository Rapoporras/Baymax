// import 'dart:async';
// import 'dart:io';

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:intl/intl.dart';
// import 'package:dash_chat/dash_chat.dart';

// class Chat extends StatefulWidget {
//   @override
//   _ChatState createState() => _ChatState();
// }

// class _ChatState extends State<Chat> {
//   final GlobalKey<DashChatState> _chatViewKey = GlobalKey<DashChatState>();

//   final ChatUser user = ChatUser(
//     name: "Fayeed",
//     uid: "123456789",
//     avatar: "https://www.wrappixel.com/ampleadmin/assets/images/users/4.jpg",
//   );

//   final ChatUser otherUser = ChatUser(
//     name: "Mrfatty",
//     uid: "25649654",
//   );

//   List<ChatMessage> messages = List<ChatMessage>();
//   var m = List<ChatMessage>();

//   var i = 0;

//   @override
//   void initState() {
//     super.initState();
//   }

//   void systemMessage() {
//     Timer(Duration(milliseconds: 300), () {
//       if (i < 6) {
//         setState(() {
//           messages = [...messages, m[i]];
//         });
//         i++;
//       }
//       Timer(Duration(milliseconds: 300), () {
//         _chatViewKey.currentState.scrollController
//           ..animateTo(
//             _chatViewKey.currentState.scrollController.position.maxScrollExtent,
//             curve: Curves.easeOut,
//             duration: const Duration(milliseconds: 300),
//           );
//       });
//     });
//   }

//   void onSend(ChatMessage message) {
//     print(message.toJson());
//     var documentReference = Firestore.instance
//         .collection('messages')
//         .document(DateTime.now().millisecondsSinceEpoch.toString());

//     Firestore.instance.runTransaction((transaction) async {
//       await transaction.set(
//         documentReference,
//         message.toJson(),
//       );
//     });
//     /* setState(() {
//       messages = [...messages, message];
//       print(messages.length);
//     });
//     if (i == 0) {
//       systemMessage();
//       Timer(Duration(milliseconds: 600), () {
//         systemMessage();
//       });
//     } else {
//       systemMessage();
//     } */
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Chat App"),
//       ),
//       body: StreamBuilder(
//           stream: Firestore.instance.collection('messages').snapshots(),
//           builder: (context, snapshot) {
//             if (!snapshot.hasData) {
//               return Center(
//                 child: CircularProgressIndicator(
//                   valueColor: AlwaysStoppedAnimation<Color>(
//                     Theme.of(context).primaryColor,
//                   ),
//                 ),
//               );
//             } else {
//               List<DocumentSnapshot> items = snapshot.data.documents;
//               var messages =
//                   items.map((i) => ChatMessage.fromJson(i.data())).toList();
//               return DashChat(
//                 key: _chatViewKey,
//                 inverted: false,
//                 onSend: onSend,
//                 sendOnEnter: true,
//                 textInputAction: TextInputAction.send,
//                 user: user,
//                 inputDecoration:
//                     InputDecoration.collapsed(hintText: "Add message here..."),
//                 dateFormat: DateFormat('yyyy-MMM-dd'),
//                 timeFormat: DateFormat('HH:mm'),
//                 messages: messages,
//                 showUserAvatar: false,
//                 showAvatarForEveryMessage: false,
//                 scrollToBottom: false,
//                 onPressAvatar: (ChatUser user) {
//                   print("OnPressAvatar: ${user.name}");
//                 },
//                 onLongPressAvatar: (ChatUser user) {
//                   print("OnLongPressAvatar: ${user.name}");
//                 },
//                 inputMaxLines: 5,
//                 messageContainerPadding: EdgeInsets.only(left: 5.0, right: 5.0),
//                 alwaysShowSend: true,
//                 inputTextStyle: TextStyle(fontSize: 16.0),
//                 inputContainerStyle: BoxDecoration(
//                   border: Border.all(width: 0.0),
//                   color: Colors.white,
//                 ),
//                 onQuickReply: (Reply reply) {
//                   setState(() {
//                     messages.add(ChatMessage(
//                       text: reply.value,
//                       createdAt: DateTime.now(),
//                       user: user,
//                     ));

//                     messages = [...messages];
//                   });

//                   Timer(Duration(milliseconds: 300), () {
//                     _chatViewKey.currentState.scrollController
//                       ..animateTo(
//                         _chatViewKey.currentState.scrollController.position
//                             .maxScrollExtent,
//                         curve: Curves.easeOut,
//                         duration: const Duration(milliseconds: 300),
//                       );

//                     if (i == 0) {
//                       systemMessage();
//                       Timer(Duration(milliseconds: 600), () {
//                         systemMessage();
//                       });
//                     } else {
//                       systemMessage();
//                     }
//                   });
//                 },
//                 onLoadEarlier: () {
//                   print("laoding...");
//                 },
//                 shouldShowLoadEarlier: false,
//                 showTraillingBeforeSend: true,
//                 trailing: <Widget>[
//                   IconButton(
//                     icon: Icon(Icons.photo),
//                     onPressed: () async {
//                       File result = await ImagePicker.pickImage(
//                         source: ImageSource.gallery,
//                         imageQuality: 80,
//                         maxHeight: 400,
//                         maxWidth: 400,
//                       );

//                       if (result != null) {
//                         // final StorageReference storageRef =
//                         //     FirebaseStorage.instance.ref().child("chat_images");

//                         // StorageUploadTask uploadTask = storageRef.putFile(
//                         //   result,
//                         //   StorageMetadata(
//                         //     contentType: 'image/jpg',
//                         //   ),
//                         // );
//                         // StorageTaskSnapshot download =
//                         //     await uploadTask.onComplete;

//                         // String url = await download.ref.getDownloadURL();

//                         // ChatMessage message =
//                         //     ChatMessage(text: "", user: user, image: url);

//                         // var documentReference = Firestore.instance
//                         //     .collection('messages')
//                         //     .document(DateTime.now()
//                         //         .millisecondsSinceEpoch
//                         //         .toString());

//                         // Firestore.instance.runTransaction((transaction) async {
//                         //   await transaction.set(
//                         //     documentReference,
//                         //     message.toJson(),
//                         //   );
//                         // });
//                       }
//                     },
//                   )
//                 ],
//               );
//             }
//           }),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_dialogflow/dialogflow_v2.dart';

class Chat extends StatefulWidget {
  Chat({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Chat createState() => new _Chat();
}

class _Chat extends State<Chat> {
  final List<ChatMessage> _messages = <ChatMessage>[];
  final TextEditingController _textController = new TextEditingController();

  Widget _buildTextComposer() {
    return new IconTheme(
      data: new IconThemeData(color: Theme.of(context).accentColor),
      child: new Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        child: new Row(
          children: <Widget>[
            new Flexible(
              child: new TextField(
                controller: _textController,
                onSubmitted: _handleSubmitted,
                decoration:
                    new InputDecoration.collapsed(hintText: "Send a message"),
              ),
            ),
            new Container(
              margin: new EdgeInsets.symmetric(horizontal: 4.0),
              child: new IconButton(
                  icon: new Icon(Icons.send),
                  onPressed: () => _handleSubmitted(_textController.text)),
            ),
          ],
        ),
      ),
    );
  }

  void Response(query) async {
    _textController.clear();
    AuthGoogle authGoogle =
        await AuthGoogle(fileJson: "Assets/baymax-a4aef-5c4e596516a1.json")
            .build();
    Dialogflow dialogflow =
        Dialogflow(authGoogle: authGoogle, language: Language.english);
    AIResponse response = await dialogflow.detectIntent(query);
    ChatMessage message = new ChatMessage(
      text: response.getMessage() ??
          new TypeMessage(response.getListMessage()[0]).platform,
      name: "Bot",
      type: false,
    );
    setState(() {
      _messages.insert(0, message);
    });
  }

  void _handleSubmitted(String text) {
    _textController.clear();
    ChatMessage message = new ChatMessage(
      text: text,
      name: "Rances",
      type: true,
    );
    setState(() {
      _messages.insert(0, message);
    });
    Response(text);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Dialogflow V2"),
      ),
      body: new Column(children: <Widget>[
        new Flexible(
            child: new ListView.builder(
          padding: new EdgeInsets.all(8.0),
          reverse: true,
          itemBuilder: (_, int index) => _messages[index],
          itemCount: _messages.length,
        )),
        new Divider(height: 1.0),
        new Container(
          decoration: new BoxDecoration(color: Theme.of(context).cardColor),
          child: _buildTextComposer(),
        ),
      ]),
    );
  }
}

class ChatMessage extends StatelessWidget {
  ChatMessage({this.text, this.name, this.type});

  final String text;
  final String name;
  final bool type;

  List<Widget> otherMessage(context) {
    return <Widget>[
      new Container(
        margin: const EdgeInsets.only(right: 16.0),
        child: new CircleAvatar(child: new Image.asset("img/placeholder.png")),
      ),
      new Expanded(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Text(this.name,
                style: new TextStyle(fontWeight: FontWeight.bold)),
            new Container(
              margin: const EdgeInsets.only(top: 5.0),
              child: new Text(text),
            ),
          ],
        ),
      ),
    ];
  }

  List<Widget> myMessage(context) {
    return <Widget>[
      new Expanded(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            new Text(this.name, style: Theme.of(context).textTheme.subhead),
            new Container(
              margin: const EdgeInsets.only(top: 5.0),
              child: new Text(text),
            ),
          ],
        ),
      ),
      new Container(
        margin: const EdgeInsets.only(left: 16.0),
        child: new CircleAvatar(child: new Text(this.name[0])),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: new Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: this.type ? myMessage(context) : otherMessage(context),
      ),
    );
  }
}
