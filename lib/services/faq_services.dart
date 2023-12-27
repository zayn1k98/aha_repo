import 'package:cloud_firestore/cloud_firestore.dart';

class FAQServices {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future<List> getAllFaqs() async {
    List faqs = [];

    QuerySnapshot snapshot = await firestore.collection('faqs').get();

    List snapshotDocuments = snapshot.docs;

    for (var ele in snapshotDocuments) {
      faqs.add({
        'question': ele.data()['question'],
        'answer': ele.data()['answer'],
      });
    }

    return faqs;
  }
}
