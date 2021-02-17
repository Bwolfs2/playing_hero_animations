import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:playing_hero_animations/app/modules/detail/widgets/detail_header/detail_header_widget.dart';
import 'detail_controller.dart';

class DetailPage extends StatefulWidget {
  final String image;
  final double price;
  final String name;
  final String description;

  const DetailPage({
    Key key,
    @required this.image,
    @required this.price,
    @required this.name,
    @required this.description,
  }) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends ModularState<DetailPage, DetailController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE6DFDF),
      body: Padding(
        padding: const EdgeInsets.only(top: 60),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: DetailHeaderWidget(),
            ),
            Spacer(),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                color: Colors.white,
              ),
              height: MediaQuery.of(context).size.height * .8,
              child: Column(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(30),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Hero(
                            tag: 'hero-tag-container-${widget.name}',
                            child: Material(
                              type: MaterialType.transparency,
                              child: Text(
                                widget.name,
                                textDirection: TextDirection.ltr,
                                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Hero(
                            tag: 'hero-tag-container-${widget.description}',
                            child: Material(
                              type: MaterialType.transparency,
                              child: Text(
                                widget.description,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Hero(
                              tag: 'hero-tag-container-${widget.image}',
                              child: Padding(
                                padding: const EdgeInsets.only(top: 40),
                                child: Image.network(widget.image),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(color: Colors.grey[300], borderRadius: BorderRadius.circular(20)),
                                width: 80,
                                height: 30,
                                child: Text('White'),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(color: Colors.black87, borderRadius: BorderRadius.circular(20)),
                                width: 80,
                                height: 30,
                                child: Text(
                                  'Black',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Hero(
                    tag: 'hero-tag-menu',
                    child: Material(
                      type: MaterialType.transparency,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40),
                          ),
                          color: Colors.black,
                        ),
                        height: 230,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 30),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        'Now | 20% desc',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        '\$ ${widget.price.toStringAsFixed(2)}',
                                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        'Before',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        '\$ ${widget.price.toStringAsFixed(2)}',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.normal,
                                          fontSize: 18,
                                          decoration: TextDecoration.lineThrough,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Material(
                                    borderRadius: BorderRadius.circular(100),
                                    child: InkWell(
                                      borderRadius: BorderRadius.circular(100),
                                      onTap: () {},
                                      child: Container(
                                        padding: const EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                        ),
                                        child: Icon(
                                          Icons.favorite,
                                          color: Colors.red[400],
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                margin: const EdgeInsets.all(10),
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(color: Colors.red[300], borderRadius: BorderRadius.circular(10)),
                                height: 60,
                                width: MediaQuery.of(context).size.width * .8,
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Center(
                                        child: Center(
                                          child: Text(
                                            'Buy Now',
                                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 20),
                                      child: Icon(
                                        Icons.arrow_forward,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
