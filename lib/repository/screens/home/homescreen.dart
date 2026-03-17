import 'package:flash_mart/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController searchController = TextEditingController();

  var data = [
    {"img": "image 50.png", "text": "Lights, Diyas \n & Candles"},
    {"img": "image 51.png", "text": "Diwali \n Gifts"},
    {"img": "image 52.png", "text": "Appliances  \n & Gadgets"},
    {"img": "image 53.png", "text": "Home \n & Living"}
  ];

  var categroy = [
    {"img": "image 54.png", "text": "Golden Glass\n Wooden Lid Candle (Oudh)"},
    {"img": "image 57.png", "text": "Royal Gulab Jamun\n By Bikano"},
    {"img": "image 63.png", "text": "Golden Glass\n Wooden Lid Candle (Oudh)"},
  ];

  var grocerykitchen = [
    {"img": "image 41.png", "text": "Vegetables & \nFruits"},
    {"img": "image 42.png", "text": "Atta, Dal & \nRice"},
    {"img": "image 43.png", "text": "Oil, Ghee & \nMasala"},
    {"img": "image 46 (3).png", "text": "Dairy, Bread & \nMilk"},
    {"img": "image 46 (4).png", "text": "Biscuits & \nBakery"}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [

            const SizedBox(height: 40),

            /// TOP HEADER
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
                              color: Colors.white,
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
                              color: Colors.white,
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
                              color: Colors.white,
                              fontweight: FontWeight.bold,
                              fontsize: 14),

                          UiHelper.CustomText(
                              text: "- Shivani Mahajan, Hamirpur(H.P)",
                              color: Colors.white,
                              fontweight: FontWeight.bold,
                              fontsize: 14),
                        ],
                      ),
                    ],
                  ),
                ),

                const Positioned(
                  right: 20,
                  top: 40,
                  child: CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.black,
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ),

                Positioned(
                    bottom: 30,
                    left: 20,
                    right: 20,
                    child: UiHelper.CustomTextField(
                        controller: searchController))
              ],
            ),

            Container(
              height: 1,
              width: double.infinity,
              color: Colors.white,
            ),

            /// DIWALI SALE SECTION
            Container(
              height: 196,
              width: double.infinity,
              color: Colors.green[800],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      UiHelper.CustomImage(img: "image 60.png"),
                      UiHelper.CustomImage(img: "image 56.png"),
                      UiHelper.CustomText(
                          text: "Mega Diwali Sale",
                          color: Colors.white,
                          fontweight: FontWeight.bold,
                          fontsize: 20,
                          fontfamily: "bold"),
                      UiHelper.CustomImage(img: "image 56.png"),
                      UiHelper.CustomImage(img: "image 60.png")
                    ],
                  ),

                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: data.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Container(
                              height: 108,
                              width: 86,
                              decoration: BoxDecoration(
                                  color: const Color(0XFFEAD3D3),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Column(
                                children: [
                                  UiHelper.CustomText(
                                      text: data[index]["text"].toString(),
                                      color: Colors.black,
                                      fontweight: FontWeight.bold,
                                      fontsize: 10),

                                  UiHelper.CustomImage(
                                      img: data[index]["img"].toString())
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),

            /// PRODUCTS SECTION
            SizedBox(
              height: 240,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categroy.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            clipBehavior: Clip.antiAlias,
                            height: 108,
                            width: 93,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: UiHelper.CustomImage(
                                img: categroy[index]["img"].toString()),
                          ),
                        ),

                        UiHelper.CustomText(
                            text: categroy[index]["text"].toString(),
                            color: Colors.black,
                            fontweight: FontWeight.bold,
                            fontsize: 8),

                        const SizedBox(height: 5),

                        Row(
                          children: [
                            UiHelper.CustomImage(img: "timer 4.png"),
                            UiHelper.CustomText(
                                text: "16 MINS",
                                color: const Color(0XFF9C9C9C),
                                fontweight: FontWeight.normal,
                                fontsize: 10)
                          ],
                        ),

                        const SizedBox(height: 5),

                        Row(
                          children: [
                            UiHelper.CustomImage(img: "image 62.png"),
                            UiHelper.CustomText(
                                text: "79",
                                color: Colors.black,
                                fontweight: FontWeight.bold,
                                fontsize: 15)
                          ],
                        )
                      ],
                    );
                  },
                ),
              ),
            ),

            /// GROCERY TITLE
            Row(
              children: [
                const SizedBox(width: 20),
                UiHelper.CustomText(
                    text: "Grocery & Kitchen",
                    color: Colors.black,
                    fontweight: FontWeight.bold,
                    fontsize: 14,
                    fontfamily: "bold")
              ],
            ),

            const SizedBox(height: 10),

            /// GROCERY LIST
            SizedBox(
              height: 120,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: grocerykitchen.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [

                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            height: 78,
                            width: 71,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0XFFD9EBEB)),
                            child: UiHelper.CustomImage(
                                img: grocerykitchen[index]["img"].toString()),
                          ),
                        ),

                        UiHelper.CustomText(
                            text: grocerykitchen[index]["text"].toString(),
                            color: Colors.black,
                            fontweight: FontWeight.normal,
                            fontsize: 10)
                      ],
                    );
                  },
                ),
              ),
            ),

            const SizedBox(height: 20)
          ],
        ),
      ),
    );
  }
}