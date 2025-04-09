import 'package:diu_transport/ui/widgets/diu_app_bar.dart';
import 'package:flutter/material.dart';

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView.builder(
          itemCount: 4,
          shrinkWrap: true,
          primary: false,
          itemBuilder: (context, index) {
            return Container(
                margin: EdgeInsets.all(16),
                padding: EdgeInsets.all(16),
                height: MediaQuery.of(context).size.height * 0.5,
                width: double.maxFinite,
                decoration: BoxDecoration(color: Color(0xffbccfe0),borderRadius: BorderRadius.circular(20)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          child: Text('R1'),
                        ),
                        Text('Dhanmondi<>DSC(Regular)'),
                        Icon(Icons.navigation)
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text("Start time(To DSC)"),
                    Row(
                      children: [
                        Chip(label: Text('07:20 AM')),
                        SizedBox(
                          width: 20,
                        ),
                        Chip(label: Text('07:20 AM')),
                        SizedBox(
                          width: 20,
                        ),
                        Chip(label: Text('07:20 AM')),
                      ],
                    ),
                    Text('Departure Time(From DSC)'),
                    Row(
                      children: [
                        Chip(label: Text('07:20 AM')),
                        SizedBox(
                          width: 20,
                        ),
                        Chip(label: Text('07:20 AM')),
                        SizedBox(
                          width: 20,
                        ),
                        Chip(label: Text('07:20 AM')),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Text(
                        'Dhanmondi<>Sohanbag<>Shyamoli Square<>Technical Mor<>Majar Road Gabtoli<>Konabari Bus Stop<>Eastern Housing<>Rupnagar<>Birulia Bus Stand<>Daffodil Smart City')
                  ],
                ));
          }),
    );
  }
}
