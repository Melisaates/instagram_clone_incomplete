import 'dart:ffi';

import 'package:flutter/material.dart';

List<Map<String, dynamic>> feeds = [
  {
    "user_name": "gigi_hadid",
    "user_image":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6KDC9PyFzghN0jr1JEFMPMNOluUy5tehrRA&usqp=CAU",
    "post_image":
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQVHHW6Pu0NduRgB4h9GIhNNH4IBh8B88zemQ&usqp=CAU',
    "is_liked": false
  },
  {
    "user_name": "bella_hadid",
    "user_image":
        "https://cdn.yeniakit.com.tr/images/news/625/unlu-model-bella-hadid-istanbulun-o-camisindeki-goruntuleri-ove-ove-bitiremedi-h1650367441-5f2835.png",
    "is_liked": false,
    "post_image":
        'https://imgrosetta.mynet.com.tr/file/14922504/14922504-728xauto.png'
  },
  {
    "user_name": "Iriana_Shayk",
    "user_image":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTczDzTZC7ZW7csPQcJMkXVQ3FAXams6oVqfA&usqp=CAU",
    "is_liked": false,
    "post_image":
        'https://i.pinimg.com/originals/37/27/b6/3727b658d5817cf9267babd3e15d4e24.png'
  },
  {
    "user_name": "winnie_harlow",
    "user_image":
        "https://listelist.com/wp-content/uploads/2018/12/winnie-9-750x674.png",
    "is_liked": false,
    "post_image":
        "https://freight.cargo.site/t/original/i/1ff4de733d993733db3ab306a2a69ef3774efc5cba86382f83069b3bf5ac3e90/Puma-Winnie-Harlow_0032_22SS_SP_Winnie-Harlow_Cali-Dream_01_Talent_3370_RGB.png",
  }
];
List<Map<String, dynamic>> stories = [
  {
    "name": "gigi",
    "surname": "hadid",
    "user_image":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6KDC9PyFzghN0jr1JEFMPMNOluUy5tehrRA&usqp=CAU",
  },
  {
    "name": "bella",
    "surname": "hadid",
    "user_image":
        "https://cdn.yeniakit.com.tr/images/news/625/unlu-model-bella-hadid-istanbulun-o-camisindeki-goruntuleri-ove-ove-bitiremedi-h1650367441-5f2835.png",
  },
  {
    "name": "Iriana",
    "surname": "Shayk",
    "user_image":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTczDzTZC7ZW7csPQcJMkXVQ3FAXams6oVqfA&usqp=CAU",
  },
  {
    "name": "winnie",
    "surname": "harlow",
    "user_image":
        "https://listelist.com/wp-content/uploads/2018/12/winnie-9-750x674.png",
  }
];

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Column(
            // Column is also a layout widget. It takes a list of children and
            // arranges them vertically. By default, it sizes itself to fit its
            // children horizontally, and tries to be as tall as its parent.
            //
            // Invoke "debug painting" (press "p" in the console, choose the
            // "Toggle Debug Paint" action from the Flutter Inspector in Android
            // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
            // to see the wireframe for each widget.
            //
            // Column has various properties to control how it sizes itself and
            // how it positions its children. Here we use mainAxisAlignment to
            // center the children vertically; the main axis here is the vertical
            // axis because Columns are vertical (the cross axis would be
            // horizontal).
            mainAxisAlignment: MainAxisAlignment.start,

            children: <Widget>[
              Row(
                children: [
                  const Image(
                    width: 150,
                    height: 65,
                    image: NetworkImage(
                        'https://marka-logo.com/wp-content/uploads/2020/04/Instagram-Logo.png'),
                  ),
                  const SizedBox(width: 90),

                  //static const IconData heart = IconData(0xf442, fontFamily: iconFont, fontPackage: iconFontPackage),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.add_box_outlined),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.favorite_outline_outlined),
                  ),

                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.message_outlined),
                  ),
                ],
              ),

              SizedBox(
                height: 72,
                child: ListView.builder(
                    shrinkWrap: false,
                    scrollDirection: Axis.horizontal,
                    itemCount: stories.length,
                    itemBuilder: (context, index) {
                      final item = stories[index];

                      return Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 52,
                              width: 52,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(item['user_image']))),
                            ),
                            Text(item['name']),
                          ],
                        ),
                      );
                    }),
              ),
              //const Text('August 14', style: TextStyle(fontSize: 10)),
              const Divider(
                //height: 20,
                thickness: 1,
              ),

              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: feeds.length,
                  itemBuilder: (context, index) {
                    final item = feeds[index];

                    return Padding(
                      padding: const EdgeInsets.only(bottom: 93.0),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 3,
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 42,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image:
                                              NetworkImage(item['user_image'])),
                                      shape: BoxShape.circle),
                                  width: 55,
                                ),
                                Text(
                                  item['user_name'],
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 198),
                                  child: IconButton(
                                    onPressed: () {},
                                    color:
                                        const Color.fromARGB(255, 90, 89, 89),
                                    icon: const Icon(
                                        Icons.keyboard_control_rounded),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),

                            ///Inkwell widget ını kullanaraktan tıklama özelliğini kullan
                            ///Ama double Tap olunca fonksiyon çalışacak.
                            InkWell(
                              onDoubleTap: () {
                                setState(() {
                                  feeds[index]['is_liked'] == true
                                      ? null
                                      : feeds[index]['is_liked'] =
                                          !item['is_liked'];
                                });
                              },
                              child: Container(
                                  height: 325,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      image: DecorationImage(
                                          fit: BoxFit.contain,
                                          image: NetworkImage(
                                              item['post_image'])))),
                            ),
                            Row(
                              children: [
                                IconButton(
                                    onPressed: () {
                                      ///like Butonuna basınca çağrılacak olan fonksiyon
                                      setState(() {
                                        feeds[index]['is_liked'] =
                                            !item['is_liked'];
                                      });
                                    },
                                    icon: Icon(
                                      item['is_liked'] == false
                                          ? Icons.favorite_border_outlined
                                          : Icons.favorite_sharp,
                                      color: item['is_liked'] == true
                                          ? Colors.red
                                          : null,
                                    )),
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.message_outlined)),
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.send_outlined)),
                                const SizedBox(width: 200),
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.bookmark_border),
                                    highlightColor: Colors.black),
                              ],
                            ),
                            Row(
                              children: const [
                                SizedBox(width: 10),
                                Text(' Liked by', style: TextStyle()),
                                Text(' brad_pitt',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                Text(' and', style: TextStyle()),
                                Text(' others',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                              ],
                            ),
                            const SizedBox(height: 6),
                            const Padding(
                              padding: EdgeInsets.only(right: 320.0),
                              child: Text('August 14',
                                  style: TextStyle(fontSize: 10)),
                            ),
                          ]),
                    );
                  },
                ),
              ),

              /* Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 10.0, right: 12),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://img-s2.onedio.com/id-5f60cf1b62b460e511bccd37/rev-0/w-620/f-jpg/s-be3e2c5d0b2442b85c4d76846c22e8576ca12b96.jpg'),
                    ),
                  ),
                  const Text('angelina_jolie',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Padding(
                    padding: const EdgeInsets.only(left: 190),
                    child: IconButton(
                      onPressed: () {},
                      color: const Color.fromARGB(255, 90, 89, 89),
                      icon: const Icon(Icons.keyboard_control_rounded),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 2),
              const Image(
                  height: 320,
                  image: NetworkImage(
                      'https://www.pngmart.com/files/13/Actress-Angelina-Jolie-PNG-Free-Download.png')),
              const SizedBox(height: 6),
              
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.favorite_outline_outlined),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.message_outlined),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.send_outlined),
                  ),
                  const SizedBox(width: 200),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.bookmark_border),
                      highlightColor: Colors.black),
                ],
              ),*/
              /*  Row(
                children: const [
                  SizedBox(width: 10),
                  CircleAvatar(
                    radius: 8,
                    backgroundImage: NetworkImage(
                        'https://img-s2.onedio.com/id-5f60cf1b62b460e511bccd37/rev-0/w-620/f-jpg/s-be3e2c5d0b2442b85c4d76846c22e8576ca12b96.jpg'),
                  ),
                  CircleAvatar(
                    radius: 8,
                    backgroundImage: NetworkImage(
                        'https://img-s2.onedio.com/id-5f60cf1b62b460e511bccd37/rev-0/w-620/f-jpg/s-be3e2c5d0b2442b85c4d76846c22e8576ca12b96.jpg'),
                  ),
                  CircleAvatar(
                    radius: 8,
                    backgroundImage: NetworkImage(
                        'https://img-s2.onedio.com/id-5f60cf1b62b460e511bccd37/rev-0/w-620/f-jpg/s-be3e2c5d0b2442b85c4d76846c22e8576ca12b96.jpg'),
                  ),
                  Text(' Liked by', style: TextStyle()),
                  Text(' brad_pitt',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text(' and', style: TextStyle()),
                  Text(' others',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
              const SizedBox(height: 6),
              const Padding(
                padding: EdgeInsets.only(right: 320.0),
                child: Text('August 14', style: TextStyle(fontSize: 10)),
              ),
              const SizedBox(height: 6),
              */
              const Divider(thickness: 1),
              Padding(
                padding: const EdgeInsets.only(bottom: 18.0),
                child: Row(
                  children: [
                    const SizedBox(width: 17),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.home),
                    ),
                    const SizedBox(width: 30),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.search),
                    ),
                    const SizedBox(width: 30),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.live_tv_outlined),
                    ),
                    const SizedBox(width: 30),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.shopping_bag_outlined),
                    ),
                    const SizedBox(width: 30),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.account_circle_outlined),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      //floatingActionButton: FloatingActionButton(
      //onPressed: _incrementCounter,
      // tooltip: 'Increment',
      // child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
