import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHome(),
    );
  }
}
class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

List<String> img = [
  'https://in.canon/media/image/2023/02/06/c83adfc2fcaf473f9935b6962f114b45_EOS+R50+Black+RF-S18-45mm.png',
  'https://ph.canon/media/image/2023/02/06/aa40086891434857aa3e5c6465f427a0_EOS+R50+Black+Front+Slant+Left.png',
  'https://assets.stickpng.com/images/580b57fbd9996e24bc43bfe9.png',
  'https://asia.canon/media/image/2023/05/19/b89bed4e21e540f985dedebe80166def_EOS+R100+RF-S18-45mm+Front+Slant.png',
  'https://assets.stickpng.com/images/580b57fbd9996e24bc43bfe9.png',
  'https://pngimg.com/d/photo_camera_PNG101601.png',
  'https://in.canon/media/image/2023/02/06/c83adfc2fcaf473f9935b6962f114b45_EOS+R50+Black+RF-S18-45mm.png',
  'https://ph.canon/media/image/2023/02/06/aa40086891434857aa3e5c6465f427a0_EOS+R50+Black+Front+Slant+Left.png',
  'https://assets.stickpng.com/images/580b57fbd9996e24bc43bfe9.png',
  'https://asia.canon/media/image/2023/05/19/b89bed4e21e540f985dedebe80166def_EOS+R100+RF-S18-45mm+Front+Slant.png',
  'https://assets.stickpng.com/images/580b57fbd9996e24bc43bfe9.png',
  'https://pngimg.com/d/photo_camera_PNG101601.png',
];

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('News Feed'),
      ),
      body: OrientationBuilder(builder: (context, orientation) {
        return orientation == Orientation.portrait
            ?ListView.builder(
         itemBuilder:(context,index){
              return  Card(
                child: Center(
                  child: Container(
                    color: Colors.grey.shade300,
                    height: 150,
                    width: 150,
                    child: Image.network(img[index],),
                  ),
                ),
              );
        })
            : GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.1,
          crossAxisSpacing: 5
        ), itemBuilder:(context,index){
          return  Card(
            child: Center(
              child: Align(
                alignment: Alignment.topCenter,
                child: Container(
                  color: Colors.grey.shade300,
                  height: 150,
                  width: 150,
                  child: Image.network(img[index],fit: BoxFit.contain,),
                ),
              ),
            ),
          );
        });
      }),
    );
  }
}


