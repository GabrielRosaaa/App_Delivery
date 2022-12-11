import 'package:app/widget/appBar.dart';
import 'package:app/widget/appBarEmpresa.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../constants/color.dart';

class EmpresaPage extends StatefulWidget {
  const EmpresaPage({super.key});

  @override
  State<EmpresaPage> createState() => _EmpresaPageState();
}

class _EmpresaPageState extends State<EmpresaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/cover-enterprise.png'),
              fit: BoxFit.fill,),
        ),
        child: Column(
          children: [
            AppBarEmpresa(context: context),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(top: 100),
                decoration: BoxDecoration(
                  color: color00,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.only(top: 20, left: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "KFC - Fast Food Buger",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: 20,
                                color: color01,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.percent,
                                    color: color01,
                                    size: 13,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '15% off',
                                    style: TextStyle(
                                      color: color01,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 50,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.schedule,
                                    color: color05,
                                    size: 13,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '40 A 60 MIN',
                                    style: TextStyle(
                                      color: color05,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.only(left: 30),
                      margin: EdgeInsets.only(top: 30),
                      child: Text(
                        "Produtos",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: color02),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(left: 30, right: 30),
                        height: MediaQuery.of(context).size.height,
                        child: GridView.builder(
                          itemCount: 100,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 1,
                            childAspectRatio: 4,
                            crossAxisSpacing: 30,
                            mainAxisSpacing: 30,
                          ),
                          scrollDirection: Axis.vertical,
                          reverse: false,
                          itemBuilder: (context, index) => Container(
                            decoration: BoxDecoration(
                                color: Color(0xffecf0f1),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.percent,
                                            color: color05,
                                            size: 12,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                '15% DE CASHBACK',
                                                style: TextStyle(
                                                  color: color05,
                                                  fontSize: 12,
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Column(children: [
                                            Text(
                                              'Frango frito',
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(width: 90,),
                                          Column(
                                            children: [Row(
                                              children: [
                                                Text('\$',
                                                  style: TextStyle(
                                                    fontSize: 25,
                                                    ),
                                                  ),
                                                SizedBox(width: 4,
                                                ),
                                                Text('21',
                                                  style:
                                                  TextStyle(
                                                      fontSize: 25,
                                                      fontWeight:
                                                      FontWeight.bold),
                                                  ),
                                                SizedBox(width: 15,
                                                ),
                                                GestureDetector(
                                                  onTap: () {},
                                                  child: Container(
                                                    width: 35,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                        BorderRadius.all(Radius.elliptical(5, 5),
                                                        ),
                                                        color: color01),
                                                    child: Padding(
                                                      padding: const EdgeInsets.all(10.0),
                                                      child: Text("+",textAlign: TextAlign.center,),
                                                    ),
                                                  ),
                                                ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text('Fast food - Burguer',
                                        style: TextStyle(
                                          fontSize: 11
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
     );
  }
}
