import 'package:flash_mart/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  TextEditingController searchController = TextEditingController();

  var grocerykitchen = [
    {"img": "image 41.png", "text": "Vegetables & \nFruits"},
    {"img": "image 42.png", "text": "Atta, Dal & \nRice"},
    {"img": "image 43.png", "text": "Oil, Ghee & \nMasala"},
    {"img": "image 44.png", "text": "Dairy, Bread & \nMilk"},
    {"img": "image 45.png", "text": "Biscuits & \nBakery"}
  ];

  var secondgrocery = [
    {"img": "image 21.png", "text": "Dry Fruits &\n Cereals"},
    {"img": "image 22.png", "text": "Kitchen &\n Appliances"},
    {"img": "image 23.png", "text": "Tea & \nCoffees"},
    {"img": "image 24.png", "text": "Ice Creams & \nmuch more"},
    {"img": "image 25.png", "text": "Noodles & \nPacket Food"}
  ];

  var snacksanddrinks = [
    {"img": "image 31.png", "text": "Chips &\n Namkeens"},
    {"img": "image 32.png", "text": "Sweets & \nChocolates"},
    {"img": "image 33.png", "text": "Drinks & \nJuices"},
    {"img": "image 34.png", "text": "Sauces &\n Spreads"},
    {"img": "image 35.png", "text": "Beauty &\n Cosmetics"}
  ];

  var household = [
    {"img": "image 36.png"},
    {"img": "image 37.png"},
    {"img": "image 38.png"},
    {"img": "image 39.png"},
    {"img": "image 40.png"}
  ];

  Widget categoryList(data) {
    return Container(
      height: 120,
      padding: const EdgeInsets.only(left: 20),
      child: ListView.builder(
        itemCount: data.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(4),
                child: Container(
                  height: 78,
                  width: 71,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0XFFD9EBEB),
                  ),
                  child: UiHelper.CustomImage(
                      img: data[index]["img"].toString()),
                ),
              ),
              if (data[index]["text"] != null)
                UiHelper.CustomText(
                    text: data[index]["text"].toString(),
                    color: Colors.black,
                    fontweight: FontWeight.normal,
                    fontsize: 10)
            ],
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 40),

            /// HEADER
            Stack(
              children: [
                Container(
                  height: 190,
                  width: double.infinity,
                  color: Colors.green[800],
                  child: Column(
                    children: [
                      const SizedBox(height: 30),

                      Row(
                        children: [
                          const SizedBox(width: 20),
                          UiHelper.CustomText(
                              text: "FlashMart in",
                              color: Colors.black,
                              fontweight: FontWeight.bold,
                              fontsize: 15),
                        ],
                      ),

                      Row(
                        children: [
                          const SizedBox(width: 20),
                          UiHelper.CustomText(
                              text: "16 minutes",
                              color: Colors.black,
                              fontweight: FontWeight.bold,
                              fontsize: 20),
                        ],
                      ),

                      Row(
                        children: [
                          const SizedBox(width: 20),
                          UiHelper.CustomText(
                              text: "HOME ",
                              color: Colors.black,
                              fontweight: FontWeight.bold,
                              fontsize: 14),
                          UiHelper.CustomText(
                              text: "- Shivani Mahajan, Hamirpur(H.P)",
                              color: Colors.black,
                              fontweight: FontWeight.bold,
                              fontsize: 14),
                        ],
                      ),
                    ],
                  ),
                ),

                const Positioned(
                  right: 20,
                  bottom: 100,
                  child: CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.person, color: Colors.black, size: 20),
                  ),
                ),

                Positioned(
                  bottom: 30,
                  left: 20,
                  right: 20,
                  child: UiHelper.CustomTextField(
                      controller: searchController),
                )
              ],
            ),

            const SizedBox(height: 30),

            /// Grocery
            Row(
              children: [
                const SizedBox(width: 20),
                UiHelper.CustomText(
                    text: "Grocery & Kitchen",
                    color: Colors.black,
                    fontweight: FontWeight.bold,
                    fontsize: 14),
              ],
            ),

            categoryList(grocerykitchen),
            categoryList(secondgrocery),

            /// Snacks
            Row(
              children: [
                const SizedBox(width: 20),
                UiHelper.CustomText(
                    text: "Snacks & Drinks",
                    color: Colors.black,
                    fontweight: FontWeight.bold,
                    fontsize: 14),
              ],
            ),

            categoryList(snacksanddrinks),

            /// Household
            Row(
              children: [
                const SizedBox(width: 20),
                UiHelper.CustomText(
                    text: "Household Essentials",
                    color: Colors.black,
                    fontweight: FontWeight.bold,
                    fontsize: 14),
              ],
            ),

            categoryList(household),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}