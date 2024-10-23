import 'package:flutter/material.dart';
import 'package:flutter_ui_collection/cloud_files/my_implementation/my_cloud_files.dart';
import 'package:flutter_ui_collection/cloud_files/project_page.dart';
import 'package:flutter_ui_collection/cloud_files/team_folder_page.dart';
import 'package:flutter_ui_collection/clubapp/clubapp_original.dart';
import 'package:flutter_ui_collection/clubapp/my_implementation/my_clubapp_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.blue, primary: Colors.indigo),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: HomeGrid(),
    );
  }
}

class HomeGrid extends StatelessWidget {
  HomeGrid({super.key});

  final List<String> imageUrls = [
    'screenshots/cloud_files_1.png',
    'screenshots/my_cloud_files.png',
    'screenshots/cloud_files_2.png',
    'screenshots/empty.png',
    'screenshots/clubapp_original.png',
    'screenshots/my_clubapp_home.png',
  ];

/*  final List<Widget> widgetList = [
    TeamFolderPage(),
    MyCloudFiles(),
    ProjectPage(folderName: 'Music'),
    ProjectPage(folderName: 'Music'),
    ClubAppOriginal(),
    MyClubAppHome(),
  ];*/

  gotoScreen(BuildContext context, int index){

    Navigator.of(context).push(MaterialPageRoute<void>(
      builder: (BuildContext context) {

        switch(index){
          case 0: return TeamFolderPage(); break;
          case 1: return MyCloudFiles(); break;
          case 2: return ProjectPage(folderName: 'Music',); break;
          case 4: return ClubAppOriginal(); break;
          case 5: return MyClubAppHome(); break;

          default: return MyClubAppHome();
        }

      },
    ));

  }

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 16 / 9,
          mainAxisExtent: screenWidth,
          mainAxisSpacing: 1,
          crossAxisSpacing: 1,
        ),
        itemCount: imageUrls.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: (){
              gotoScreen(context, index);
            },
            child: ClipRRect(
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.asset(
                  imageUrls[index],
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
