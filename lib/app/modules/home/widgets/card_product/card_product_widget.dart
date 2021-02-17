import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CardProduct extends StatelessWidget {
  final String image;
  final double price;
  final String name;
  final String description;

  const CardProduct({
    Key key,
    @required this.image,
    @required this.price,
    @required this.name,
    @required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: PhysicalModel(
        color: Colors.transparent,
        elevation: 4,
        borderRadius: BorderRadius.circular(20),
        child: Material(
          borderRadius: BorderRadius.circular(20),
          child: InkWell(
            onTap: () {
              Modular.to.pushNamed('/details', arguments: {
                'image': image,
                'price': price,
                'name': name,
                'description': description
              });
            },
            borderRadius: BorderRadius.circular(20),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                // color: Colors.white,
              ),
              width: MediaQuery.of(context).size.width * .45,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Hero(
                        tag: 'hero-tag-container-$image',
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          child: Image.network(image, fit: BoxFit.fitWidth),
                        ),
                      ),
                    ),
                    Text(
                      '\$ ${price.toStringAsFixed(2)}',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 13,
                      ),
                    ),
                    Hero(
                      tag: 'hero-tag-container-$name',
                      child: Material(
                        type: MaterialType.transparency,
                        child: Text(
                          "$name",
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 18,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                    Hero(
                      tag: 'hero-tag-container-$description',
                      child: Material(
                        type: MaterialType.transparency,
                        child: Text(
                          "$description",
                          maxLines: 2,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
