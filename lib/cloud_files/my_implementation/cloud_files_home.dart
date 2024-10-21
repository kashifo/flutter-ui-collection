import 'package:flutter/material.dart';

class CloudFilesHome extends StatefulWidget {
  const CloudFilesHome({super.key});

  @override
  State<CloudFilesHome> createState() => _CloudFilesHomeState();
}

class _CloudFilesHomeState extends State<CloudFilesHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          alignment: Alignment.bottomCenter,
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(color: Colors.blue.shade800),
          height: 150,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Secret Cloud',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  Text(
                    'Encrypted Google Drive',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(.10),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: IconButton(onPressed: () {}, icon: Icon(Icons.search, color: Colors.white,)),
                  ),
                  SizedBox(width: 6,),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(.10),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: IconButton(onPressed: () {}, icon: Icon(Icons.notifications_none, color: Colors.white,)),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    ));
  }
}
