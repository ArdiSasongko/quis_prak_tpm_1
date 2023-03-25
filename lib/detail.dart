import 'package:flutter/material.dart';
import 'package:quiz_prak_tpm/disease_data.dart';

class Detail extends StatelessWidget {
  final Diseases plant;
  const Detail({Key? key, required this.plant}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(plant.name),
      ),
      body: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Image.network(plant.imgUrls)
              ],
            ),
          ),
        Text(
          "Diseases :" + plant.name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
          Text(
            "Plant Name : " + plant.plantName, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Text(
            "Ciri-Ciri : " + plant.nutshell[0], style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Text(
            "Diseases ID :" + plant.id, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Text(
            "Sympton " + plant.symptom, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ],
      )
    );
  }

  Widget textSedang(String text) {
    return Text(
      text,
      style: TextStyle(fontSize: 16,),
    );
  }
}
