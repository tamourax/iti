import 'package:flutter/material.dart';
import 'package:iti/CustomCont.dart';
import 'package:iti/custom_gridveiw.dart';
import 'package:iti/models/general_news_model.dart';

import 'package:iti/services/news_services.dart';
import 'package:skeletonizer/skeletonizer.dart';

class home extends StatelessWidget {
  List<GeneralNewsModel> newsList = [];
  bool isLoading = true;

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

                child: FutureBuilder(
                  future: NewsServices().getGereralNews(),
                  builder: (context, snapshot) {
                    newsList = snapshot.data ?? [];

                    snapshot.hasData ? isLoading = false : isLoading = true;
                    return snapshot.hasError
                        ? Center(child: Text("There is an error"))
                        : Skeletonizer(
                          enabled: isLoading,
                          child: ListView.builder(
                            itemCount: newsList.length,
                            itemBuilder: (context, index) {
                              return CustomCont(
                                title:
                                    newsList[index].title ?? "NO Title Found",
                                paragraph:
                                    newsList[index].description ??
                                    "NO Description Found",
                                imageLink:
                                    newsList[index].image ??
                                    "https://support.heberjahiz.com/hc/article_attachments/18203330538258",
                              );
                            },
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
