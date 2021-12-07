import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class PizzaCategories extends StatefulWidget {
  const PizzaCategories({Key? key}) : super(key: key);

  @override
  _PizzaCategoriesState createState() => _PizzaCategoriesState();
}

class _PizzaCategoriesState extends State<PizzaCategories> {
  String name = "Bienvenido a Trattoria Anvrin";
  String a = "Pizza Americana";
  String b = 'S/. 29.90';
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
        duration: const Duration(milliseconds: 350),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(name),
              ],
            ),
            Container(
              height: 240,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: const Color(0xff050B18),
                              borderRadius: BorderRadius.circular(20)),
                          margin: const EdgeInsets.only(top: 40),
                        ),
                        Align(
                          child: Image.network(
                              "https://www.pngkit.com/png/full/1-19076_pizza-png.png"),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                      child: Container(
                    margin: const EdgeInsets.only(top: 60, bottom: 20),
                    decoration: const BoxDecoration(
                      color: Color(0xffB5C9F5),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      //margin: const EdgeInsets.only(top: 0),
                      children: <Widget>[
                        Text(
                          a,
                        ),
                        Text(b),
                        const SizedBox(
                          //
                          height: 150,
                        )
                      ],
                    ),
                  ))
                ],
              ),
            )
          ],
        ));
  }
}
