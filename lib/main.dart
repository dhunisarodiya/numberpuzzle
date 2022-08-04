import 'dart:math';

import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home: puzzle(),));
}
class puzzle extends StatefulWidget {
  const puzzle({Key? key}) : super(key: key);

  @override
  State<puzzle> createState() => _puzzleState();
}
class _puzzleState extends State<puzzle> {
  List nn=["","","","","","","","",""];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      for(int i = 0 ; i < 9;i++)
        {
          while(true)
            {
              int num=Random().nextInt(9);
              if(!nn.contains("$num"));
              {
                nn[i]="$num";
                break;
              }
            }
        }
    });
    print("$nn");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("number puzzle",
          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        ),
      ),
      body: Container(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
                 Container(
                  height: 40,
                  color: Colors.white12,
                  child: Text(a,style: TextStyle(color: Color(0xff8b0b0b),fontSize: 25,fontWeight: FontWeight.bold),),
                ),
            ],),
          Row(mainAxisAlignment: MainAxisAlignment.center,children: [
            Expanded(
              child: InkWell(onTap: () {
                setState(() {
                  win();
                  if(b2=="" && cnt==0)
                    {
                      b2=b1;
                      b1="";
                    }
                  else if(b4=="" && cnt==0)
                    {
                      b4=b1;
                      b1="";
                    }
                });
              },
                child: Container(
                  height: 80,
                  margin:EdgeInsets.all(10),
                  color: Colors.black45,
                  child: Center(child: Text(b1,style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),),
                ),
              ),
            ),
            Expanded(
              child: InkWell(onTap: () {
                setState(() {
                  win();
                  if(b1=="" && cnt==0)
                    {
                      b1=b2;
                      b2="";
                    }
                  else if(b3=="" && cnt==0)
                    {
                      b3=b2;
                      b2="";
                    }
                  else if(b5=="" && cnt==0)
                    {
                      b5=b2;
                      b2="";
                    }
                });
              },
                child: Container(
                  height: 80,
                  margin:EdgeInsets.all(10),
                  color: Colors.black45,
                  child: Center(child: Text(b2,style: TextStyle(fontSize: 20,color: Colors.black),),),
                ),
              ),
            ),
            Expanded(
              child: InkWell(onTap: () {
                setState(() {
                  win();
                  if(b2=="" && cnt==0)
                    {
                      b2=b3;
                      b3="";
                    }
                  else if(b6=="" && cnt==0)
                    {
                      b6=b3;
                      b3="";
                    }
                });
              },
                child: Container(
                  height: 80,
                  margin:EdgeInsets.all(10),
                  color: Colors.black45,
                  child: Center(child: Text(b3,style: TextStyle(fontSize: 20,color: Colors.black),),),
                ),
              ),
            ),
          ],),
          Row(children: [
            Expanded(
              child: InkWell(onTap: () {
                setState(() {
                  win();
                  if(b1=="" && cnt==0)
                    {
                      b1=b4;
                      b4="";
                    }
                  else if(b5=="" && cnt==0)
                    {
                      b5=b4;
                      b4="";
                    }
                  else if(b7=="" && cnt==0)
                    {
                      b7=b4;
                      b4="";
                    }
                });
              },
                child: Container(
                  height: 80,
                  margin:EdgeInsets.all(10),
                  color: Colors.black45,
                  child: Center(child: Text(b4,style: TextStyle(fontSize: 20,color: Colors.black,
                      fontWeight: FontWeight.bold),),),
                ),
              ),
            ),
            Expanded(
              child: InkWell(onTap: () {
                setState(() {
                  win();
                  if(b2=="" && cnt==0)
                    {
                      b2=b5;
                      b5="";
                    }
                  else if(b4=="" && cnt==0)
                    {
                      b4=b5;
                      b5="";
                    }
                  else if(b6=="" && cnt==0)
                    {
                      b6=b5;
                      b5="";
                    }
                  else if(b8=="" && cnt==0)
                    {
                      b8=b5;
                      b5="";
                    }
                });
              },
                child: Container(
                  height: 80,
                  margin:EdgeInsets.all(10),
                  color: Colors.black45,
                  child: Center(child: Text(b5,style: TextStyle(fontSize: 20,color: Colors.black),),),
                ),
              ),
            ),
            Expanded(
              child: InkWell(onTap: () {
                setState(() {
                  win();
                 if(b3=="" && cnt==0)
                   {
                     b3=b6;
                     b6="";
                   }
                 else if(b5=="" && cnt==0)
                   {
                     b5=b6;
                     b6="";
                   }
                 else if(b9=="" && cnt==0)
                   {
                     b9=b6;
                     b6="";
                   }
                });
              },
                child: Container(
                  height: 80,
                  margin:EdgeInsets.all(10),
                  color: Colors.black45,
                  child: Center(child: Text(b6,style: TextStyle(fontSize: 20,color: Colors.black),),),
                ),
              ),
            ),
          ],),
          Row(children: [
            Expanded(
              child: InkWell(onTap: () {
                setState(() {
                  win();
                  if(b4=="" && cnt==0)
                    {
                      b4=b7;
                      b7="";
                    }
                  else if(b8=="" && cnt==0)
                    {
                      b8=b7;
                      b7="";
                    }
                });
              },
                child: Container(
                  height: 80,
                  margin:EdgeInsets.all(10),
                  color: Colors.black45,
                  child: Center(child: Text(b7,style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),),
                ),
              ),
            ),
            Expanded(
              child: InkWell(onTap: () {
                setState(() {
                  win();
                  if(b5=="" && cnt==0)
                    {
                      b5=b8;
                      b8="";
                    }
                  else if(b7=="" && cnt==0)
                    {
                      b7=b8;
                      b8="";
                    }
                  else if(b9=="" && cnt==0)
                    {
                      b9=b8;
                      b8="";
                    }
                });
              },
                child: Container(
                  height: 80,
                  margin:EdgeInsets.all(10),
                  color: Colors.black45,
                  child: Center(child: Text(b8,style: TextStyle(fontSize: 20,color: Colors.black),),),
                ),
              ),
            ),
            Expanded(
              child: InkWell(onTap: () {
                setState(() {
                  win();
                  if(b6=="" && cnt==0)
                    {
                      b6=b9;
                      b9="";
                    }
                  else if(b8=="" && cnt==0)
                    {
                      b8=b9;
                      b9="";
                    }
                });
              },
                child: Container(
                  height: 80,
                  margin:EdgeInsets.all(10),
                  color: Colors.black45,
                  child: Center(child: Text(b9,style: TextStyle(fontSize: 20,color: Colors.black),),),
                ),
              ),
            ),
          ],)
        ],),
    ),);
  }
  String b1="";
  String b2="1";
  String b3="2";
  String b4="4";
  String b5="5";
  String b6="3";
  String b7="7";
  String b8="8";
  String b9="6";
  int cnt=0;
  String a="";

  void win()
  {
      setState(() {
        if(b1=="1" && b2=="2" && b3=="3"&& b4=="4" && b5=="5" && b6=="6" && b7=="7" && b8=="8" && b9=="")
          {
              a="you are win";
              cnt=1;
          }
      });
  }
}
