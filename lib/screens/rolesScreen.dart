import 'package:auction_app/screens/adminScreen.dart';
import 'package:auction_app/screens/playerScreen.dart';
import 'package:flutter/material.dart';

import 'bidderScreen.dart';

class RolesScreen extends StatelessWidget {
  const RolesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          child: Column(
            children: [
              Image.asset("assets/bg.jpeg"),
              const SizedBox(height: 10.0,),
              const Text("UserLogin", style: TextStyle(color: Colors.white, fontSize: 32.0, fontWeight: FontWeight.bold),),
              SizedBox(height: 60.0,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 2.0),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.cyanAccent),
                  ),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const AdminScreen()),
                    );

                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:  const [
                      Text('Admin Login', style: TextStyle(color: Colors.black),),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 2.0),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.cyanAccent),
                  ),
                  onPressed: (){
                    //Navigator.pushNamed(context, PhoneAuthScreen.id);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const BidderScreen()),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:  const [
                      Text('Bidder Login', style: TextStyle(color: Colors.black),),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 2.0),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.cyanAccent),
                  ),
                  onPressed: (){
                    //Navigator.pushNamed(context, PhoneAuthScreen.id);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const PlayerDetail()),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:  const [
                      Text('Player Login', style: TextStyle(color: Colors.black),),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
