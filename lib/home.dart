import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List name = [];
  List gr = [];
  List std = [];
  TextEditingController txtname = TextEditingController();
  TextEditingController txtgr = TextEditingController();
  TextEditingController txtstd = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            title: Text("Student recod"),
            backgroundColor: Colors.grey.shade800),
        body: Stack(
          children: [
            Container(
              height: 900,
              child: ListView.builder(
                itemCount: name.length,
                itemBuilder: (context, index) {
                  return Box(name[index], gr[index], std[index]);
                },
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(25),
                child: FloatingActionButton(
                  backgroundColor: Colors.grey.shade800,
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    setState(() {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return Container(
                            height: 900,
                            child: Scaffold(
                              body: Center(
                                child: Container(
                                  height: 500,
                                  width: 300,
                                  child: Column(
                                    children: [
                                      Text("Add",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25)),
                                      SizedBox(height: 25,),
                                      TextField(
                                        controller: txtname,
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      TextField(
                                        controller: txtgr,
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(
                                            borderRadius:
                                            BorderRadius.circular(5),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      TextField(
                                        controller: txtstd,
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(
                                            borderRadius:
                                            BorderRadius.circular(5),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      InkWell(
                                        onTap: (){
                                          setState(() {
                                            name.add(txtname.text);
                                            gr.add(txtgr.text);
                                            std.add(txtstd.text);
                                            Navigator.pop(context);
                                          });
                                        },
                                        child: Container(
                                          height: 50,
                                          width: 100,
                                          decoration: BoxDecoration(
                                            color: Colors.grey.shade800,
                                            borderRadius:
                                            BorderRadius.circular(5),
                                          ),
                                          alignment: Alignment.center,
                                          child: Text("Add",
                                              style: TextStyle(
                                                  color: Colors.white)),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget Box(String a, String b, String c) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade800,
          borderRadius: BorderRadius.circular(10),
        ),
        child: ListTile(
          title: Text("Name : $a", style: TextStyle(color: Colors.white)),
          leading: Text("$b", style: TextStyle(color: Colors.white)),
          subtitle: Text("Std : $c", style: TextStyle(color: Colors.white)),
          trailing: Container(
            height: 50,
            width: 75,
            child: Row(
              children: [
                InkWell(
                    onTap: () {
                      setState(() {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              content: Container(
                                height: 319,
                                child: Column(
                                  children: [
                                    Text(
                                      "Update",
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    TextField(
                                      controller: txtname,
                                      decoration: InputDecoration(
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5))),
                                      onTap: () {
                                        setState(() {
                                          name.add(txtname.text);
                                        });
                                      },
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    TextField(
                                      controller: txtgr,
                                      decoration: InputDecoration(
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5))),
                                      onTap: () {
                                        setState(() {
                                          name.add(txtname.text);
                                        });
                                      },
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    TextField(
                                      controller: txtstd,
                                      decoration: InputDecoration(
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5))),
                                      onTap: () {
                                        setState(() {
                                          name.add(txtname.text);
                                        });
                                      },
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              name.insert(name.length, a);
                                              gr.insert(name.length, b);
                                              std.insert(name.length, c);
                                              Navigator.pop(context);
                                            });
                                          },
                                          child: Container(
                                            height: 50,
                                            width: 100,
                                            decoration: BoxDecoration(
                                              color: Colors.grey.shade800,
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            alignment: Alignment.center,
                                            child: Text("Update",
                                                style: TextStyle(
                                                    color: Colors.white)),
                                          ),
                                        ),
                                        Expanded(
                                            child: SizedBox(
                                          width: 5,
                                        )),
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              Navigator.pop(context);
                                            });
                                          },
                                          child: Container(
                                            height: 50,
                                            width: 100,
                                            decoration: BoxDecoration(
                                              color: Colors.grey.shade800,
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            alignment: Alignment.center,
                                            child: Text("Cancel",
                                                style: TextStyle(
                                                    color: Colors.white)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      });
                    },
                    child: Icon(
                      Icons.update_sharp,
                      color: Colors.white,
                    )),
                InkWell(
                    onTap: () {
                      setState(() {
                        name.remove(a);
                        gr.remove(b);
                        std.remove(c);
                      });
                    },
                    child: Icon(
                      Icons.delete,
                      color: Colors.white,
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
