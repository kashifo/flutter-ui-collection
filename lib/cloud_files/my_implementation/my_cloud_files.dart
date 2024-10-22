import 'package:flutter/material.dart';

class MyCloudFiles extends StatefulWidget {
  const MyCloudFiles({super.key});

  @override
  State<MyCloudFiles> createState() => _MyCloudFilesState();
}

class _MyCloudFilesState extends State<MyCloudFiles> {
  double scrWidth = 0;

  @override
  Widget build(BuildContext context) {
    scrWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Column(children: [
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
                children: const [
                  Text(
                    'Cloud Drive',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  Text(
                    'Safest way to store your files',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(.10),
                        borderRadius: BorderRadius.circular(10)),
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.search,
                          color: Colors.white,
                        )),
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(.10),
                        borderRadius: BorderRadius.circular(10)),
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.notifications_none,
                          color: Colors.white,
                        )),
                  ),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView(
              padding: EdgeInsets.all(16),
              scrollDirection: Axis.vertical,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: TextSpan(children: const [
                        TextSpan(
                            text: 'Storage ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 16,
                            )),
                        TextSpan(
                            text: '54/128GB',
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                                fontSize: 14)),
                      ]),
                    ),
                    Text(
                      'Upgrade',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    categoryDisplay('PICS', Colors.blue, .30),
                    SizedBox(
                      width: 2,
                    ),
                    categoryDisplay('MUSIC', Colors.red, .20),
                    SizedBox(
                      width: 2,
                    ),
                    categoryDisplay('VIDEOS', Colors.orange, .20),
                    SizedBox(
                      width: 2,
                    ),
                    categoryDisplay('FREE', Colors.grey, .30),
                    SizedBox(
                      width: 2,
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Divider(
                  thickness: 1,
                  color: Colors.grey.shade400,
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  'Recently Updated',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      recentlyUpdated('desktop', 'sketch'),
                      SizedBox(width: 8),
                      recentlyUpdated('mobile', 'sketch'),
                      SizedBox(width: 8),
                      recentlyUpdated('tablet', 'sketch'),
                      SizedBox(width: 8),
                      recentlyUpdated('console', 'sketch'),
                      SizedBox(width: 8),
                      recentlyUpdated('web', 'sketch'),
                      SizedBox(width: 8),
                    ],
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Divider(
                  thickness: 1,
                  color: Colors.grey.shade400,
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Projects',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'Create New',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                projectFiles('Pictures'),
                SizedBox(height: 8),
                projectFiles('Documents'),
                SizedBox(height: 8),
                projectFiles('Videos'),
                SizedBox(height: 8),
                projectFiles('Music'),
                SizedBox(height: 8),
                projectFiles('Backups'),
                SizedBox(height: 8),
                projectFiles('Games'),
                SizedBox(height: 8),
              ]),
        ),
      ]),
      //scaffold body
      bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          backgroundColor: Colors.white,
          elevation: 8,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.history), label: 'History'),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_box_rounded), label: 'Add')
          ]),
      floatingActionButton: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: const [
            BoxShadow(color: Colors.white, spreadRadius: 7, blurRadius: 1)
          ],
        ),
        child: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context);
          },
          backgroundColor: Colors.blue.shade800,
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget categoryDisplay(String text, Color color, double size) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          color: color,
          height: 3,
          width: (scrWidth - 40) * size,
        ),
        SizedBox(
          height: 4,
        ),
        Text(
          text,
          style: TextStyle(fontSize: 10, color: Colors.black),
        )
      ],
    );
  }

  Widget recentlyUpdated(String fileName, String type) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(16)),
          padding: EdgeInsets.all(30),
          child: Icon(
            Icons.folder,
            size: 50,
            color: Colors.blue.shade300,
          ),
        ),
        SizedBox(
          height: 8,
        ),
        RichText(
          text: TextSpan(children: [
            TextSpan(
                text: fileName,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                )),
            TextSpan(
                text: '.$type',
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    color: Colors.black87,
                    fontSize: 12)),
          ]),
        )
      ],
    );
  }

  Widget projectFiles(String fileName) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(8),
      ),
      padding: EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(Icons.folder, color: Colors.blue.shade300),
              SizedBox(
                width: 16,
              ),
              Text(
                fileName,
                style: TextStyle(fontSize: 16, color: Colors.black87),
              ),
            ],
          ),
          Icon(Icons.more_vert_rounded, color: Colors.black54),
        ],
      ),
    );
  }
}
