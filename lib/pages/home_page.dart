import 'package:chavez/util/my_button.dart';
import 'package:chavez/util/my_card.dart';
import 'package:chavez/util/my_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue,
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Color(0xff0066ff),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.smartphone_outlined,
                  size: 25,
                  color: Color(0xffb878e8),
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.headphones,
                  size: 25,
                  color: Color(0xffb878e8),
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.sd_card,
                  size: 25,
                  color: Color(0xffb878e8),
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.person,
                  size: 25,
                  color: Color(0xffb878e8),
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.monetization_on_outlined,
                  size: 35,
                  color: Color(0xff2b0549),
                )),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(children: [
          //appbar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Text("Administrador", style: TextStyle(fontSize: 25)),
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      color: Colors.grey[400], shape: BoxShape.circle),
                  child: Icon(Icons.add),
                ),
              ],
            ),
          ),
          SizedBox(height: 25),

          Container(
            height: 200,
            child: PageView(
              scrollDirection: Axis.horizontal,
              controller: _controller,
              children: [
                MyCard(
                  balance: "Apple",
                  cardNumber: 12345678,
                  expiryMonth: 10,
                  expiryYear: 25,
                  color: Colors.blue[100],
                ),
                MyCard(
                  balance: "Samsung",
                  cardNumber: 987654321,
                  expiryMonth: 09,
                  expiryYear: 24,
                  color: Colors.deepPurple[400],
                ),
                MyCard(
                  balance: "Motorola",
                  cardNumber: 0987652132,
                  expiryMonth: 01,
                  expiryYear: 26,
                  color: Colors.red[200],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SmoothPageIndicator(
            controller: _controller,
            count: 3,
            effect: ExpandingDotsEffect(activeDotColor: Colors.grey.shade700),
          ),

          SizedBox(height: 40),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyButton(
                    iconImagePath: 'lib/icons/apple.png', buttonText: "Apple"),
                MyButton(
                    iconImagePath: 'lib/icons/samsung.png',
                    buttonText: "Samsung"),
                MyButton(
                    iconImagePath: 'lib/icons/motorola.png',
                    buttonText: "Motorola")
              ],
            ),
          ),

          SizedBox(
            height: 40,
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                MylistTile(
                    iconImagePath: 'lib/icons/estadistica.png',
                    tileTile: "Estadistica",
                    tileSubTitle: "Ganancias y perdidas"),
                MylistTile(
                    iconImagePath: 'lib/icons/accytel.png',
                    tileTile: "Productos",
                    tileSubTitle: "Productos que tenemos")
              ],
            ),
          )
        ]),
      ),
    );
  }
}
