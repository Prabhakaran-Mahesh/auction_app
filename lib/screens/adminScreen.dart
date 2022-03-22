import 'package:auction_app/models/Player.dart';
import 'package:flutter/material.dart';

class AdminScreen extends StatelessWidget {
  const AdminScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 2.0,
        title: Text("Admin Screen"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20.0,
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
            height: 20.0,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.75,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              itemCount: PlayerList().playerList.length,
                itemBuilder: (_, index){
              Player player = PlayerList().playerList[index];
              return Padding(
                padding: const EdgeInsets.all(5.0),
                child: ListTile(
                  tileColor: Colors.grey.shade900,
                  title: Text(player.name, style: TextStyle(color: Colors.white),),
                  subtitle: Text(
                      "Age : " + player.age.toString()+ "   Mail : " + player.email, style: TextStyle(color: Colors.grey) ),
                  trailing: IconButton(
                    icon: Icon(Icons.delete, color: Colors.red,),
                    onPressed: (){},
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
