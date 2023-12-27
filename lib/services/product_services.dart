import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';

class ProductServices {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  FirebaseStorage firebaseStorage = FirebaseStorage.instance;

  Future<List> getAllProducts() async {
    QuerySnapshot querySnapshot = await firestore.collection('products').get();

    List products = querySnapshot.docs;

    List allProducts = [];

    for (var ele in products) {
      Map<String, dynamic> productData = ele.data() as Map<String, dynamic>;

      List productImages = [];

      final productImagesQuery = await firebaseStorage
          .ref()
          .child('products/${productData['document_id']}')
          .listAll();

      for (var ele in productImagesQuery.items) {
        String url = await ele.getDownloadURL();
        productImages.add(url);
      }
      productData.addAll(
        {
          'images': productImages,
        },
      );

      allProducts.add(productData);
    }

    // print("ALL PRODUCTS : $allProducts");
    return allProducts;
  }

  Future getProductDetails({required String documentID}) async {
    DocumentSnapshot details =
        await firestore.collection('products').doc(documentID).get();

    Map<String, dynamic> productDetails =
        details.data() as Map<String, dynamic>;

    final productImagesResult =
        await firebaseStorage.ref().child('products/$documentID').listAll();

    List productImages = [];

    for (var ele in productImagesResult.items) {
      String url = await ele.getDownloadURL();
      productImages.add(url);
    }

    productDetails.addAll(
      {
        'images': productImages,
      },
    );

    return productDetails;
  }
}
