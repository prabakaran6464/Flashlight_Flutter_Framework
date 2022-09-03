import 'package:flutter/material.dart';
import 'package:torch/screens/screen_2.dart';
import 'package:torch/utils/height_width.dart';
import 'package:shake/shake.dart';
import 'package:torch_controller/torch_controller.dart';


class Screen_1 extends StatefulWidget {
  const Screen_1({Key? key}) : super(key: key);

  @override
  State<Screen_1> createState() => _Screen_1State();
}
class _Screen_1State extends State<Screen_1> {
  final torchController = TorchController();
    bool on = true;
    bool off = false;

  void initState() {
    super.initState();
    loadinit();
  }

  loadinit(){
    ShakeDetector detector = ShakeDetector.autoStart(
      onPhoneShake: () async{
         await torchController.toggle();
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('Shake!')));
      },
      minimumShakeCount: 1,
      shakeSlopTimeMS: 500,
      shakeCountResetTime: 3000,
      shakeThresholdGravity: 2.7,
    );
  }
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: Container(
          height: Sheight(100, context), width: Swidth(100, context),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.purpleAccent,Colors.tealAccent,Colors.lightBlue],
            ),
          ),
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              on?
              ElevatedButton(onPressed: () {
               torchController.toggle();
               setState((){
                 off = true;
                 on = false;
               });
              }, child: Text("Flash On")):new Container(),
              off?
              ElevatedButton(onPressed: (){
                torchController.toggle();
                setState((){
                  on = true;
                  off = false;
                });
              }, child: Text("Flash off")):new Container(),
              
              Text("or",style: TextStyle(fontSize: 20),),
              Text("Shake flash",style: TextStyle(fontSize: 20),),
            ],
          ),
        ),
      );
    }
  }

