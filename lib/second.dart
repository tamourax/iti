import 'package:flutter/material.dart';
import 'package:iti/custom_cont.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: Drawer(
          child: ListView(children: [DrawerHeader(child: Text("ItI App"))]),
        ),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 172, 172, 243),
          title: Text("Second Screen"),
          leading: Icon(Icons.verified_user),

          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                DefaultTextStyle(
                  style: TextStyle(color: Colors.red),
                  child: Text("ahmed"),
                ),
                Transform(
                  child: Text("aasashmed"),
                  transform: Matrix4.rotationY(3.14),
                ),

                TextField(
                  controller: TextEditingController(text: "ahmed"),
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: Icon(Icons.mic),
                  ),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    textStyle: WidgetStatePropertyAll(
                      TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: Text("Elevated Button"),
                ),
                Card(
                  elevation: 5,
                  shadowColor: Colors.blue,

                  child: ListTile(
                    trailing: Icon(Icons.arrow_forward_ios),
                    title: Text("ahmed"),
                    leading: Icon(Icons.account_box),
                  ),
                ),
                Row(
                  children: [
                    Text("User Name"),
                    Switch(value: false, onChanged: (value) {}),
                  ],
                ),
                ListTile(
                  trailing: Icon(Icons.arrow_forward_ios),
                  title: Text("ahmed"),
                  leading: Icon(Icons.account_box),
                ),
                SizedBox(height: 34),
                Divider(color: Colors.black, thickness: 0.5),
                SizedBox(
                  height: 300,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 15,
                        mainAxisSpacing: 25,
                      ),
                      scrollDirection: Axis.vertical,
                      itemBuilder:
                          (context, index) => CustomCont(
                            quarterTurns: 1,
                            color: Color(0xffD9FBE7),
                            status: "Withdrawel",

                            amount: "2000.00.00",
                          ),
                      itemCount: 200,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Row(
                    children: [
                      Text(
                        "History Transaction",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black.withOpacity(0.7),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
