import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: actualCode(),
    ),
  );
}

class actualCode extends StatefulWidget {
  actualCode({Key? key}) : super(key: key);

  @override
  State<actualCode> createState() => _actualCodeState();
}

class _actualCodeState extends State<actualCode> {
  int counterValue = 0;
  Color textColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                    height: 200,
                    width: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color.fromARGB(255, 204, 201, 201),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Sarita",
                          style: TextStyle(color: textColor, fontSize: 25),
                        ),
                        Text(
                          "Blood",
                          style: TextStyle(color: textColor, fontSize: 25),
                        ),
                        Text(
                          "Bank",
                          style: TextStyle(color: textColor, fontSize: 25),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 39,
                          child: ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                              primary: textColor,
                              onPrimary: Colors.green,
                              padding: EdgeInsets.only(left: 7),
                            ),
                            icon: Icon(Icons.circle),
                            label: Text(""),
                            onPressed: () {},
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          "Blood Group",
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          "B +ve",
                          style: TextStyle(
                            fontSize: 24,
                          ),
                        ),
                        SizedBox(
                          height: 38,
                        ),
                        Text("Add units"),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 4,
                          ),
                          height: 74,
                          width: 172,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color.fromARGB(255, 204, 201, 201),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              if (counterValue > 0)
                                SizedBox(
                                  width: 50,
                                  child: ElevatedButton.icon(
                                    style: ElevatedButton.styleFrom(
                                      padding: EdgeInsets.only(left: 13),
                                      alignment: Alignment.centerLeft,
                                      primary: Colors.white,
                                      onPrimary: Colors.black,
                                    ),
                                    icon: Icon(Icons.remove),
                                    label: Text(""),
                                    onPressed: () {
                                      counterValue = counterValue - 1;
                                      setState(() {});
                                    },
                                  ),
                                ),
                              if (counterValue < 1)
                                SizedBox(
                                  width: 50,
                                ),
                              Text(
                                counterValue.toString(),
                                style: TextStyle(
                                  fontSize: 25,
                                ),
                              ),
                              if (counterValue < 9)
                                SizedBox(
                                  width: 50,
                                  child: ElevatedButton.icon(
                                    style: ElevatedButton.styleFrom(
                                      padding: EdgeInsets.only(left: 13),
                                      alignment: Alignment.centerLeft,
                                      primary: Colors.white,
                                      onPrimary: Colors.black,
                                    ),
                                    icon: Icon(Icons.add),
                                    label: Text(""),
                                    onPressed: () {
                                      counterValue = counterValue + 1;
                                      setState(() {});
                                    },
                                  ),
                                ),
                              if (counterValue > 8)
                                SizedBox(
                                  width: 50,
                                ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              if (counterValue >= 9)
                Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 236, 77, 66),
                  ),
                  child: Text(
                    "You have reached maximum unit limit",
                    style: TextStyle(fontSize: 18, color: textColor),
                  ),
                ),
              if (counterValue < 9) SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
