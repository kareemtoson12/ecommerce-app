import 'package:easyecommerce/model_veiw/home_veiw_model.dart';

import 'package:easyecommerce/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Map<String, String>> items = [
    {'image': 'lib/assets/images/tv.jpg', 'name': 'TV'},
    {'image': 'lib/assets/images/mobile.png', 'name': 'Mobile'},
    {'image': 'lib/assets/images/labtops.jpeg', 'name': 'Laptop'},
    {'image': 'lib/assets/images/headphone.webp', 'name': 'Headphone'},
    {'image': 'lib/assets/images/smartphone.webp', 'name': 'Smartphone'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottomNavigationBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(top: 100, right: 20, left: 20),
          child: Column(
            children: [
              _searchTextFormField(),
              const SizedBox(height: 30),
              CustomText(text: "Categories"),
              const SizedBox(height: 10),
              listveiwCategoris(),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: 'Best Selling',
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                  CustomText(
                    text: 'See All',
                    fontSize: 18,
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              listveiwproducts(),
            ],
          ),
        ),
      ),
    );
  }

  Container listveiwCategoris() {
    return Container(
      height: 100,
      child: ListView.builder(
        itemCount: items.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final item = items[index];
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                height: 70,
                width: 70,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(item['image']!),
                ),
              ),
              const SizedBox(height: 5),
              CustomText(
                text: item['name']!,
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ],
          );
        },
      ),
    );
  }

  Container listveiwproducts() {
    return Container(
      height: 350,
      child: ListView.builder(
        itemCount: items.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final item = items[index];
          return Container(
            width: MediaQuery.of(context).size.width * .4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 320,
                  margin: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                  ),
                  width: MediaQuery.of(context).size.width * .4,
                  child: Column(children: [
                    Image.asset(
                      'lib/assets/images/watch1.jpg',
                      fit: BoxFit.fill,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomText(
                      text: 'Beoplay Speaker',
                      alignment: Alignment.bottomLeft,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomText(
                      text: item['name']!,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomText(
                      text: '\$750',
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.green,
                    ),
                  ]),
                ),
                const SizedBox(height: 5),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _searchTextFormField() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey.shade200,
      ),
      child: TextFormField(
        decoration: const InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(
            Icons.search,
            color: Colors.black,
          ),
          hintText: 'Search...',
          contentPadding: EdgeInsets.symmetric(vertical: 15),
        ),
      ),
    );
  }

  Widget bottomNavigationBar() {
    return GetBuilder(
      init: Homeviewmodel(),
      builder: (controller) => BottomNavigationBar(
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.ads_click),
            label: 'Explore...',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart_checkout,
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Account',
          ),
        ],
        currentIndex: controller.navigatorvalue,
        onTap: (value) {
          controller.selectedvalue(value);
        },
      ),
    );
  }
}
