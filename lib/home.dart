import 'package:aplikasi_kedua/profile.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //header
              Container(
                margin: EdgeInsets.fromLTRB(20, 40, 20, 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Home",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        )),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.purple[800],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: IconButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProfileUi()));
                        },
                        icon: Icon(Icons.person_outlined, color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),

              //search
              Container(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextFormField(
                  textAlignVertical: TextAlignVertical.center,
                  controller: searchController,
                  decoration: InputDecoration(
                    hintText: "Search...",
                    prefixIcon: Icon(Icons.search),
                    border: InputBorder.none,
                  ),
                ),
              ),

              //category
              Center(
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  child: Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: [
                      CategoryItem(Category: 'Food', bgColor: Colors.green),
                      CategoryItem(Category: 'Food', bgColor: Colors.purple),
                      CategoryItem(Category: 'Food', bgColor: Colors.orange),
                      CategoryItem(
                        Category: 'Food',
                      ),
                    ],
                  ),
                ),
              ),
              //listnews
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Text(
                  "Berita Terkini",
                  style:
                      TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),

              Container(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 12,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: (index == 0) ? EdgeInsets.only(right: 10, left: 15,) : EdgeInsets.only(right: 10),
                      width: 200,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              "https://media-cdn.tripadvisor.com/media/photo-s/17/44/2f/2c/2611-meters-high-mountain.jpg",
                              height: 130,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),

                    );
                  },

                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  final String Category;
  final Color bgColor;

  const CategoryItem(
      {Key? key, required this.Category, this.bgColor = Colors.blue})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 150,
        height: 80,
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Stack(
          children: [
            Positioned(
                bottom: 10,
                right: 10,
                child: Text(Category,
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold))),
          ],
        ));
  }
}
