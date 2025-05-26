import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/service model.dart';

class ServiceRepository {
  final FirebaseFirestore _firestore;

  ServiceRepository(this._firestore);

  Stream<List<ServiceModel>> getServicesStream() {
    return _firestore.collection('services').snapshots().map(
      (snapshot) => snapshot.docs.map((doc) => ServiceModel.fromMap(doc.data())).toList(),
    );
  }
}
