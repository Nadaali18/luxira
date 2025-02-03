import 'package:flutter/material.dart';
import 'package:session3/widget/category_container.dart';
import 'package:session3/widget/constant.dart';
import 'package:session3/widget/custom_container.dart';
import 'package:session3/widget/custom_section.dart';
import 'package:session3/widget/custom_text.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Image(
          height: 100,
          width: 100,
          fit: BoxFit.cover,
          image: NetworkImage(
            'https://s3-alpha-sig.figma.com/img/f903/f48b/09a0003f0b4f77acd700991485ba2125?Expires=1739750400&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=hNbzi0q7SQO8Nd4tDhiSo-9AkvA6KcMvf5yN7TYvMrVuJDpaLpGDl-p0O4MvrnLiAWP9WRin-muTn6LD5H7-ywnlzs1kdMa-OhMrV0yLRfq11BpwYq4RFdxjhBLZ~B4JPo8W5qkes5kkakT44mABkAPUDAn6LQS5RunS~15q78vveZQrGxADTc1-oCNSIALEvrYCejqxcY8nLJXhBdnSZFW40AIkR0cIg67U5clcVbIQMG2VMJfBDvq79JxTgqDM9Sw89acaRciC7LbXbwBbi-wcWHPqHLNzzbS-ymETHYFAe12SSwOTr~IrWL6-WY89etIW5prJ3yaYDTZvYj~1dg__',
          ),
        ),
        actions: [
          Icon(Icons.notifications_none, color: primaryColor),
          SizedBox(width: 10),
          Icon(Icons.shopping_cart_outlined, color: primaryColor),
          SizedBox(width: 10),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search here',
                        prefixIcon: Icon(
                          Icons.search,
                          color: primaryColor,
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: primaryColor),
                            borderRadius: BorderRadius.circular(12)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: primaryColor),
                            borderRadius: BorderRadius.circular(12)),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.settings,
                      color: primaryColor,
                    ),
                    iconSize: 30,
                    style: ButtonStyle(
                      shape: WidgetStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      )),
                      side: WidgetStateProperty.all(BorderSide(
                        color: primaryColor,
                      )),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 3,horizontal: 8),
              child: CustomContainer(),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomText(
                'Categories',fontWeight: FontWeight.bold,fontSize: 20,),
            ),
            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CategoryContainer(),
                  CategoryContainer(),
                  CategoryContainer(),
                ],
              ),
            ),
            CustomSection(title: 'Offers 🔥'),
            CustomSection(title: 'Recommended'),
            CustomSection(title: 'Our Product'),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: primaryColor,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border), label: 'Wishlist'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: 'Notifications'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
