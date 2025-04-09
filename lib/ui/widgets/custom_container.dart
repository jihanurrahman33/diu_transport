import 'package:flutter/material.dart';
class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key, required this.containerText, required this.icon});
final String containerText;
final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 180,
      decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon,size: 80,color: Colors.white,),
          Text(containerText)
        ],
      ),
    );
  }
}
