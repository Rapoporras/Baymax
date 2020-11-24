import 'package:cloud_firestore/cloud_firestore.dart';

class Doctor {
  String id;
  String nombre;
  String imagen;
  Doctor(String id) {
    this.id = id;
  }

  void getdatos(id) async {
    FirebaseFirestore _firestore = FirebaseFirestore.instance;
    CollectionReference _stocks = _firestore.collection('medicosRegistrados');
    DocumentReference _stock = _stocks.document(id);
    DocumentSnapshot snapshot = await _stock.get();
    Map<String, dynamic> data = snapshot.data();
    this.nombre = data["nombre"];
    this.imagen = data["imagen"];
  }
}
