import 'dart:convert';

import 'package:medxpress/app/modules/productDetails/model/product_list_response_model.dart';

String jsonResponse = '''
  [
  {
    "id": "1",
    "name": "Ceevit",
    "description": "Vitamin C 250 mg, Sugar Free, Orange Flavour",
    "manufacturer": "Square Pharmaceuticals PLC.",
    "genericName": "Albuterol Inhalation Solution",
    "price": 25.0,
    "oldPrice": 65.0,
    "dosageForm": "250mg Tablet",
    "treatmentInfo": "Treatment or prevention of Vitamin C Deficiency, Scurvy, Infection, Trauma, Burns, Cold exposure, Following Surgery, Common cold, Fever, Stress, Cancer, Hemoglobin and Children receiving unfortified to Cold exposure.",
    "images": [
      "https://example.com/images/ceevit1.jpg",
      "https://example.com/images/ceevit2.jpg"
    ],
    "reviews": [
      {
        "author": "Erric Hoffman",
        "date": "05-Oct-2020",
        "rating": 4.2,
        "comment": "Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi ut nisi odio. Nulla facilisi. Nunc risus massa, gravida id egestas."
      },
      {
        "author": "Erric Hoffman",
        "date": "05-Oct-2020",
        "rating": 4.2,
        "comment": "Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi ut nisi odio. Nulla facilisi. Nunc risus massa, gravida id egestas."
      },
      {
        "author": "Erric Hoffman",
        "date": "05-Oct-2020",
        "rating": 4.2,
        "comment": "Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi ut nisi odio. Nulla facilisi. Nunc risus massa, gravida id egestas."
      }
    ],
    "rating": 4.4,
    "ratingsCount": 923,
    "reviewsCount": 257
  },
  {
    "id": "2",
    "name": "Vitamin D3",
    "description": "Vitamin D3 5000 IU, High Potency",
    "manufacturer": "Health Labs",
    "genericName": "Cholecalciferol",
    "price": 30.0,
    "oldPrice": 50.0,
    "dosageForm": "Softgel",
    "treatmentInfo": "Supports bone health, immune system, and mood.",
    "images": [
      "https://example.com/images/vitaminD31.jpg",
      "https://example.com/images/vitaminD32.jpg"
    ],
    "reviews": [
      {
        "author": "Jane Doe",
        "date": "10-Jan-2021",
        "rating": 4.8,
        "comment": "Great product, really helped improve my vitamin D levels."
      },
      {
        "author": "John Smith",
        "date": "22-Feb-2021",
        "rating": 4.5,
        "comment": "Effective and easy to swallow."
      }
    ],
    "rating": 4.6,
    "ratingsCount": 1200,
    "reviewsCount": 300
  },
  {
    "id": "3",
    "name": "Omega-3 Fish Oil",
    "description": "Omega-3 Fish Oil 1000 mg, Supports Heart Health",
    "manufacturer": "NutriSupreme",
    "genericName": "Fish Oil",
    "price": 40.0,
    "oldPrice": 70.0,
    "dosageForm": "Softgel",
    "treatmentInfo": "Supports heart, brain, and joint health.",
    "images": [
      "https://example.com/images/omega31.jpg",
      "https://example.com/images/omega32.jpg"
    ],
    "reviews": [
      {
        "author": "Alice Green",
        "date": "05-Mar-2022",
        "rating": 4.7,
        "comment": "High quality fish oil, no fishy aftertaste."
      },
      {
        "author": "Bob Brown",
        "date": "11-Apr-2022",
        "rating": 4.3,
        "comment": "Good value for the price."
      }
    ],
    "rating": 4.5,
    "ratingsCount": 950,
    "reviewsCount": 275
  }
]
  ''';
List<dynamic> productMapList = jsonDecode(jsonResponse);
List<ProductDetails> products = productMapList.map((productMap) => ProductDetails.fromJson(productMap)).toList();