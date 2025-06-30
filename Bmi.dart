import 'package:flutter/material.dart';


class bmi extends StatefulWidget {
  const bmi({super.key});

  @override
  State<bmi> createState() => _bmiState();
}

class _bmiState extends State<bmi> {

 final TextEditingController heightcontroller = TextEditingController();
 final TextEditingController weightcontroller = TextEditingController();

 String bmiResult = "";
 String bmiCategory = "";


  bmh(){

    double height = double.parse(heightcontroller.text);
    double weight = double.parse(weightcontroller.text);



   if(height == null || weight == null)
    {
      setState(() {
          bmiResult = ' Invalid Output';
          bmiCategory = "";
      });
      return;
    }
    double bmi = weight / ((height / 100) * (height / 100));

    String category;

     if (bmi < 18.5)
    {
      category = 'underweight';

    }
    else if(bmi >= 18.5 && bmi < 30.5)
    {
      category = 'normal weight';

    }
    else if (bmi >= 30.5 && bmi < 70)
      {
        category = 'Over weight';

      }
    else {
      category = "obese";
    }
    showDialog(context: context, builder: (BuildContext) {

      return AlertDialog(
        actions: [
          Column(
            children: [
              Center(child: Text("Bmi Result")),
            ],
          ),
          Center(child: Text("$category")),
        ],
      );
    }
    );

  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
      ),
      body: Column(
        children: [
          SizedBox(height: 50,),
          TextFormField(
            controller: heightcontroller,
            decoration: InputDecoration(
              labelText: "Enter Height",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 20,),
          TextFormField(
            controller: weightcontroller,
            decoration: InputDecoration(
              labelText: "Enter Weight",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 50,),
          ElevatedButton(onPressed: (bmh), child: Text("Result")),
        ],
      ),

    );
  }
}
