import 'package:flutter/material.dart';
import 'package:iti/CustomCont.dart';
import 'package:iti/custom_gridveiw.dart';
import 'package:iti/models/general_news_model.dart';

import 'package:iti/services/news_services.dart';

class home extends StatefulWidget {
  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  void initState() {
    getData();
    super.initState();
  }

  List<GeneralNewsModel> newsList = [];
  Future<void> getData() async {
    newsList = await NewsServices().getGereralNews();
    setState(() {});
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
              Text(
                "Gerenal News",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 15),
                width: double.infinity,
                height: 2,
                color: const Color.fromARGB(255, 168, 168, 168),
              ),
              SizedBox(
                height: 400,

                child: ListView.builder(
                  itemCount: newsList.length,
                  itemBuilder: (context, index) {
                    return CustomCont(
                      title: newsList[index].title ?? "NO Title Found",
                      paragraph:
                          newsList[index].description ?? "NO Description Found",
                      imageLink:
                          newsList[index].image ??
                          "https://support.heberjahiz.com/hc/article_attachments/18203330538258",
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
