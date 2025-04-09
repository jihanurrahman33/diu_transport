import 'package:flutter/material.dart';

class BusesScreen extends StatelessWidget {
  const BusesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          itemCount: 6,
          shrinkWrap: true,
          primary: false,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 0.7,
              crossAxisCount: 2,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5),
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Color(0xffbccfe0),
                  borderRadius: BorderRadius.circular(20)),
              height: 600,
              width: MediaQuery.of(context).size.width * 0.5,
              child: Column(
                children: [
                  Text('DSC Campus',style: TextStyle(fontSize: 18,color: Colors.black),),
                  Text('<->',style: TextStyle(fontSize: 18,color: Colors.black),),
                  Text('Uttara',style: TextStyle(fontSize: 18,color: Colors.black),),
                  Divider(
                    color: Colors.black,
                  ),
                  Text('Rajanigondha 11',style: TextStyle(fontSize: 18,color: Colors.black),),
                  SizedBox(height: 10,),
                  Text('Start time (To DSC):',style: TextStyle(fontSize: 14,color: Colors.black),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Text('7:20 AM',style: TextStyle(fontSize: 14,color: Colors.green),),
                    Text(' 7:20 AM',style: TextStyle(fontSize: 14,color: Colors.green),),
                    Text(' 7:20 AM',style: TextStyle(fontSize: 14,color: Colors.green),),
                  ],),
                  SizedBox(height: 10,),
                  Text('Departure time (From DSC):',style: TextStyle(fontSize: 14,color: Colors.black),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('7:20 AM',style: TextStyle(fontSize: 14,color: Colors.green),),
                      Text(' 7:20 AM',style: TextStyle(fontSize: 14,color: Colors.green),),
                      Text(' 7:20 AM',style: TextStyle(fontSize: 14,color: Colors.green),),
                    ],),
                  SizedBox(height: 10,),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                          foregroundColor: Colors.white,
                        fixedSize: Size(120, 30)
                      ),
                      onPressed: (){}, child: Text('Buy Ticket'))

                ],
              ),
            );
          }),
    );
  }
}
