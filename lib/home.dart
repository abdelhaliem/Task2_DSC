import 'package:dsc_sc2/toolsUtilits.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var image1 = ToolsImage.imageUrl;
  var image2 = ToolsImage.imageUrl2;
  bool valu = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text("♥ DSC AlAzhar ♥"),
        actions: [
          switchAppBar(),
        ],
        flexibleSpace: appBarCont(),
      ),
      //Singale=>
      body: Scrollbar(
        radius: Radius.circular(20),
        thickness: 10,
        child: SingleChildScrollView(
          child: Column(
            children: [
              valu
                  ? Column(
                      children: [
                        Row(
                          children: [
                            buldContainer(0, 0),
                            buldContainer(1, 1),
                          ],
                        ),
                        Row(
                          children: [
                            buldContainer(2, 2),
                            buldContainer(3, 3),
                          ],
                        ),
                        Row(
                          children: [
                            buldContainer(4, 4),
                            buldContainer(5, 5),
                          ],
                        ),
                        Row(
                          children: [
                            buldContainer(0, 0),
                            buldContainer(1, 1),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    )
                  : Column(
                      children: [
                        Row(
                          children: [
                            buldContainer(3, 0),
                            buldContainer(4, 1),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    )
            ],
          ),
        ),
      ),
    );
  }

  Row switchAppBar() {
    return Row(
      children: [
        valu ? switchText("Candy") : switchText("Foods"),
        Switch(
            value: valu,
            activeColor: Colors.white,
            onChanged: (state) {
              setState(() {
                valu = state;
              });
            }),
      ],
    );
  }

  Text switchText(String title) {
    return Text(
      title,
      style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
    );
  }

  Widget buldContainer(int index1, int index2) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10),
          width: MediaQuery.of(context).size.width * 0.44,
          height: MediaQuery.of(context).size.height * 0.22,
          decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: NetworkImage(valu ? image1[index1] : image2[index1]),
                  fit: BoxFit.cover)),
        ),
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width * 0.40,
          height: 30,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.black12.withOpacity(0.1)),
          child: Text(
            valu
                ? ToolsImage.imagetitle[index2]
                : ToolsImage.imagetitle2[index2],
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 20,
            ),
          ),
        ),
      ],
    );
  }

  Widget appBarCont() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(15),
        ),
      ),
    );
  }
}
