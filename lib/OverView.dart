import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart'; // Import TapGestureRecognizer

class Overview extends StatefulWidget {
  const Overview({Key? key}) : super(key: key);

  @override
  State<Overview> createState() => _OverviewState();
}

class _OverviewState extends State<Overview> {
  List<bool> _isHovered = [false, false, false];
  String _currentImagePath = 'assets/tv.png'; // Default image

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: IconButton(
            icon: const Icon(Icons.chevron_left),
            onPressed: () {},
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(left:0),
          child: Container(
            height: 40,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search ...',
                hintStyle: TextStyle(color: Colors.grey[600]),
                border: InputBorder.none,
                prefixIcon: const Icon(Icons.search, color: Colors.black),
              ),
            ),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.camera_enhance,size: 20,),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.shopping_cart,size: 20,),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.more_horiz, size: 30,color: Colors.black,),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                _currentImagePath,
              ),
              SizedBox(height: 16),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white54,
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.all(8),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(3, (index) {
                      return MouseRegion(
                        onEnter: (_) => setState(() => _isHovered[index] = true),
                        onExit: (_) => setState(() => _isHovered[index] = false),
                        child: Container(
                          decoration: BoxDecoration(
                            color: _isHovered[index] ? Colors.white : Colors.grey[200],
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                _currentImagePath = index == 0
                                    ? 'assets/tv.png'
                                    : index == 1
                                    ? 'assets/photo_icon.jpg'
                                    : 'assets/detail.jpg';
                              });
                            },
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SizedBox(height: 4),
                                Text(
                                  index == 0 ? 'Video' : index == 1 ? 'Photo' : 'Details',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    })),
              ),
              SizedBox(height: 16),
              Container(
                color: Colors.white54,
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: List.generate(4, (index) {
                    return _buildSliderItem(index);
                  }),
                ),
              ),
              SizedBox(height: 16),
              Container(
                width: 360,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white38,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'assets/sticker.png',
                                width: 24,
                                height: 24,
                              ),
                              SizedBox(width: 8),
                              Expanded(
                                child: Text(
                                  'Normal flat screen LED TV accepted custom 4K',
                                  style: TextStyle(color: Colors.black, fontSize: 10),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              Text(
                                'Android table television 24 inch smart TV',
                                style: TextStyle(color: Colors.black, fontSize: 10),
                              ),
                              SizedBox(width: 4),
                              Icon(Icons.arrow_drop_down, size: 20),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Text('|', style: TextStyle(color: Colors.grey, fontSize: 35)),
                        SizedBox(width: 10),
                        Icon(Icons.arrow_forward_sharp, size: 20),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 1),
              Container(
                width: 360,
                padding: EdgeInsets.only(left: 16.0),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'see store reviews',
                        style: TextStyle(
                          color: Colors.grey[500],
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            print("Link tapped!");
                          },
                      ),
                      TextSpan(
                        text: ' .3 orders',
                        style: TextStyle(color: Colors.grey[500]),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: 400,
                height: 50,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.orange[50],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    Expanded(
                      child: Text(
                        '🏆 No.9 Most popular in smart TVs',
                        style: TextStyle(color: Colors.brown[300], fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Icon(Icons.chevron_right, size: 20),
                    SizedBox(width: 8),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: 400,
                height: 60,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Text(
                      'Deliver to 100,ET',
                      style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 200),
                      child: Icon(Icons.chevron_right, size: 20),
                    ),
                    SizedBox(width: 8),
                  ],
                ),

              ),
              SizedBox(height: 10),
              Container(
                width: 400,
                height: 150,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 220.0,bottom: 15),

                  child: Text("Lead time"),
                        ),
                        Column(

                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [

                                Text('7 days', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                                Text('25 days', style: TextStyle(color: Colors.black)),
                                Text('To be negotiated', style: TextStyle(color: Colors.black)),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('1+ pieces', style: TextStyle(color: Colors.grey)),
                            Text('801+ pieces', style: TextStyle(color: Colors.grey)),
                            Text('2200+ pieces', style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: 400,
                height: 50,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  'Shipping to be negotiated, contact supplier for more detail.',
                  style: TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: 400,
                height: 80,

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start, // Align text at the start
                  crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:30,right: 180),
                          child: Text(
                            'Protection for this product',
                            style: TextStyle(color: Colors.black, fontSize: 10, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Icon(Icons.chevron_right, size: 20),
                      ],
                    ),
                    SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.only(left:29,bottom: 5),
                      child: Text(
                        'secure payment',
                        style: TextStyle(color: Colors.black, fontSize: 10),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 29),
                      child: Text(
                        'standard refund policy',
                        style: TextStyle(color: Colors.black, fontSize: 10),
                      ),
                    ),

                  ],

                ),



              ),
              SizedBox(height: 1),
              Container(
                width: 400,
                height: 60,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  'Alibaba.com protrcts you from payed and placed on the  platform with the trade assurancer ',
                  style: TextStyle(color: Colors.grey, fontSize: 10, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: 400,
                height: 100,

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15,top: 10,bottom: 5),
                      child: Row(
                        children: [
                          Text(
                            'key attribute',
                            style: TextStyle(color: Colors.black, fontSize: 10, fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 250),
                            child: Icon(Icons.chevron_right, size: 20),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:15,bottom: 5),
                      child: Row(
                        children: [
                          Text(
                            "cabinate color:",
                            style: TextStyle(color: Colors.black, fontSize: 10, ),
                          ),
                          Text(
                            "blur/custom",
                            style: TextStyle(color: Colors.grey, fontSize: 10, ),
                          ),
                        ],
                      ),

                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15,bottom: 5),
                      child: Row(
                        children: [
                          Text(
                            'private mold : ',
                            style: TextStyle(color: Colors.black, fontSize: 10,),
                          ),
                          Text(
                            ' NO',
                            style: TextStyle(color: Colors.grey, fontSize: 10,),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          Text(
                            'refresh rate:',
                            style: TextStyle(color: Colors.black, fontSize: 10, ),
                          ),
                          Text(
                            '50/60HZ',
                            style: TextStyle(color: Colors.grey, fontSize: 10, ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: 400,
                height: 80,

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15,top: 10),
                      child: Row(
                        children: [
                          Text(
                            'customization option',
                            style: TextStyle(color: Colors.black, fontSize: 11, fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 200),
                            child: Icon(Icons.chevron_right, size: 20),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 100,),
                      child: Text(
                        'customized logo.graphic customization.customized pa..',
                        style: TextStyle(color: Colors.black, fontSize: 10, ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: 400,
                height: 50,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Text(
                      'Reviews',
                      style: TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 260),
                      child: Icon(Icons.chevron_right, size: 20),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 0),
              Container(
                width: 400,
                height: 50,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 1),
                  child: Text(
                    'store review(17)',
                    style: TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(height: 0),
              Container(
                width: 400,
                height: 140,

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 254,bottom: 10),
                      child: Text(
                        '4.8/5.0 satisfied',
                        style: TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 260),
                      child: Text(
                        'product quality',
                        style: TextStyle(color: Colors.black, fontSize: 13, ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 250),
                      child: Text(
                        'supplieer service',
                        style: TextStyle(color: Colors.black, fontSize: 13,),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 245),
                      child: Text(
                        'on time shipment',
                        style: TextStyle(color: Colors.black, fontSize: 13, ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: 400,
                height: 50,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  'store review(17)',
                  style: TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 10),
              Container(
                color: Colors.blue,
                child: Column(
                  children: [
                    Container(
                      width: 400,
                      height: 350,
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.blue[100],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'assets/tvn.jpg', // Make sure the image path is correct
                                width: 50, // Adjust width as needed
                                height: 50, // Adjust height as needed
                              ),
                              SizedBox(width: 8), // Space between image and text
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 50),
                                    child: Text(
                                      'Guangzhou juijng Electronics Co.,Ltd.',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text("verified supplier",style: TextStyle(color: Colors.blue[400])),
                                      Text(".Custom manufacturer.Top-rated.1yrs",style: TextStyle(fontSize: 10),),
                                    ],

                                  ),
                                ],
                              ),

                            ],
                          ),
                          SizedBox(height: 10), // Space between the two containers
                          Container(
                            width: 400,
                            height: 150,
                            padding: EdgeInsets.only(top: 16),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [

                                    Column(

                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [

                                            Text('4.8/5', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                                            Text('100.0%', style: TextStyle(color: Colors.black)),
                                            Text('<=2h>', style: TextStyle(color: Colors.black)),
                                          ],

                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [

                                            Text('store rating', style: TextStyle(color: Colors.grey)),
                                            Text('on-time delivery rate', style: TextStyle(color: Colors.grey)),
                                            Text('Response time', style: TextStyle(color: Colors.grey)),
                                          ],

                                        ),
                                        SizedBox(height: 20),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [

                                            Text('70,000+', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                                            Text('2400m', style: TextStyle(color: Colors.black)),
                                            Text('31', style: TextStyle(color: Colors.black)),
                                          ],

                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 5),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text('online revenue', style: TextStyle(color: Colors.grey)),
                                        Text('floorspace', style: TextStyle(color: Colors.grey)),
                                        Text('staff', style: TextStyle(color: Colors.grey)),

                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 15),

                          Padding(
                            padding: const EdgeInsets.only(right:100,bottom: 10),
                            child: Row(
                              children: [
                                Text("services",style: TextStyle(

                                    fontWeight: FontWeight.bold),),
                                Padding(
                                  padding: const EdgeInsets.only(left: 250),
                                  child: Icon(Icons.chevron_right, size: 25),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 5),

                          Padding(
                            padding: const EdgeInsets.only(right: 240),
                            child: Text("mirror customization",style: TextStyle(fontSize: 12),),
                          ),
                          SizedBox(height: 10),

                          Padding(
                            padding: const EdgeInsets.only(right:200),
                            child: Text("design based customization",style: TextStyle(fontSize: 12),),
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),

              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        IconButton(
                          onPressed: () {
                            print("Home button pressed");
                          },
                          icon: const Icon(Icons.home_outlined),
                        ),
                        Text("Store", style: TextStyle(fontSize: 10)),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey[100],
                        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      ),
                      child: Text('Chat now', style: TextStyle(color: Colors.black)),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      ),
                      child: Text('Send inquiry', style: TextStyle(color: Colors.white)),
                    ),

                  ],
                ),
              ),
            ],

          ),

        ),
      ),
    );
  }

  Widget _buildSliderItem(int index) {
    return Container(
      width: 140,
      height: 50,
      margin: EdgeInsets.symmetric(horizontal: 0),
      color: Colors.grey[200],
      child: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'ETB 5,913.67',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
            Text(
              'min. order: 1 piece',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
