// ignore_for_file: non_constant_identifier_names, slash_for_doc_comments

import 'package:flutter/material.dart';
import '../constants/styling_constants.dart';

/**
 * A widget that represents an item in a collection of rocks.
 *
 * The [CollectionItem] displays the name and an image of a rock,
 * along with a brief description. It is designed to be used
 * in a grid or list format, allowing users to see details of
 * different rocks in their collection.
 *
 * The widget accepts the following parameters:
 *
 * - [name]: A string that represents the name of the rock.
 * - [rockImg]: A string that represents the path to the image of the rock.
 *
 * This widget is stateless and will build its UI based on the
 * provided [name] and [rockImg] values.
 */
class CollectionItem extends StatelessWidget {
  final String name;
  final String rockImg;

  const CollectionItem({
    super.key,
    required this.name,
    required this.rockImg,
  });
  
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final WIDGET_WIDTH = screenWidth * 0.85;
    final WIDGET_HEIGHT = screenWidth / 2.5;
    
    return Container(
      width: WIDGET_WIDTH,
      height: WIDGET_HEIGHT,
      margin: const EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        color: DEFAULT_WIDGET_BG,
        borderRadius: BorderRadius.circular(16)
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(16)),
              child: Image.asset(
                rockImg,
                fit: BoxFit.cover
              )
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    name,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 10, right: 10),
                  child: Text(
                    'This is a fantastic rock, you should really come back and look at this rock!',
                    style: TextStyle(
                    ),
                    maxLines: 5,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/**
 * Generates a List of [CollectionItem] widgets.
 * 
 * Eventually, both the name and image will be
 * dynamically added from a database.
 * 
 * @param items The number of items to generate for testing
 *              and populating the collection section.
 * 
 * @return A list of [CollectionItem] widgets.
 */
List<Widget> generateCollection(int items) {
  var rockCollection = <Widget>[];
  for(int i = 0; i < items; i++) {
    rockCollection.add(
      const CollectionItem(name: 'Test Rock', rockImg: 'assets/images/test_img1.jpg')
    );
  }
  return rockCollection;
}