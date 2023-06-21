import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import '../model/food_post_repository.dart';
import '../page/item_detail_page.dart';

class DeliveryBody extends StatelessWidget {
  DeliveryBody({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Stack(
        children: [
          Positioned(
            left: 35,
            top: 40,
            child: Container(
              width: 340,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.white,
                  width: 2,
                ),
                color: Colors.white,
              ),
              child: const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      LineIcons.search,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(width: 8),
                  Text(
                    'Search',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.tune,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 35,
            top: 110,
            child: Container(
              width: 82,
              height: 82,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.white,
                  width: 2,
                ),
                color: Colors.white,
              ),
              child: Image.asset(
                'assets/pizza.png',
                fit: BoxFit.contain,
              ),
            ),
          ),
          Positioned(
            left: 122,
            top: 110,
            child: Container(
              width: 82,
              height: 82,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.white,
                  width: 2,
                ),
                color: Colors.white,
              ),
              child: Image.asset(
                'assets/lunchbox.png',
                fit: BoxFit.contain,
              ),
            ),
          ),
          Positioned(
            left: 208,
            top: 110,
            child: Container(
              width: 82,
              height: 82,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.white,
                  width: 2,
                ),
                color: Colors.white,
              ),
              child: Image.asset(
                'assets/burger.png',
                fit: BoxFit.contain,
              ),
            ),
          ),
          Positioned(
            left: 294,
            top: 110,
            child: Container(
              width: 82,
              height: 82,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.white,
                  width: 2,
                ),
                color: Colors.white,
              ),
              child: Image.asset(
                'assets/cake.png',
                fit: BoxFit.contain,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 200.0),
              child: ListView.builder(
                physics: const ScrollPhysics(),
                shrinkWrap: false,
                itemCount: fooditems.length,
                itemBuilder: (BuildContext context, int index) {
                  final heroTag = 'card${fooditems[index].name}$index';
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ItemDetailPage(foodItem: fooditems[index]),
                        ),
                      );
                    },
                    child: Hero(
                      tag: heroTag,
                      child: Container(
                        margin: EdgeInsets.only(left: 35, right: 35, top: index == 0 ? 0 : 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Colors.white,
                            width: 2,
                          ),
                          color: Colors.white,
                        ),
                        child: Row(
                          children: <Widget>[
                            Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: AssetImage(fooditems[index].imageUrl),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(fooditems[index].name),
                                Text(fooditems[index].description),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
