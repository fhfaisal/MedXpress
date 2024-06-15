import 'package:get/get.dart';
import 'package:medxpress/app/modules/productDetails/model/product_list_response_model.dart';
import 'package:medxpress/app/modules/productDetails/model/product_response.dart';
import 'package:medxpress/app/routes/app_pages.dart';

class HomeController extends GetxController {
  final RxList<ProductDetails> productList = <ProductDetails>[].obs;
  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
  void fetchProducts() {
   productList.addAll(products);
  }
  void navigateToProductDetails(int index) {
    final productId = productList[index].id;
    Get.toNamed(Routes.PRODUCT_DETAILS, arguments: productId);
  }
}
