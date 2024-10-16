
import 'dart:developer';

import 'package:get/get.dart';
import 'package:product_app/controller/api_controller/product_list_service.dart';
import 'package:product_app/model/product_list_model.dart';

class HomeController extends GetxController{
  List<Productlist> productlist = [];
  RxBool isLoading = false.obs;

  getProductList()async{
    isLoading.value = true;
    var data =ProductListService.getData();
    isLoading.value = false;

    if(data!.isNotEmpty){
      log("-------------11111111111111111111111111111111--------${data.length}");
      productlist=data;
    }
  }

  @override
  void onInit() {
    getProductList();
    super.onInit();
  }
}