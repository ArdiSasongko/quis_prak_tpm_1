import 'package:flutter/material.dart';
import 'package:quiz_prak_tpm/detail.dart';
import 'package:quiz_prak_tpm/disease_data.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Plant Deseases',),
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemCount: listDisease.length,
          itemBuilder: (context, index){
            final Diseases plant = listDisease[index];
            return InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return Detail(plant : plant);
                }));
              },
              child: Card(
                child:
                Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width/3,
                      child: Image.network(plant.imgUrls, height:250,)
                    ),
                    Text(plant.name, style: TextStyle(fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
            );
          }
      ),
    );
  }
}
