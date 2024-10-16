import 'package:flutter/material.dart';
import 'collection_item.dart';

  
class Collection extends StatelessWidget {
  const Collection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 25, left: 20, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Your Collection',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                  ),
                  textAlign: TextAlign.start,
                ),
                TextButton(
                  onPressed: buttonPressTest,
                  child: Text(
                    'See all',
                    style: TextStyle(
                      color: Color.fromARGB(255, 131, 131, 131),
                    )
                    ),
                )
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 20),
              child: Row (
                children: [
                  ...generateCollection(4)
                ]
              ),
            )
              
          )
        ],
        )
    );
  }
}

void buttonPressTest() {
  print("Button was pressed!");
}