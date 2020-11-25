// import 'package:cloud_firestore/cloud_firestore.dart';

class Paciente {
  String id;
  String nombre = "José Santos López ";
  String imagen =
      "https://firebasestorage.googleapis.com/v0/b/medicosregistrados.appspot.com/o/%20smXb5Y6pEHyqaKicXDXf%2Fperfil.png?alt=media&token=242330e0-a492-4a95-ae41-5caed64b48ba";
  String nacimiento = "13/06/1940";
  String resumen;
  Paciente(String id) {
    this.id = id;
    // this.nombre = "";
    // this.imagen = "";
    // this.nacimiento = "";
    // this.resumen = "";
    getdatos(this.id);
  }

  Future<void> getdatos(id) async {
    // FirebaseFirestore _firestore = FirebaseFirestore.instance;
    // CollectionReference _stocks = _firestore.collection('pacientes');
    // DocumentReference _stock = _stocks.document(id);
    // DocumentSnapshot snapshot = await _stock.get();
    // Map<String, dynamic> data = snapshot.data();
    // this.nombre = data["nombre"];
    // this.imagen = data["imagen"];
    // this.nacimiento = data["fecha_nacimiento"];
    // this.resumen = data["resumen_datos"];
    // print(data);
  }
}
