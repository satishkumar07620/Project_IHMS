// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_adjacent_string_concatenation, avoid_print, prefer_final_fields, non_constant_identifier_names, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({
    super.key,
  });

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  void printMessage() {
    print('user accepted the agreement');
  }

  TextEditingController _date = TextEditingController();
  TextEditingController _date1 = TextEditingController();
  bool? isChecked = false;
  String? Gender;
  String? Type;
  String? valueChoose;
  String? valueChoose1;
  String? valueChoose2;
  bool CheckboxValue = false;
  List listItem = ["items 1", "items 2", "items 3", "items 4", "items 5"];
  List listItem1 = ["items 1", "items 2", "items 3", "items 4", "items 5"];
  List listItem2 = ["items 1", "items 2", "items 3", "items 4", "items 5"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 246, 126, 117),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 40, bottom: 10),
            child: Text(
              'IHMS',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 60,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.98,
                height: MediaQuery.of(context).size.height * 0.75,
                padding: EdgeInsets.all(25),
                decoration: BoxDecoration(
                  color: Color(0xFFffffff),
                  borderRadius: BorderRadius.all(
                    Radius.circular(40),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Let's Get Started!",
                        style:
                            TextStyle(color: Color(0xFFb9934b), fontSize: 20),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Create an account With IHMS to get all features.",
                        style: TextStyle(
                            color: Color(0xFFa3906b),
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      DropdownButton(
                        hint: Text('Select Society & Location'),
                        icon: Icon(Icons.arrow_drop_down),
                        isExpanded: true,
                        value: valueChoose,
                        onChanged: (newValue) {
                          setState(() {
                            valueChoose = newValue as String?;
                          });
                        },
                        items: listItem.map((valueItem) {
                          return DropdownMenuItem(
                            value: valueItem,
                            child: Text(valueItem),
                          );
                        }).toList(),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: DropdownButton(
                              hint: Text('Select Tower'),
                              icon: Icon(Icons.arrow_drop_down),
                              isExpanded: true,
                              value: valueChoose1,
                              onChanged: (newValue) {
                                setState(() {
                                  valueChoose1 = newValue as String?;
                                });
                              },
                              items: listItem1.map((valueItem) {
                                return DropdownMenuItem(
                                  value: valueItem,
                                  child: Text(valueItem),
                                );
                              }).toList(),
                            ),
                          ),
                          Expanded(
                            child: DropdownButton(
                              hint: Text('Select Flat no'),
                              icon: Icon(Icons.arrow_drop_down),
                              isExpanded: true,
                              value: valueChoose2,
                              onChanged: (newValue) {
                                setState(() {
                                  valueChoose2 = newValue as String?;
                                });
                              },
                              items: listItem2.map((valueItem) {
                                return DropdownMenuItem(
                                  value: valueItem,
                                  child: Text(valueItem),
                                );
                              }).toList(),
                            ),
                          ),
                        ],
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          border: UnderlineInputBorder(),
                          labelText: 'Name',
                        ),
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          border: UnderlineInputBorder(),
                          labelText: 'Email ID',
                        ),
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          border: UnderlineInputBorder(),
                          labelText: 'Mobile Number',
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'We will send you a One Time Password on this Mobile Number',
                        style: TextStyle(fontSize: 12.5),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: _date,
                        decoration: const InputDecoration(
                          suffixIcon: Icon(Icons.calendar_today_rounded),
                          labelText: 'Dob',
                          // icon: Icon(Icons.calendar_today_rounded),
                        ),
                        onTap: () async {
                          DateTime? pickedate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(1900),
                              lastDate: DateTime(2100));
                          if (pickedate != null) {
                            setState(
                              () {
                                _date.text =
                                    DateFormat('yyyy-MM-dd').format(pickedate);
                              },
                            );
                          }
                        },
                      ),
                      TextFormField(
                        controller: _date1,
                        decoration: const InputDecoration(
                          suffixIcon: Icon(Icons.calendar_today_rounded),
                          labelText: 'Anniversary',
                          // icon: Icon(Icons.calendar_today_rounded),
                        ),
                        onTap: () async {
                          DateTime? pickedate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(1950),
                              lastDate: DateTime(2100));
                          if (pickedate != null) {
                            setState(() {
                              _date1.text =
                                  DateFormat('yyyy-MM-dd').format(pickedate);
                            });
                          }
                        },
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Gender',
                        style: TextStyle(
                          fontSize: 20,
                          // color: Color(0xFFa7a7a7),
                        ),
                      ),
                      Row(
                        children: [
                          Radio(
                            value: "Male",
                            groupValue: Gender,
                            onChanged: ((value) {
                              setState(() {
                                Gender = value.toString();
                              });
                            }),
                          ),
                          Text(
                            "Male",
                            style: TextStyle(
                                // color: Color(0xFFa7a7a7),
                                ),
                          ),
                          Radio(
                            value: "Female",
                            groupValue: Gender,
                            onChanged: ((value) {
                              setState(() {
                                Gender = value.toString();
                              });
                            }),
                          ),
                          Text("Female"),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Type",
                        style: TextStyle(fontSize: 20),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Radio(
                            value: "Tenant",
                            groupValue: Type,
                            onChanged: ((value) {
                              setState(() {
                                Type = value.toString();
                              });
                            }),
                          ),
                          Text("Tenant"),
                          Radio(
                            value: "Owner",
                            groupValue: Type,
                            onChanged: ((value) {
                              setState(() {
                                Type = value.toString();
                              });
                            }),
                          ),
                          Text("Owner"),
                          Radio(
                            value: "Other",
                            groupValue: Type,
                            onChanged: ((value) {
                              setState(
                                () {
                                  Type = value.toString();
                                },
                              );
                            }),
                          ),
                          Text("Other"),
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: CheckboxValue,
                            activeColor: Colors.black,
                            onChanged: (bool? value) {
                              print(value);
                              setState(
                                () {
                                  CheckboxValue = value!;
                                },
                              );
                            },
                          ),
                          Text(
                            'I agree to the',
                            style: TextStyle(fontSize: 18),
                          ),
                          Text(
                            " Terms",
                            style: TextStyle(
                                color: Color.fromARGB(255, 197, 150, 9),
                                fontSize: 20),
                          ),
                          Text(
                            " & ",
                            style: TextStyle(fontSize: 18),
                          ),
                          Text(
                            "Condition",
                            style: TextStyle(
                                color: Color.fromARGB(255, 185, 141, 8),
                                fontSize: 20),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 610, left: 160),
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 620, left: 170),
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: IconButton(
                      onPressed: CheckboxValue ? printMessage : null,
                      icon: Icon(
                        Icons.arrow_right_alt_outlined,
                        color: Colors.white,
                        size: 60,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Already you have account?',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              Container(
                height: 32,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: Text(
                    "Sign in",
                    style: TextStyle(
                        color: Colors.amber,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
