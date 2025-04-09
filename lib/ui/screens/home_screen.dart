import 'package:diu_transport/ui/widgets/custom_container.dart';
import 'package:flutter/material.dart';

import '../utils/app_string.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
              ),
              Text(
                AppString.serviceNeedText,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomContainer(
                    containerText: 'Bus Information',
                    icon: Icons.directions_bus,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CustomContainer(
                    containerText: 'My Bookings',
                    icon: Icons.note_outlined,
                  ),
                ],
              ),
              Center(
                child: ListView.builder(
                    itemCount: 3,
                    shrinkWrap: true,
                    primary: false,
                    itemBuilder: (context,index){
                  return Card(
                    margin: EdgeInsets.all(16),
                    color: Color(0xffEFEFEF),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
        
                        children: [
                          Text(
                            'You Have any ongoing Order',
                            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'Need a Service today?',
                            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                color: Colors.black,
                                fontSize: 18
                                ,fontWeight: FontWeight.normal
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  fixedSize: Size(180, 40),
                                  backgroundColor: Theme.of(context).primaryColor,
                                  foregroundColor: Colors.white),
                              onPressed: () {},
                              child: Text('Check Bookings'))
                        ],
                      ),
                    ),
                  );
                })
              )
            ],
          ),
        ),
      ),
    );
  }
}
