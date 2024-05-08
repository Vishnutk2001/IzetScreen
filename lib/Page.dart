import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  bool _isDarkModeEnabled = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back,color: Colors.black),
          title: Text("Settings",style: TextStyle(fontSize: 28,color: Colors.black87,fontWeight: FontWeight.bold),),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 30,),
              Center(
                child: Container(
                  height: 150,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Color(0xffffab40),
                    borderRadius: BorderRadius.circular(18.0),
                    border: Border.all(color: Color(0xffffab40))
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 40,top: 27),
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage("assets/person.jpg"),
                              radius: 45,
                            ),
                            SizedBox(width: 20,),
                            Text("Vishnu T.K",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 25),),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          SizedBox(height: 30,),
          Container(
            height: 280,
            width: 350,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18.0),
                border: Border.all(color: Colors.black12)
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(color: Colors.brown),
                        image: DecorationImage(
                          image: AssetImage("assets/appearance.jpg")
                        )
                      ),
                    ),
                    title: Text("Appearance",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black87),),
                    subtitle: Text("Make Ziar'App yours",style: TextStyle(fontSize: 14,color: Colors.black87),),
                    trailing: Icon(Icons.arrow_forward_ios,color: Colors.black87,),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(color: Colors.brown),
                          image: DecorationImage(
                              image: AssetImage("assets/print.jpg")
                          )
                      ),
                    ),
                    title: Text("Privacy",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black87),),
                    subtitle: Text("Lock Ziar'App to improve your privacy",style: TextStyle(fontSize: 14,color: Colors.black87),),
                    trailing: Icon(Icons.arrow_forward_ios,color: Colors.black87,),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(color: Colors.brown),
                          image: DecorationImage(
                              image: AssetImage("assets/mode.png")
                          )
                      ),
                    ),
                    title: Text("Dark mode",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black87),),
                    subtitle: Text("Automatic",style: TextStyle(fontSize: 14,color: Colors.black87),),
                    trailing: Switch(
                      value: _isDarkModeEnabled,
                      onChanged: (value) {
                        setState(() {
                          _isDarkModeEnabled = value;
                        });
                      },
                      activeColor: Colors.blue,
                      inactiveTrackColor: Colors.black38,
                    ),
                  ),
                ),
              ],
            ),
             ),
              SizedBox(height: 20,),
              Container(
                height: 80,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18.0),
                  border: Border.all(color: Colors.black12),
                ),
                child: ListTile(
                  leading: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(color: Colors.brown),
                        image: DecorationImage(
                            image: AssetImage("assets/about.jpg")
                        )
                    ),
                  ),
                  title: Text("About",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black87),),
                  subtitle: Text("Learn more about Ziar'App",style: TextStyle(fontSize: 14,color: Colors.black87),),
                  trailing: Icon(Icons.arrow_forward_ios,color: Colors.black87,),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                height: 80,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18.0),
                  border: Border.all(color: Colors.black12),
                ),
                child: ListTile(
                  leading: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(color: Colors.brown),
                        image: DecorationImage(
                            image: AssetImage("assets/message.png")
                        )
                    ),
                  ),
                  title: Text("Send Feedback",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black87),),
                  subtitle: Text("Let us know how we can make Ziar'App",style: TextStyle(fontSize: 14,color: Colors.black87),),
                  trailing: Icon(Icons.arrow_forward_ios,color: Colors.black87,),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Account",style: TextStyle(fontSize: 24,color: Colors.black,fontWeight: FontWeight.bold),),
                  ),
                ],
              ),
              Container(
                height: 150,
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18.0),
                    border: Border.all(color: Colors.black12)
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        leading: Icon(Icons.logout),
                        title: Text("Sign Out",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black87),),
                        trailing: Icon(Icons.arrow_forward_ios,color: Colors.black87,),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        leading: Icon(Icons.email),
                        title: Text("Change email",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black87),),
                        trailing: Icon(Icons.arrow_forward_ios,color: Colors.black87,),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
