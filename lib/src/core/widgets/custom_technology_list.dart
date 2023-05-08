import 'package:flutter/material.dart';

class CustomTechnologyList extends StatelessWidget {

  const CustomTechnologyList({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return SizedBox(
                  height: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        width: 100,
                        color: Colors.red,
                      ),
                      Container(
                        width: 100,
                        color: Colors.blue,
                      ),
                      Container(
                        width: 100,
                        color: Colors.green,
                      ),
                      Container(
                        width: 100,
                        color: Colors.yellow,
                      ),
                      Container(
                        width: 100,
                        color: Colors.orange,
                      ),
                      Container(
                        width: 100,
                        color: Colors.pink,
                      ),
                      Container(
                        width: 100,
                        color: Colors.purple,
                      ),
                    ],
                  ),
                );
  }
}
