import 'package:flash_mart/repository/screens/bottomnav/bottomnavscreen.dart';
import 'package:flash_mart/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            const SizedBox(height: 40),

            UiHelper.CustomImage(img: "FlashMart Onboarding Screen.png"),

            const SizedBox(height: 30),

            Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                color: Colors.green[800],
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: "Flash",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: "Mart",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            UiHelper.CustomText(
              text: "Fast Delivery at Your Doorstep",
              color: Colors.black,
              fontweight: FontWeight.bold,
              fontsize: 20,
              fontfamily: "bold",
            ),

            const SizedBox(height: 20),

            Center(
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Container(
                  height: 200,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [

                      const SizedBox(height: 20),

                      UiHelper.CustomText(
                        text: "Shivani Mahajan",
                        color: Colors.black,
                        fontweight: FontWeight.w500,
                        fontsize: 14,
                      ),

                      const SizedBox(height: 5),

                      UiHelper.CustomText(
                        text: "78277XXXXX",
                        color: const Color(0XFF9C9C9C),
                        fontweight: FontWeight.bold,
                        fontsize: 14,
                        fontfamily: "bold",
                      ),

                      const SizedBox(height: 20),

                      SizedBox(
                        height: 48,
                        width: 295,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                    const BottomNavScreen()));
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0XFFE23744),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [

                              UiHelper.CustomText(
                                text: "Login with",
                                color: Colors.white,
                                fontweight: FontWeight.bold,
                                fontsize: 14,
                                fontfamily: "bold",
                              ),

                              const SizedBox(width: 5),

                              UiHelper.CustomImage(img: "image2.png"),
                            ],
                          ),
                        ),
                      ),

                      const SizedBox(height: 8),

                      UiHelper.CustomText(
                        text:
                        "Access your saved addresses from Zomato automatically!",
                        color: const Color(0XFF9C9C9C),
                        fontweight: FontWeight.normal,
                        fontsize: 10,
                      ),

                      const SizedBox(height: 10),

                      UiHelper.CustomText(
                        text: "or login with phone number",
                        color: const Color(0XFF269237),
                        fontweight: FontWeight.normal,
                        fontsize: 14,
                      ),

                    ],
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

          ],
        ),
      ),
    );
  }
}