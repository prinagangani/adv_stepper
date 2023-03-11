import 'package:adv_stepper/screens/home/provider/home_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  HomeProvider? hptrue;
  HomeProvider? hpfalse;
  @override
  Widget build(BuildContext context) {
    hptrue = Provider.of(context,listen: true);
    hpfalse = Provider.of(context,listen: false);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("Stepper App"),),
        body: Stepper(
          onStepTapped: (value) {
            hpfalse!.jump(value);
          },
          steps: [
            Step(title: Text("Profile Picture"), content: ListTile(title: Text("My Profile"),subtitle: Text("prina ganganii"),),isActive: true),
            Step(title: Text("Name"), content: ListTile(title: Text("Name"),subtitle: Text("Prina A Gangani"),),isActive: true),
            Step(title: Text("Phone"), content: ListTile(title: Text("Phone Number"),subtitle: Text("9824374131"),),isActive: true),
            Step(title: Text("Email"), content: ListTile(title: Text("Email"),subtitle: Text("prinagangani@gmail.com"),),isActive: true),
            Step(title: Text("DOB"), content: ListTile(title: Text("Date of Birth"),subtitle: Text("10-11-2004"),),isActive: true),
            Step(title: Text("Gender"), content: ListTile(title: Text("Gender"),subtitle: Text("Female"),),isActive: true),
            Step(title: Text("Current Location"), content: ListTile(title: Text("Location"),subtitle: Text("B-84,hans society,varachha road,surat"),),isActive: true),
            Step(title: Text("Nationality"), content:ListTile(title: Text("Nationality"),subtitle: Text("Indian"),),isActive: true),
            Step(title: Text("Language"), content: ListTile(title: Text("Language Known"),subtitle: Text("English , Gujarati"),),isActive: true),
            Step(title: Text("Biographies"), content: ListTile(title: Text("Biography"),subtitle: Text("The Law Of Success"),),isActive: true),
          ],
          currentStep: hptrue!.i,
          onStepContinue: (){
            setState(() {
              if(hptrue!.i<9)
                {
                  hptrue!.i++;
                }
            });
          },
          onStepCancel: (){
            setState(() {
              if(hptrue!.i>0)
                {
                  hptrue!.i--;
                }
            });
          },
        ),
      ),
    );
  }
}
