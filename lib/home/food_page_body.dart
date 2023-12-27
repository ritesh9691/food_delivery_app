import 'package:flutter/material.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({super.key});

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 320,
     // color: Colors.red,

      child: PageView.builder(
        controller: pageController,
          itemCount: 5,
          itemBuilder: (context,position){
        return _buildPageItem(position);
      }),
    );
  }

  Widget _buildPageItem(int index){
    return Stack(
      children: [
        Container(
          height: 220,
          margin: EdgeInsets.only(left: 5,right: 5),

          decoration: BoxDecoration(
              color: index.isEven ? Color(0xFF69c5df) : Color(0xFF9294cc),
              borderRadius: BorderRadius.circular(30)
          ),


        ),
       Align(
         alignment: Alignment.bottomCenter,
         child:  Container(
           height: 120,
           margin: EdgeInsets.only(left: 40,right: 40,bottom: 40),

           decoration: BoxDecoration(
               color: Colors.blueGrey,
               borderRadius: BorderRadius.circular(30)
           ),


         ),
       )
      ],
    );
  }
}


