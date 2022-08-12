import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {

  String first = '';
  String second = '';
  String opp = '';
  String total = '';
  bool x = false;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black,
      body:Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        child: Column(
          children: [
            const Spacer(),
            Row(
              children: [
                Flexible(
                  child: Text(
                    first,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
                SizedBox(width: 10,),
                Flexible(
                  child: Text(
                    opp,
                    style: const TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
                SizedBox(width: 10,),
                Flexible(
                  child: Text(
                    second,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children:  [
                Flexible(
                  child: Text(
                    total,
                    maxLines: 1,
                    style: const TextStyle(color: Colors.white, fontSize: 80),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:  [
                InkWell(
                  onTap: (){
                    setState(() {
                      first = '';
                      second = '';
                      opp = '';
                      total = '';
                    });

                  },
                  child: const CircleAvatar(
                    backgroundColor: Colors.white60,
                    radius: 40,
                    child: Text(
                      "AC",
                      style: TextStyle(fontSize: 30, color: Colors.black),
                    ),
                  ),
                ),
                CircleAvatar(
                  backgroundColor: Colors.white60,
                  radius: 40,
                  child: Text(
                    "+/-",
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                ),
                CircleAvatar(
                  backgroundColor: Colors.white60,
                  radius: 40,
                  child: Text(
                    "%",
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                ),
                InkWell(
                  onTap: (){
                    setState(() {
                      if(total != ''){
                        second = '';
                        first = total;
                        opp = '/';
                        total = '';
                      }
                      opp = '/';
                    });
                  },
                  child: CircleAvatar(
                    backgroundColor: Colors.orangeAccent,
                    radius: 40,
                    child: Text(
                      "/",
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: ()
                  {
                    setState(() {
                      if(first == '')
                      {
                        first = "7";
                      }else if(opp == ''){
                        first = '${first}7';
                      }else{
                        second = '${second}7';
                      }

                    });

                  },
                  child: CircleAvatar(
                    backgroundColor: Colors.grey[900],
                    radius: 40,
                    child: const Text(
                      "7",
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  ),
                ),
                InkWell(
                  onTap: ()
                  {
                    setState(() {
                      if(first == '')
                      {
                        first = "8";
                      }else if(opp == ''){
                        first = '${first}8';
                      }else{
                        second = '${second}8';
                      }
                    });
                  },
                  child: CircleAvatar(
                    backgroundColor: Colors.grey[900],
                    radius: 40,
                    child: const Text(
                      "8",
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  ),
                ),
                InkWell(
                  onTap: ()
                  {
                    setState(() {
                      if(first == '')
                      {
                        first = "9";
                      }else if(opp == ''){
                        first = '${first}9';
                      }else{
                        second = '${second}9';
                      }
                    });
                  },
                  child: CircleAvatar(
                    backgroundColor: Colors.grey[900],
                    radius: 40,
                    child: const Text(
                      "9",
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    setState(() {
                      if(total != ''){
                        second = '';
                        first = total;
                        opp = 'x';
                        total = '';
                      }
                      opp = 'x';
                    });
                  },
                  child: const CircleAvatar(
                    backgroundColor: Colors.orangeAccent,
                    radius: 40,
                    child: Text(
                      "x",
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: ()
                  {
                    setState(() {
                      if(first == '')
                      {
                        first = "4";
                      }else if(opp == ''){
                        first = '${first}4';
                      }else{
                        second = '${second}4';
                      }
                    });
                  },
                  child: CircleAvatar(
                    backgroundColor: Colors.grey[900],
                    radius: 40,
                    child: const Text(
                      "4",
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    setState(() {
                      if(first == '')
                      {
                        first = "5";
                      }else if(opp == ''){
                        first = '${first}5';
                      }else{
                        second = '${second}5';
                      }
                    });
                  },
                  child: CircleAvatar(
                    backgroundColor: Colors.grey[900],
                    radius: 40,
                    child: const Text(
                      "5",
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    setState(() {
                      if(first == '')
                      {
                        first = "6";
                      }else if(opp == ''){
                        first = '${first}6';
                      }else{
                        second = '${second}6';
                      }
                    });
                  },
                  child: CircleAvatar(
                    backgroundColor: Colors.grey[900],
                    radius: 40,
                    child: const Text(
                      "6",
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    setState(() {
                      if(total != ''){
                        second = '';
                        first = total;
                        opp = '-';
                        total = '';
                      }
                      opp = '-';
                    });
                  },
                  child: const CircleAvatar(
                    backgroundColor: Colors.orangeAccent,
                    radius: 40,
                    child: Text(
                      "-",
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: (){
                    setState(() {
                      if(first == '')
                      {
                        first = "1";
                      }else if(opp == ''){
                        first = '${first}1';
                      }else{
                        second = '${second}1';
                      }
                    });
                  },
                  child: CircleAvatar(
                    backgroundColor: Colors.grey[900],
                    radius: 40,
                    child: const Text(
                      "1",
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    setState(() {
                      if(first == '')
                      {
                        first = "2";
                      }else if(opp == ''){
                        first = '${first}2';
                      }else{
                        second = '${second}2';
                      }
                    });
                  },
                  child: CircleAvatar(
                    backgroundColor: Colors.grey[900],
                    radius: 40,
                    child: const Text(
                      "2",
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    setState(() {
                      if(first == '')
                      {
                        first = "3";
                      }else if(opp == ''){
                        first = '${first}3';
                      }else{
                        second = '${second}3';
                      }
                    });
                  },
                  child: CircleAvatar(
                    backgroundColor: Colors.grey[900],
                    radius: 40,
                    child: const Text(
                      "3",
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    setState(() {
                      x = false;
                      print(x);
                      if(total != ''){
                        first = total;
                        opp = '+';
                        second = '';
                        total = '';
                      }
                      opp = '+';
                    });
                  },
                  child: const CircleAvatar(
                    backgroundColor: Colors.orangeAccent,
                    radius: 40,
                    child: Text(
                      "+",
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  flex: 2,
                  child: InkWell(
                    onTap: (){
                      setState(() {
                        if(first == '')
                        {
                          first = "0";
                        }else if(opp == ''){
                          first = '${first}0';
                        }else{
                          second = '${second}0';
                        }
                      });
                    },
                    child: Container(
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.grey[900],
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(top: 12, left: 20),
                        child: Text(
                          "0",
                          style: TextStyle(fontSize: 40, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: (){
                      setState(() {

                        if(x == false)
                        {
                          x = true;
                          print("x = $x");
                          if(opp == '')
                          {
                            first = '${first}.';

                          }else{
                            second = '${second}.';
                          }
                        }else{
                          if(opp == '')
                          {
                            first = '${first}';

                          }else{
                            second = '${second}';
                          }
                        }

                      });
                    },
                    child: CircleAvatar(
                      backgroundColor: Colors.grey[900],
                      radius: 40,
                      child: const Text(
                        ".",
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: (){
                      setState(() {
                        switch (opp){
                          case '+':
                            double result = double.parse(first) + double.parse(second);
                            total = result.toString();
                            break;
                          case '-':
                            double result = double.parse(first) - double.parse(second);
                            total = result.toString();
                            break;
                          case 'x':
                            double result = double.parse(first) * double.parse(second);
                            total = result.toString();
                            break;
                          case '/':
                            double result = double.parse(first) / double.parse(second);
                            total = result.toString();
                            break;
                        }
                      });
                    },
                    child: const CircleAvatar(
                      backgroundColor: Colors.orangeAccent,
                      radius: 40,
                      child: Text(
                        "=",
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

