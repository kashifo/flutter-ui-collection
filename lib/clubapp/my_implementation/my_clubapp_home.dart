import 'package:flutter/material.dart';

class MyClubAppHome extends StatefulWidget {
  const MyClubAppHome({super.key});

  @override
  State<MyClubAppHome> createState() => _MyClubAppHomeState();
}

class _MyClubAppHomeState extends State<MyClubAppHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 40, bottom: 20),
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius:
                    const BorderRadius.only(bottomRight: Radius.circular(50))),
            child: const ListTile(
              contentPadding: EdgeInsets.only(left: 30, right: 30),
              title: Text(
                'Welcome',
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
              subtitle: Text(
                'Koder Kashif',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              trailing: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('assets/images/kas_fizz_300.jpg'),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Theme.of(context).primaryColor,
              child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(50))),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: GridView.extent(
                        shrinkWrap: true,
                        mainAxisSpacing: 30,
                        crossAxisSpacing: 30,
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        physics: const ScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        maxCrossAxisExtent: 200,
                        children: [
                          gridItem(context, 'Members', Icons.people, Colors.red),
                          gridItem(context, 'BOD', Icons.people, Colors.blue),
                          gridItem(context, 'Events', Icons.calendar_month, Colors.orange),
                          gridItem(context, 'Albums', Icons.photo_album, Colors.pink),
                          gridItem(context, 'Search', Icons.search, Colors.cyan),
                          gridItem(context, 'Discussions', Icons.chat, Colors.green),
                          gridItem(context, 'Notifications', Icons.add_alert, Colors.blueAccent),
                          gridItem(context, 'Documents', Icons.library_books, Colors.purple),
                          gridItem(context, 'About', Icons.info_outline, Colors.cyan),
                          gridItem(context, 'History', Icons.history, Colors.indigoAccent),
                          gridItem(context, 'Donate', Icons.attach_money, Colors.brown),
                          gridItem(context, 'Feedback', Icons.feedback_outlined, Colors.red),
                        ],
                      ),
                    ),
                  )),
            ),
          )
        ],
      ),
    );
  }
}

InkWell gridItem(BuildContext context, String title, IconData iconData, Color iconColor) {
  return InkWell(
    onTap: (){
      /*Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) {

                switch(title){
                  case 'Human Calculator':
                    return MathBasic(appBarTitle: title);
                  default:
                    return EmptyScreen(appBarTitle: title);
                }

              }
          ));*/
    },
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle,
        boxShadow: [
          BoxShadow(
              offset: const Offset(0, 5),
              blurRadius: 5,
              spreadRadius: 2,
              color: Colors.black.withOpacity(0.2))
        ],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(shape: BoxShape.circle, color: iconColor),
              child: Icon(
                iconData,
                color: Colors.white,
                size: 25,
              )),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.all(2),
            child: Text(
              title, textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.w500),
            ),
          )
        ],
      ),
    ),
  );
}
