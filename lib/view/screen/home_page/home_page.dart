

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:product_app/controller/getx_controller/home.dart';
import 'package:product_app/view/common_widget/common_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController controller =  Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Obx(()=> controller.isLoading.isTrue?
        CircularProgressIndicator() : Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CommonText(title: "Total Item : ${controller.productlist.length}"),
            Expanded(
              child: GridView.builder(
                shrinkWrap: true,
                itemCount: controller.productlist.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  log("Total Item : ${controller.productlist.length}");
                  var data = controller.productlist[index];
                  return Card(
                    child: SizedBox(
                      height: 200,
                      width: MediaQuery.sizeOf(context).width / 2.2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Container(
                              height: 150,
                              width: MediaQuery.sizeOf(context).width / 2.2,
                              color: Colors.red,
                            ),
                          ),
                          Padding(
                            padding:
                            const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CommonText(title: "ID : ${data.id}"),
                                CommonText(title: "Name : ${data.name} "),
                                CommonText(title: "Price : ${data.price} "),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),),
      ),
    );
  }
}
