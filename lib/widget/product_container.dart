import 'package:flutter/material.dart';
import 'package:session3/widget/constant.dart';
import 'package:session3/widget/custom_text.dart';

class CustomProductCard extends StatelessWidget {
  const CustomProductCard({super.key, required this.name, required this.price, required this.image});
  final String name;
  final String price;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              offset: Offset(0, 4),
              blurRadius: 10,
              spreadRadius: 2,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                image,
                width: double.infinity,  
                height: 100,  
                fit: BoxFit.fill, 
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 8, top: 8),
              child: CustomText(
                name,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, top: 2, bottom: 8),
              child: CustomText(
                price,
                fontSize: 15,
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: primaryColor,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)
                    ),
                ),
                child: const CustomText('Add To Cart'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
