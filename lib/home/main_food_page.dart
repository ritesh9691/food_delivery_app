import 'package:flutter/material.dart';
import 'package:food_delivery/home/food_page_body.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/widgets/BigText.dart';

import '../widgets/smallText.dart';

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
              margin: const EdgeInsets.only(top:  45 , bottom: 20),
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Column(
                    children: [
                      BigText(text: "India",color: AppColors.mainColor,),

                      Row(
                        children: [
                          SmallText(text: "Gurugram",color: Colors.black54,),
                          const Icon(Icons.arrow_drop_down)
                        ],
                      ),
                    ],
                  ),

                  Center(
                    child: Container(
                      height: 40,
                      width: 40,
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
          FoodPageBody()
        ],
      )
    );
  }
}
