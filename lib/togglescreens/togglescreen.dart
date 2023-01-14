import 'package:flutter/material.dart';
class ToggleScreen extends StatefulWidget {
  String title;
  ToggleScreen({required this.title});

  @override
  State<ToggleScreen> createState() => _ToggleScreenState();
}

class _ToggleScreenState extends State<ToggleScreen> {
  var isSelected1 =[false, false,false];
  var isSelected2 =[false, false, false];
  var isSelected3 =[false, false, true];

  int   itemIndex= 0;
  String pickedItem="";

  void getPickedItem(){
    if(itemIndex== 0){
      setState(() {
        pickedItem="AC";
      });
    }
    else if(itemIndex == 1){
      setState(() {
        pickedItem="Phone";
      });
    }
    else if(itemIndex == 2){
      setState(() {
        pickedItem="cake";
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Text("Multi-select", textScaleFactor: 2,),
            Container(
                width:265,
              child: ToggleButtons(children: [
                Icon(Icons.ac_unit),
                Icon(Icons.call),
                Icon(Icons.cake),

              ],
                  onPressed: (int index){
                   setState(() {
                     isSelected1[index] = !isSelected1[index];
                   });
                  },
                  isSelected: isSelected1),
            ),

            SizedBox(height: 20,),
            Text("Single-select", textScaleFactor: 2,),
            Container(
              width: 265,
              child: ToggleButtons(children: [
                Icon(Icons.ac_unit),
                Icon(Icons.call),
                Icon(Icons.cake),

              ],
                  onPressed: (int index){

                   setState(() {
                     for(int indexbtn=0; indexbtn<isSelected2.length; indexbtn++){
                       if(indexbtn== index){
                         isSelected2[indexbtn]= true;
                       }
                       else{
                         isSelected2[indexbtn]=false;
                       }
                     }
                   });

                   setState(() {
                     itemIndex=index;
                   });

                  },
                  isSelected: isSelected2),
            ),

            SizedBox(
              height: 300,
            ),

            ElevatedButton(onPressed: (){
              getPickedItem();
            }, child: Text("Print")),

            Text("You picked $pickedItem")
          ],

        ),
      ),
    );
  }
}
