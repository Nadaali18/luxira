import 'package:flutter/material.dart';
import 'package:session3/widget/custom_text.dart';
import 'package:session3/widget/product_container.dart';

class CustomSection extends StatelessWidget {
  const CustomSection({super.key,required this.title});
final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       Padding(
         padding: const EdgeInsets.all(8.0),
         child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(title, fontSize: 18, fontWeight: FontWeight.bold),
              CustomText('See All', color: Colors.blue),
            ],
          ),
       ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(child: CustomProductCard(name: 'Shirt', price: '50', image: 'assets/images/clothes.png')),
            Expanded(child: CustomProductCard(name: 'Shirt', price: '50', image: 'assets/images/clothes.png'))
          ],
        ),
      ],
    );
  }
}