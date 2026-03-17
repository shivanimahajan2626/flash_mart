import 'package:flash_mart/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {


  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [

            const SizedBox(height: 40),

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
                              color: const Color(0XFF000000),
                              fontweight: FontWeight.bold,
                              fontsize: 15,
                              fontfamily: "bold"),
                        ],
                      ),

                      Row(
                        children: [

                          const SizedBox(width: 20),

                          UiHelper.CustomText(
                              text: "16 minutes",
                              color: const Color(0XFF000000),
                              fontweight: FontWeight.bold,
                              fontsize: 20,
                              fontfamily: "bold"),
                        ],
                      ),

                      Row(
                        children: [

                          const SizedBox(width: 20),

                          UiHelper.CustomText(
                              text: "HOME ",
                              color: const Color(0XFF000000),
                              fontweight: FontWeight.bold,
                              fontsize: 14),

                          UiHelper.CustomText(
                              text: "- Shivani Mahajan, Hamirpur(H.P)",
                              color: const Color(0XFF000000),
                              fontweight: FontWeight.bold,
                              fontsize: 14)
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
                    child: UiHelper.CustomTextField(controller: searchController))
              ],
            ),

            const SizedBox(height: 20),

            UiHelper.CustomImage(img: "shopping-cart (1) 1.png"),

            const SizedBox(height: 20),

            UiHelper.CustomText(
                text: "Reordering will be easy",
                color: const Color(0XFF000000),
                fontweight: FontWeight.bold,
                fontsize: 16,
                fontfamily: "bold"),

            UiHelper.CustomText(
              text: "Items you order will show up here so you can buy",
              color: const Color(0XFF000000),
              fontweight: FontWeight.bold,
              fontsize: 12,
            ),

            UiHelper.CustomText(
              text: "them again easily.",
              color: const Color(0XFF000000),
              fontweight: FontWeight.bold,
              fontsize: 12,
            ),

            const SizedBox(height: 30),

            Row(
              children: [

                const SizedBox(width: 20),

                UiHelper.CustomText(
                    text: "Bestsellers",
                    color: const Color(0XFF000000),
                    fontweight: FontWeight.bold,
                    fontsize: 16,
                    fontfamily: "bold")
              ],
            ),

            const SizedBox(height: 10),

            /// PRODUCT SECTION

            Row(
              children: [

                const SizedBox(width: 20),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Stack(
                      children: [
                        UiHelper.CustomImage(img: "image 45(1).png"),

                        Padding(
                          padding: const EdgeInsets.only(top: 95, left: 65),
                          child: UiHelper.CustomButton(() {}),
                        ),
                      ],
                    ),

                    const SizedBox(height: 5),

                    const Text(
                      "Amul Taaza Toned\nFresh Milk",
                      style: TextStyle(fontSize: 10),
                    ),

                    const Row(
                      children: [
                        Icon(Icons.timer, size: 12, color: Colors.brown),
                        SizedBox(width: 4),
                        Text("16 MINS", style: TextStyle(fontSize: 10))
                      ],
                    ),

                    const Text(
                      "₹ 27",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),

                const SizedBox(width: 15),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Stack(
                      children: [
                        UiHelper.CustomImage(img: "image 44(1).png"),

                        Padding(
                          padding: const EdgeInsets.only(top: 95, left: 65),
                          child: UiHelper.CustomButton(() {}),
                        ),
                      ],
                    ),

                    const SizedBox(height: 5),

                    const Text(
                      "Potato (Aloo)",
                      style: TextStyle(fontSize: 10),
                    ),

                    const Row(
                      children: [
                        Icon(Icons.timer, size: 12, color: Colors.brown),
                        SizedBox(width: 4),
                        Text("16 MINS", style: TextStyle(fontSize: 10))
                      ],
                    ),

                    const Text(
                      "₹ 37",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),

                const SizedBox(width: 15),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Stack(
                      children: [
                        UiHelper.CustomImage(img: "image 46.png"),

                        Padding(
                          padding: const EdgeInsets.only(top: 95, left: 65),
                          child: UiHelper.CustomButton(() {}),
                        ),
                      ],
                    ),

                    const SizedBox(height: 5),

                    const Text(
                      "Hybrid Tomato",
                      style: TextStyle(fontSize: 10),
                    ),

                    const Row(
                      children: [
                        Icon(Icons.timer, size: 12, color: Colors.brown),
                        SizedBox(width: 4),
                        Text("16 MINS", style: TextStyle(fontSize: 10))
                      ],
                    ),

                    const Text(
                      "₹ 37",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}