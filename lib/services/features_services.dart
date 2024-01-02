import 'package:cloud_firestore/cloud_firestore.dart';

class FeaturesServices {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future<List> getAllFeatures() async {
    QuerySnapshot snapshot = await firestore.collection('features').get();

    List snapshotDocs = [];
    for (var ele in snapshot.docs) {
      Map data = ele.data() as Map;
      snapshotDocs.add(
        {
          'title': data['title'],
          'description': data['description'],
        },
      );
    }

    return snapshotDocs;
  }
}
