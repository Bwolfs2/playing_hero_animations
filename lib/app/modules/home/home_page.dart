import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'home_controller.dart';
import 'widgets/buttom_menu/buttom_menu_widget.dart';
import 'widgets/card_product/card_product_widget.dart';
import 'widgets/home_header/home_header_widget.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE6DFDF),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Hero(
        tag: 'hero-tag-menu',
        child: Material(
          type: MaterialType.transparency,
          child: Container(
            decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(20)),
            height: 60,
            margin: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: const EdgeInsets.all(5),
                  child: Icon(Icons.home),
                  decoration: BoxDecoration(color: Colors.red[300], shape: BoxShape.circle),
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  child: Icon(
                    Icons.wallet_travel_rounded,
                    color: Colors.grey[300],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  child: Icon(
                    Icons.favorite_border,
                    color: Colors.grey[300],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  child: Icon(
                    Icons.person,
                    color: Colors.grey[300],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 60, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HomeHeaderWidget(),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30),
                    child: Text(
                      'Discover your \nfavorite products?',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    width: double.infinity,
                    height: 60,
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Search your product...",
                                hintStyle: TextStyle(
                                  color: Colors.grey[400],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.black,
                          ),
                          padding: const EdgeInsets.all(5),
                          margin: const EdgeInsets.symmetric(horizontal: 16),
                          child: Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 16),
                          child: ButtomMenu(
                            text: 'New',
                            backgroundColor: Colors.white,
                            textColor: Colors.black,
                          ),
                        ),
                      ),
                      Expanded(
                        child: ButtomMenu(
                          text: 'Featured',
                          backgroundColor: Colors.black,
                          textColor: Colors.white,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: ButtomMenu(
                            text: 'Trendy',
                            backgroundColor: Colors.white,
                            textColor: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * .37,
              width: double.infinity,
              child: ListView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                children: [
                  CardProduct(
                    image: 'https://images-na.ssl-images-amazon.com/images/I/514KMZ76PVL._AC_SL1000_.jpg',
                    description: 'Cannon EOS  3 Mod 1080p 2015',
                    name: 'Hero Cannon EOS',
                    price: 2000,
                  ),
                  CardProduct(
                    image: 'https://images-na.ssl-images-amazon.com/images/I/712DNWFqmyL._AC_SX569_.jpg',
                    description: 'Cannon EOS 2  3 Mod 2k 2018',
                    name: 'Cannon EOS 2',
                    price: 2500,
                  ),
                  CardProduct(
                    image: 'https://d24opie0r44wsr.cloudfront.net/Custom/Content/Products/98/99/989944_4158-camera-sony-alpha-a7-iii-mirrorless-somente-corpo_m1_636733841073948749.jpg',
                    description: 'Cannon EOS 3 Mod 4k 2021 only the best Cam ever',
                    name: 'Best Buy Cannon EOS 3',
                    price: 4000,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
