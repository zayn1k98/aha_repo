import 'dart:convert';

List<FAQModel> faqModelFromJson(String str) => List<FAQModel>.from(
      json.decode(str).map(
            (x) => FAQModel.fromJson(x),
          ),
    );

String faqModelToJson(List<FAQModel> data) => json.encode(
      List<dynamic>.from(
        data.map(
          (x) => x.toJson(),
        ),
      ),
    );

class FAQModel {
  String id;
  String question;
  String answer;
  bool isExpanded;
  DateTime createdAt;
  DateTime updatedAt;
  int v;

  FAQModel({
    required this.id,
    required this.question,
    required this.answer,
    required this.isExpanded,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
  });

  factory FAQModel.fromJson(Map<String, dynamic> json) => FAQModel(
        id: json["_id"],
        question: json["question"],
        answer: json["answer"],
        isExpanded: false,
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "question": question,
        "answer": answer,
        "isExpanded": isExpanded,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "__v": v,
      };
}
