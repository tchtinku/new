import 'package:bottom/BottomModel/newBottomModel.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void bottomSheet(BuildContext context) {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (ctx) {
          return ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
              child: NewBottomModel());
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: Text('Location',
            style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold)),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              color: Colors.black,
              icon: Icon(
                Icons.filter_list,
                size: 30,
              ),
              onPressed: () {
                // Bottom();
                bottomSheet(context);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar( 
             radius: 15.0,
              child: Image.network(
                  "https://www.tuktukdesign.com/wp-content/uploads/2017/12/person-icon.jpg",fit: BoxFit.contain),
            ),
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          // Row(
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   children: [
          //     Padding(
          //       padding: const EdgeInsets.only(left: 20.0, top: 50.0),
          //       child: Text('Location',
          //           style: TextStyle(
          //               color: Colors.black,
          //               fontSize: 16,
          //               fontWeight: FontWeight.bold)),
          //     ),
          //     Padding(
          //       padding: const EdgeInsets.only(left: 220.0, top: 50.0),
          //       child: IconButton(
          //         icon: Icon(
          //           Icons.filter_list,
          //           size: 30,
          //         ),
          //         onPressed: () {
          //           // Bottom();
          //           bottomSheet(context);
          //         },
          //       ),
          //     ),
          //     Padding(
          //       padding: const EdgeInsets.only(left: 5.0, top: 50.0),
          //       child: CircleAvatar(
          //         radius: 15.0,
          //         //backgroundImage: AssetImage('assets/beautiful.jpg'),
          //       ),
          //     ),
          //   ],
          // ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 30),
                  child: Image(
                    height: 100.0,
                    width: 100.0,
                    image: AssetImage('assets/Pali_Lucknow.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: const EdgeInsets.only(left: 10.0, top: 30),
                      child: Text(
                        'Learn Kathak Online',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      )),
                  Padding(
                      padding: const EdgeInsets.only(left: 10.0, top: 5),
                      child: Text(
                        '(Beginners)',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      )),
                  Padding(
                      padding: const EdgeInsets.only(left: 10.0, top: 5),
                      child: Text(
                        'Guru Pali Chandra',
                        style: TextStyle(color: Colors.grey, fontSize: 18),
                      )),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Icon(Icons.star, color: Colors.grey)
                    ],
                  ),
                ],
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 30),
                  child: Image(
                    height: 100.0,
                    width: 100.0,
                    image: AssetImage('assets/Pali_Lucknow.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: const EdgeInsets.only(left: 10.0, top: 30),
                      child: Text(
                        'Learn Kathak Online',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      )),
                  Padding(
                      padding: const EdgeInsets.only(left: 10.0, top: 5),
                      child: Text(
                        '(Beginners)',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      )),
                  Padding(
                      padding: const EdgeInsets.only(left: 10.0, top: 5),
                      child: Text(
                        'Guru Pali Chandra',
                        style: TextStyle(color: Colors.grey, fontSize: 18),
                      )),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Icon(Icons.star, color: Colors.grey)
                    ],
                  ),
                ],
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 30),
                  child: Image(
                    height: 100.0,
                    width: 100.0,
                    image: AssetImage('assets/Pali_Lucknow.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: const EdgeInsets.only(left: 10.0, top: 30),
                      child: Text(
                        'Learn Kathak Online',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      )),
                  Padding(
                      padding: const EdgeInsets.only(left: 10.0, top: 5),
                      child: Text(
                        '(Beginners)',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      )),
                  Padding(
                      padding: const EdgeInsets.only(left: 10.0, top: 5),
                      child: Text(
                        'Guru Pali Chandra',
                        style: TextStyle(color: Colors.grey, fontSize: 18),
                      )),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Icon(Icons.star, color: Colors.grey)
                    ],
                  ),
                ],
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 30),
                  child: Image(
                    height: 100.0,
                    width: 100.0,
                    image: AssetImage('assets/Pali_Lucknow.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: const EdgeInsets.only(left: 10.0, top: 30),
                      child: Text(
                        'Learn Kathak Online',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      )),
                  Padding(
                      padding: const EdgeInsets.only(left: 10.0, top: 5),
                      child: Text(
                        '(Beginners)',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      )),
                  Padding(
                      padding: const EdgeInsets.only(left: 10.0, top: 5),
                      child: Text(
                        'Guru Pali Chandra',
                        style: TextStyle(color: Colors.grey, fontSize: 18),
                      )),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Icon(Icons.star, color: Colors.grey)
                    ],
                  ),
                ],
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 30),
                  child: Image(
                    height: 100.0,
                    width: 100.0,
                    image: AssetImage('assets/Pali_Lucknow.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: const EdgeInsets.only(left: 10.0, top: 30),
                      child: Text(
                        'Learn Kathak Online',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      )),
                  Padding(
                      padding: const EdgeInsets.only(left: 10.0, top: 5),
                      child: Text(
                        '(Beginners)',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      )),
                  Padding(
                      padding: const EdgeInsets.only(left: 10.0, top: 5),
                      child: Text(
                        'Guru Pali Chandra',
                        style: TextStyle(color: Colors.grey, fontSize: 18),
                      )),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Icon(Icons.star, color: Colors.grey)
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
