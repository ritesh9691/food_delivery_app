import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({super.key});

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Container(
              margin: EdgeInsets.only(top:  45 , bottom: 20),
              padding: EdgeInsets.only(left: 20,right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Column(
                    children: [
                      Text("country"),

                      Text("city"),
                    ],
                  ),

                  Center(
                    child: Container(
                      height: 45,
                      width: 45,
                      child: Icon(Icons.search,color: Colors.white,),
                      decoration: BoxDecoration(
                        color: AppColors.mainColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      )
    );
  }
}
