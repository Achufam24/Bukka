import 'package:flutter/material.dart';
import 'package:bukka/pages/RegisterScreen.dart';
import 'package:bukka/pages/cart.dart';
import 'package:bukka/pages/services.dart';
import 'package:bukka/model/model.dart';

class MarketScreen extends StatefulWidget {
  const MarketScreen({Key? key}) : super(key: key);

  @override
  State<MarketScreen> createState() => _MarketScreenState();
}

class _MarketScreenState extends State<MarketScreen> {
  //List<Widget>_tripTiles = [];
  final GlobalKey _listkey = GlobalKey();
  //final GlobalKey<AnimatedListState> _listkey = GlobalKey<AnimatedListState>();

  //void _addTrips() {
  List<ProductList> Products = [
    ProductList(
        product: 'Rice',
        image: 'rice.jpg',
        details:
            'In 2020, rice, paddy production for Nigeria was 8.17 million tonnes. Rice, paddy production of Nigeria increased from 388,000 tonnes in 1971 to 8.17 million tonnes in 2020 growing at an average annual rate of 8.74%.At Bukka we help you get facilitate buying and selling of Rice and other Products.',
        link: '/rice'),
    ProductList(
        product: 'Beans',
        image: 'beans.jpg',
        details:
            'Nigeria is the top region by production of bean in Nigeria. As of 2005, production of bean in Niger was 278.2 1000 metric tons that accounts for 18.50% of Nigeria production of bean. The top 5 regions (others are Borno, Zamfara, Kaduna, and Sokoto account for 55%.At Bukka, we help you reach your customer and seller at once.',
        link: '/beans'),
    ProductList(
        product: 'Cocoa',
        image: 'cocoa.jpg',
        details:
            'The Nigerian cocoa sector is dominated by smallholder farmers numbering at 300,000 – 350,000 with some commercial plantations. The average cultivated area is 1,400,000 hectares. Cocoa is our number one exportable product (not including oil). The local processing industry is growing fast.At Bukka we help you reach your customer at one click.',
        link: '/cocoa'),
    ProductList(
        product: 'Coffee',
        image: 'coffee.jpg',
        details:
            'In 2020, coffee production for Nigeria was 1,887 tonnes. Though Nigeria coffee production fluctuated substantially in recent years, it tended to decrease through 1971 - 2020 period ending at 1,887 tonnes in 2020.At Bukka, we help you reach your customers in one click.',
        link: '/coffee'),
    ProductList(
        product: 'Corn',
        image: 'corn.png',
        details:
            'In 2020, maize production for Nigeria was 10,000 thousand tonnes. Maize production of Nigeria increased from 931 thousand tonnes in 1971 to 10,000 thousand tonnes in 2020 growing at an average annual rate of 7.29%. The description is composed by our digital data assistant.At Bukka we help you reach your customers in one click.',
        link: '/corn'),
    ProductList(
        product: 'Melon',
        image: 'melon.jpg',
        details:
            'Niger is the top region by production of melon in Nigeria. As of 2005, production of melon is 259.1 1000 metric tons that accounts for 48.65%  production of melon. The top 5 regions (others are Imo, Akwa Ibom, Edo,Cross River and Delta) account for 73.39% of it.At Bukka we help you reach your customers in one click.',
        link: '/melon'),
    ProductList(
        product: 'Chicken',
        image: 'chicken.jpg',
        details:
            'Poultry production in Nigeria amounts up to 300 Mt of meat and 650 Mt eggs per year. About 85 M Nigerians are involved in poultry production. At Bukka, we help you meet your right customers.',
        link: '/chicken'),
    ProductList(
        product: 'Yams',
        image: 'yams.jpeg',
        details:
            'Nigeria is the largest yam producer in the world, contributing to two-thirds of global yam production each year; and, according to the GHS-Panel, 46 percent of households in the post-planting season, and 53 percent of households in the post-harvest season,At Bukka we help you meet the right customers.',
        link: '/yam'),
    ProductList(
        product: 'Fruits',
        image: 'apple.jpg',
        details:
            'Major fruits produced in Nigeria include mango, pineapple, plantain/banana, citrus, guava, pawpaw, while vegetables include onion, tomato, okra, pepper, amaranthus, carrot, melon, Corchorus olitorus (ewedu), Hibiscus sabdariffa (sobo), Adansonia digtata (baobab leaves.At Bukka we help you meet the right customers.',
        link: '/fruit'),
    ProductList(
        product: 'Flowers',
        image: 'flower.jpg',
        details: 'At Bukka, we assist you meet the perfect customers.',
        link: '/flower'),
    ProductList(
        product: 'Livestock',
        image: 'goat.jpg',
        details:
            ' the number of livestock animals produced annually in Nigeria was as follows – 180 million poultry birds; 76 million goats, 43.4 million sheep, 18.4 million cattle, 7.5 million pigs, 1.4 million Equids (horses, donkeys, etc.). At Bukka, we assist you meet the Perfect customers!',
        link: '/livestock'),
    ProductList(
        product: 'Pets',
        image: 'pets.jpg',
        details: 'At Bukka you can sell and buy pets.',
        link: '/pets'),
    ProductList(
        product: 'Flour',
        image: 'flour.jpeg',
        details:
            'At Bukka we make it possible to Sell and buy flour.In small quantity or in tonnes in line with NAFDAC guidelines.',
        link: '/flour'),
    ProductList(
        product: 'Oil',
        image: 'oil.jpeg',
        details:
            'With a maximum crude oil production capacity of 2.5 million barrels per day, Nigeria ranks has Africa largest producer of oil and the sixth largest oil producing country in the world. At Bukka we connect you to the perfect Oil seller and buyer.',
        link: '/oil'),
    ProductList(
        product: 'Other Food stuffs',
        image: 'cart.png',
        details: 'Bukka also facilitates under Agro crop. Please check them.',
        link: '/other'),
  ];
  //}

  //Tween<Offset> _offset = Tween(begin: Offset(1,0), end: Offset(0,0));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          'MarketPlace',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.green[900],
          ),
        ),
        elevation: 2,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: ListView.builder(
          key: _listkey,
          itemCount: Products.length,
          itemBuilder: (context, index) {
            return Container(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 1.0, horizontal: 7.0),
                child: Card(
                    child: ListTile(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ProductDetail(
                              ProductList: Products[index],
                            )));
                    print(Products[index].product);
                  },
                  title: Text(Products[index].product),
                  leading: CircleAvatar(
                    backgroundImage:
                        AssetImage('assets/${Products[index].image}'),
                  ),
                )),
              ),
            );
          }),
      bottomNavigationBar: BottomAppBar(
        elevation: 15,
        child: Container(
          height: 50.0, //set your height here
          width: double.maxFinite, //set your width here
          decoration: BoxDecoration(
            color: Colors.grey[200],
            // borderRadius: BorderRadius.vertical(top: Radius.circular(20.0))
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.home),
                color: Colors.green[700],
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
              ),
              IconButton(
                icon: Icon(Icons.shopping_cart),
                color: Colors.green[700],
                onPressed: () {
                  Navigator.pushNamed(context, '/market');
                },
              ),
              IconButton(
                icon: Icon(Icons.chat),
                color: Colors.green[700],
                onPressed: () {
                  Navigator.pushNamed(context, '/chat');
                },
              ),
              IconButton(
                icon: Icon(Icons.person),
                color: Colors.green[700],
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
