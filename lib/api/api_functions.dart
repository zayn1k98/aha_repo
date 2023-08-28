import 'dart:developer';

import 'package:aha_camping_web/api/api_constants.dart';
import 'package:http/http.dart' as http;
import 'package:aha_camping_web/models/faq_model/faq_model.dart';

class APIFunctions {
  //! FAQ API's

  Future<List<FAQModel>> getFAQs() async {
    List<FAQModel> faqs = [];
    Uri url = Uri.parse("${APIConstants.baseUrl}get_faq");

    final response = await http.get(url);

    try {
      if (response.statusCode == 200) {
        faqs = faqModelFromJson(response.body);
      } else {
        log("ERROR : Get FAQ API call failed");
      }
    } on Exception catch (error) {
      log("ERROR : $error");
    }

    return faqs;
  }
}
