import 'package:flutter/material.dart';
import 'package:iti/CustomCont.dart';
import 'package:iti/custom_gridveiw.dart';
import 'package:iti/models/new_model.dart';
import 'package:iti/secondscreen.dart';
import 'package:iti/services/news_services.dart';

class home extends StatefulWidget {
  @override

  State<home> createState() => _homeState();
}

class _homeState extends State<home> {




@override
  void initState()  {
  getData();
    super.initState();
    
  }


Future<void> getData() async{
  var data =  await  NewsServices().getGereralNews();
}






  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Title(
          color: Colors.white,
          child: Text(
            "News App",
            style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),
          ),
        ),
        backgroundColor: const Color.fromARGB(226, 0, 128, 255),
        leading: Icon(
          Icons.notifications_outlined,
          color: const Color.fromARGB(255, 255, 255, 255),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          child: Column(
            children: [
            CustomGridveiw(),
              Container(
                padding: EdgeInsets.symmetric(vertical: 15),
                width: double.infinity,
                height: 2,
                color: const Color.fromARGB(255, 168, 168, 168),
              ),

              Container(
                padding: EdgeInsets.only(top: 5),
                child: Column(
                  spacing: 8,
                  children: [
                    CustomCont(
                      title: "Stock market today",
                      paragraph:
                          "important news important news important news important news ",
                      imageLink: "assets/images/download (1).jpg",
                    ),
                    CustomCont(
                      title: "good News!",
                      paragraph:
                          "Ay 7aga Ay 7aga Ay 7aga Ay 7aga Ay 7aga Ay 7aga ay 7aga",
                      imageLink: "assets/images/images (2).jpg",
                    ),
                    CustomCont(
                      title: "Chocolate Cake ingredients",
                      paragraph: "flour, eggs, milk, butter, chocolate bar",
                      imageLink: "assets/images/images (2).webp",
                    ),
                    CustomCont(
                      title: "IMPORTANT!",
                      paragraph:
                          "Ay 7aga tani Ay 7aga Ay tani 7aga Ay 7aga Ay 7aga ",
                      imageLink: "assets/images/download.jpg",
                    ),
                    CustomCont(
                      title: "New technologies in 2025 ",
                      paragraph: "tech tech tech tech tech tech tech tech ",
                      imageLink: "assets/images/download (2).jpg",
                    ),

                    CustomCont(
                      title: "sports news",
                      paragraph:
                          "important news important news important news important news ",
                      imageLink:
                          "assets/images/WhatsApp Image 2025-08-20 at 23.06.44_5c6cfb2e.jpg",
                    ),
                    CustomCont(
                      title: "Bad News!",
                      paragraph:
                          "Ay 7aga Ay 7aga Ay 7aga Ay 7aga Ay 7aga Ay 7aga ",
                      imageLink: "assets/images/images (3).jpg",
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
}
