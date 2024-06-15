import 'package:get/get.dart';
import 'package:medxpress/app/modules/productDetails/model/product_list_response_model.dart';
import 'package:medxpress/app/modules/productDetails/model/product_response.dart';

class ProductDetailsController extends GetxController {
  var productId = ''.obs;
  ProductDetails? product;

  @override
  void onInit() {
    super.onInit();
    productId.value = Get.arguments as String;
    fetchProductDetails();
  }

  void fetchProductDetails() {
    product = products.firstWhere((element) => element.id == productId.value);
  }
}
