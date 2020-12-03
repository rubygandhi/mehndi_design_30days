import 'package:flutter/material.dart';
import 'package:mehndi_design/Model/DesignClass.dart';

import 'procedurepage.dart';

class MehndiDesign extends StatefulWidget {
  @override
  _MehndiDesignState createState() => _MehndiDesignState();
}

class _MehndiDesignState extends State<MehndiDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          "Mehndi Collection",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          Image.network(
            "https://sites.google.com/site/themehndidesigns/_/rsrc/1545332758510/home/mehndi%20ki%20design.jpg",
            height: 200,
            width: 500,
            fit: BoxFit.fill,
          ),
          SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    "By Categoty",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  "View All",
                  style: TextStyle(fontSize: 12, color: Colors.blue),
                )
              ],
            ),
          ),
          Container(
            height: 60,
            width: 600,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categoryList.length,
                itemBuilder: (context, index) {
                  return InkWell(

                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 60,
                        width: 120,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                            child: Text(
                          categoryList[index].name,
                          style:
                              TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                        )),
                      ),
                    ),
                  );
                }),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    "Popular",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  "View All",
                  style: TextStyle(fontSize: 12, color: Colors.blue),
                )
              ],
            ),
          ),
          Container(
            height: 200,
            width: 600,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: DesignList.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (_)=>procedure(DesignList[index])));
                    },
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 150,
                            height: 150,
                            child: Image.network
                              (DesignList[index].image,
                            fit: BoxFit.fill,),
                          ),
                        ),
                        Text(DesignList[index].name)
                      ],
                    ),
                  );
                }),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    "Explorer",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  "View All",
                  style: TextStyle(fontSize: 12, color: Colors.blue),
                )
              ],
            ),
          ),

          GridView.builder(
            physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              reverse: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
              itemCount: DesignList.length,
              itemBuilder: (context,index){
                return Container(
                  height: 100,
                  width: 100,
                  child: Image.network(DesignList[index].image),

                );
              })
        ]),
      ),
    );
  }
}
