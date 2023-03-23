import 'package:flutter/material.dart';

import 'package:tour/constants/images_constants.dart';
import 'package:tour/models/popular_place_model.dart';

import 'loginpage.dart';

class Homescreen extends StatefulWidget {
  Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int currentindex = 0;

  List<String> namesOfStates = [
    'ALL',
    'Jharkhand',
    'WestBengal',
    'Punjab',
    'Rajasthan',
    'Jammu & Kashmir',
    'Odisha',
    'Delhi',
  ];

  @override
  Widget build(BuildContext context) {
    print("rebuild");
    return Scaffold(
      // bottomNavigationBar:BottomNavigationBar(items: [BottomNavigationBarItem(icon:Icon(Icons.abc_outlined))]),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
              backgroundColor: Colors.green),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Search",
              backgroundColor: Colors.yellow),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
            backgroundColor: Colors.blue,
          ),
        ],
      ),

      //   bottomNavigationBar: Container(
      //   height: 20,
      //   width: MediaQuery.of(context).size.height,
      //   color: Colors.cyan,
      // ),
      //   bottomNavigationBar: BottomNavigationBar(items: [BottomNavigationBarItem(icon: Icon(Icons.image))]),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: CircleAvatar(
            backgroundImage: AssetImage(authBg1),
          ),
        ),
        leadingWidth: 70,
        title: Row(
          children: const [
            Text(
              'Hi,',
              style: TextStyle(color: Colors.red),
            ),
            Text(
              'Ankit',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.menu, color: Colors.black),
            highlightColor: Colors.grey,
            onPressed: () {
              // Navigator.push(context, MaterialPageRoute(builder:(context) => ))
            },
          ),
        ],
      ),

      // actions:  [
      //   Padding(
      //     padding: EdgeInsets.only(right: 15),
      //     child: Icon(Icons.menu, color: Colors.black,),
      //   ),
      // ],
      // ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Container(
            // decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.purple,Colors.green],
            // begin: Alignment.topCenter,end: Alignment.bottomRight)),
            height: 35,
            width: MediaQuery.of(context).size.width,
            color: Colors.white38,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                        onTap: () {
                          setState(() {
                            currentindex=index;
                             Navigator.push(context,  MaterialPageRoute(builder: (context) => First(),));

                          });
                        },
                        child: Text(
                          namesOfStates[index],
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2,
                              color: (currentindex==index)?Colors.red:Colors.black,
                              fontSize: 16),
                        )));
              },
              scrollDirection: Axis.horizontal,
              itemCount: namesOfStates.length,
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: TextFormField(
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                filled: true,
                fillColor: Colors.white30,
                labelText: "Search",
                labelStyle:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide(color: Colors.black),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueAccent),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
              child: GridView.builder(
            itemCount: place.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20.0,
              childAspectRatio: 1.07,
            ),
            itemBuilder: (context, index) {
              return Column(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        place[index].images[0],
                        height: 110,
                        width: 170,
                        fit: BoxFit.fill,
                      )),
                  SizedBox(
                    height: 6,
                  ),
                  Text(place[index].name),
                  Text(place[index].description),
                  Row(
                    children: [
                      Text(place[index].rating.toString()),
                      Icon(
                        Icons.star_rate_outlined,
                        color: Colors.amber.shade700,
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                ],
              );
            },
          )),
        ],
      ),
    );
  }
}
