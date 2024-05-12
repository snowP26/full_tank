// References
//
// https://www.youtube.com/watch?v=ucwBcTgxyME
// https://www.youtube.com/watch?v=P7OLRwhZle4
// https://www.youtube.com/watch?v=eegl7of4g-o
// https://www.youtube.com/watch?v=Nx3iQwh1Wes
// https://www.youtube.com/watch?v=Hxh6nNHSUjo
// https://stackoverflow.com/questions/50081213/how-do-i-use-hexadecimal-color-strings-in-flutter
// https://www.youtube.com/watch?v=LbM-mdGXtr8
//https://www.youtube.com/watch?v=-FSOYxIGr_8

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: ListView(
        children: [
          //greetings and notification
          Container(
            padding: EdgeInsets.all(30.0),
            decoration: BoxDecoration(
              color:  Color.fromRGBO(0, 73, 82, 1),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text (
                      'Good day, Almond!',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      'Where are we off to today?',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),

                Icon(
                  Icons.notifications,
                  size: 30,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),

          // search bar
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Container(
                    width: 250,
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color:  Color.fromRGBO(0, 73, 82, 1), width: 4),
                    ),
                    child: Row(
                      
                      children: [
                        Icon(
                          Icons.search,
                          size: 30,
                          color:  Color.fromRGBO(0, 73, 82, 1),
                        ),
                        Text(
                          'Where from?',
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                            color: Colors.grey,
                          ),
                        ),
                      ] ,
                    ),
                  ),
                
                  Container(
                    width: 250,
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color:  Color.fromRGBO(0, 73, 82, 1), width: 4),
                    ),
                    child: Row(
                      
                      children: [
                        Icon(
                          Icons.search,
                          size: 30,
                          color:  Color.fromRGBO(0, 73, 82, 1),
                        ),
                        Text(
                          'Where to?',
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 10,
              ),
              Image(
                image: AssetImage('lib/assets/image1.png'),
                width: 115,
                height: 115,
              ),
            ],
          ),

          const Divider(
            color: Color.fromRGBO(0, 73, 82, 1),
            thickness: 5,
          ),

          // map
          Ink.image(
            image: AssetImage('lib/assets/image2.png'),
            height: 350,
            fit: BoxFit.fill,

            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  verticalDirection: VerticalDirection.up,
                  children: [
                    Container(
                      margin: EdgeInsets.all(16),
                      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color:  Color.fromRGBO(0, 73, 82, 1), width: 4),
                      ),
                      child: Row(
                        children: [
                          Text(
                            'Select your vehicle',
                            style: TextStyle(
                              color: Colors.grey,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          Icon(
                            Icons.arrow_drop_down_circle_outlined,
                            size: 30,
                            color:  Color.fromRGBO(0, 73, 82, 1),
                          ),
                        ] ,
                      ),
                    ),
                    SizedBox(
                      height: 240,
                    ),
                    Icon(
                      Icons.settings,
                      size: 30,
                      color: Colors.black,
                    ),
                ],
                ),
              ],
            ),
          ),

          const Divider(
            color: Color.fromRGBO(0, 73, 82, 1),
            thickness: 5,
          ),

          // gas prices
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.symmetric(horizontal: 3, vertical: 3),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text (
                    'Current Gas Prices:',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color:  Color.fromRGBO(0, 73, 82, 1),
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    '  •   Gasoline - ₱ 70.80',
                    style: TextStyle(color:  Color.fromRGBO(0, 73, 82, 1),),
                  ),
                  Text(
                    '  •   Diesel - ₱ 64.65',
                    style: TextStyle(color:  Color.fromRGBO(0, 73, 82, 1),),
                  ),
                  Text(
                    '  •   Premium - ₱ 72.92',
                    style: TextStyle(color:  Color.fromRGBO(0, 73, 82, 1),),
                  ),
                  ],
                ),

                Image(
                  image: AssetImage('lib/assets/image3.png'),
                  width: 115,
                  height: 115,
                ),
              ],
            ),
          ),
          
          // bottom navigation bar
          Container(
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color:  Color.fromRGBO(0, 73, 82, 1),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.home,
                      size: 50,
                      color: Colors.white,
                    ),
                    Text (
                      'Home',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.history,
                      size: 40,
                      color: Colors.white,
                    ),
                    Text (
                      'Trip History',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.two_wheeler,
                      size: 40,
                      color: Colors.white,
                    ),
                    Text (
                      'Vehicles',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.account_circle_outlined,
                      size: 40,
                      color: Colors.white,
                    ),
                    Text (
                      'Profiles',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                
              ],
            ),
          ),

        ],
      

      ), 
    );
  }
}