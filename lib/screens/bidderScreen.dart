import 'package:auction_app/models/Player.dart';
import 'package:flutter/material.dart';

class BidderScreen extends StatefulWidget {
  const BidderScreen({Key? key}) : super(key: key);

  @override
  State<BidderScreen> createState() => _BidderScreenState();
}

class _BidderScreenState extends State<BidderScreen> {

  String bidPriceCalculate(int avg, int highsScore, int matches){
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
      else{
        money = 1;
      }
    }
    return "Initial Bid : " + money.toString() + "C";
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 2.0,
        title: const Text("Bidder Screen"),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 40.0,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.white,
              ),
              child: Row(
                children: const [
                  SizedBox(width: 20.0,),
                  Icon(Icons.search, color: Colors.black,size: 28.0,),
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: SizedBox(
                        width: 330.0,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Search",
                          ),
                        ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            height: 40.0,
            //color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(onPressed: (){}, child: SizedBox(width: 120.0,child: Center(child: Text("Your Team")))),
                  Row(
                    children: [
                      Icon(Icons.wallet_membership, color: Colors.green, size: 26.0,),
                      Text(" 99C", style: TextStyle(color: Colors.green, fontSize: 18.0),)
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.70,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              itemCount: PlayerList().playerList.length,
                itemBuilder: (_, index){
              Player player = PlayerList().playerList[index];
              return Padding(
                padding: const EdgeInsets.all(5.0),
                child: ListTile(
                  tileColor: index%3==0 ? Colors.green.shade900 : Colors.grey.shade900,
                  title: Text(player.name, style: TextStyle(color: Colors.white),),
                  subtitle: Text(bidPriceCalculate(player.average, player.best, player.matches), style: TextStyle(color: Colors.grey),),
                  trailing: IconButton(
                    icon: Icon(Icons.add, color: Colors.red,),
                    onPressed: (){

                    },
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
