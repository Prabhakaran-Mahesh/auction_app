import 'package:auction_app/models/Player.dart';
import 'package:flutter/material.dart';

class PlayerDetail extends StatelessWidget {
  const PlayerDetail({Key? key}) : super(key: key);

  String bidCalculate(int avg, int highsScore, int matches){
    double money;
    if(matches>10 && avg > 50){
      money = 2;
    }
    else if(matches>10 && avg>30){
      money = 1.5;
    }
    else{
      if(avg > 50){
        money = 1.5;
      }
      else{hmoney = 1;
      }
    }
    return money.toString() + "C";
  }


  @override
  Widget build(BuildContext context) {
    Player player = PlayerList().playerList[1];
    return SafeArea(

      child: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network("https://www.insidesport.in/wp-content/uploads/2021/05/1-101-696x465-1-7.jpg?w=696&h=1&crop=1"),
                SizedBox(
                  height: 10.0,
                ), f                Text(
                  player.name,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 60.0,
                  ),
                ),
                Text(
                  "Right-Arm Batsman",
                  style: TextStyle(color: Colors.grey, fontSize: 20.0),
                ),
                SizedBox(height: 50.0,),
                //Center(child: Text("Stats", style: TextStyle(color: Colors.white, fontSize: 18.0),)),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 70.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Age  ", style: TextStyle(color: Colors.white, fontSize: 18.0),),
                          Text(player.age.toString(), style: TextStyle(color: Colors.white, fontSize: 18.0),),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Batting Average ", style: TextStyle(color: Colors.white, fontSize: 18.0),),
                          Text(player.average.toString(), style: TextStyle(color: Colors.white, fontSize: 18.0),),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Matches Played   ", style: TextStyle(color: Colors.white, fontSize: 18.0),),
                          Text(player.matches.toString(), style: TextStyle(color: Colors.white, fontSize: 18.0),),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Highest Score ", style: TextStyle(color: Colors.white, fontSize: 18.0),),
                          Text(player.best.toString(), style: TextStyle(color: Colors.white, fontSize: 18.0),),
                        ],
                      ),
                      SizedBox(height: 30.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Initial Bid  ", style: TextStyle(color: Colors.white, fontSize: 18.0),),
                          Text(bidCalculate(player.average, player.best, player.matches), style: TextStyle(color: Colors.white, fontSize: 18.0),),
                        ],
                      )
                    ],
                  ),
                )
              ],

            ),
          ),
        ),
        floatingActionButton: ElevatedButton(
          child: SizedBox(
            width: 100.0,
            height: 20.0,
            child: Center(child: Text("Change Bid")),
          ),
          onPressed: (){},
        )
      ),
    );
  }
}
