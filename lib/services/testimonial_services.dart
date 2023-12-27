import 'package:cloud_firestore/cloud_firestore.dart';

class TestimonialServices {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future<List> getAllTestimonials() async {
    List testimonials = [];

    QuerySnapshot testimonialSnapshot =
        await firestore.collection('testimonials').get();

    List testimonialDocs = testimonialSnapshot.docs;

    for (var ele in testimonialDocs) {
      testimonials.add({
        'review': ele.data()['review'],
        'from': ele.data()['from'],
        'designation': ele.data()['designation'],
      });
    }

    return testimonials;
  }
}
