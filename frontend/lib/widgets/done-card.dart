import 'package:flutter/material.dart';


void main(){
  runApp(
    MaterialApp(
      home: Scaffold(
        body: DoneCard(child: Text('data'),),
      ),
    )
  );
  
}

class DoneCard extends StatelessWidget{
  DoneCard({super.key, required this.child});
  Widget? child;
  
  
   @override
  Widget build(BuildContext context){
     return Stack(
       children: [
         Card(
           surfaceTintColor: Colors.indigo,
           shadowColor: Colors.cyanAccent,
           elevation: 10,
           color: Colors.white,
           child: child,
         ),
         const Align(
           alignment: Alignment(-1.02, -1.1),
           child: Icon(
             size: 30,
             Icons.check_circle,
             color: Color(0xff019e49),
           ),
         ),
       ],
     );
   }
}