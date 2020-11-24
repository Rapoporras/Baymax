import 'package:cloud_firestore/cloud_firestore.dart';

class Paciente {
  String id;
  String nombre;
  String imagen;
  String nacimiento;
  String resumen;
  Paciente(String id) {
    this.id = id;
    getdatos(this.id);
  }

  Future<void> getdatos(id) async {
    FirebaseFirestore _firestore = FirebaseFirestore.instance;
    CollectionReference _stocks = _firestore.collection('pacientes');
    DocumentReference _stock = _stocks.document(id);
    DocumentSnapshot snapshot = await _stock.get();
    Map<String, dynamic> data = snapshot.data();
    this.nombre = data["nombre"];
    this.imagen = data["imagen"];
    this.nacimiento = data["fecha_nacimiento"];
    this.resumen = data["resumen_datos"];
    print(data);
  }
}
