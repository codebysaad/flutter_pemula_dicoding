import 'package:flutter/material.dart';
import 'package:visit_kudus/helper/items.dart';
import 'package:visit_kudus/helper/models.dart';
import 'package:visit_kudus/screens/details.dart';

void main() {
  runApp(new MaterialApp(
    title: 'Home',
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  final GlobalKey _scaffoldKey = GlobalKey();

  List<Models> data = [
    Models(1, Colors.blueAccent, 'Museum Kretek', 'Jl. Getas Pejaten No.155, Getas, Getas Pejaten, Kec. Jati, Kabupaten Kudus, Jawa Tengah 59343', 'https://goo.gl/maps/g1Q1uHPk1ZTWoK3bA', 'assets/images/museum_kudus.jpg', 'Museum Kretek menyimpan 1.195 koleksi mengenai sejarah kretek di Kabupaten Kudus, yuk kepoin', 'Museum ini didirikan atas prakarsa dan diresmikan oleh Soepardjo Roestam, Gubernur Jawa Tengah, pada 3 Oktober 1986. Gagasan ini bermula sewaktu Beliau berkunjung ke Kudus dan menyaksikan potensi kontribusi usaha rokok kretek dalam menggerakkan perekonomian daerah. Museum Kretek didirikan di atas lahan seluas 2,5 ha, dengan pembiayaan dari Persatuan Pengusaha Rokok Kudus (PPRK).'),
    Models(2, Colors.redAccent, 'Menara Kudus', 'Kota', 'https://goo.gl/maps/g1Q1uHPk1ZTWoK3bA', 'assets/images/museum_kudus.jpg', 'Museum Kretek menyimpan 1.195 koleksi mengenai sejarah kretek di Kabupaten Kudus, yuk kepoin', 'Museum ini didirikan atas prakarsa dan diresmikan oleh Soepardjo Roestam, Gubernur Jawa Tengah, pada 3 Oktober 1986. Gagasan ini bermula sewaktu Beliau berkunjung ke Kudus dan menyaksikan potensi kontribusi usaha rokok kretek dalam menggerakkan perekonomian daerah. Museum Kretek didirikan di atas lahan seluas 2,5 ha, dengan pembiayaan dari Persatuan Pengusaha Rokok Kudus (PPRK).'),
    Models(3, Colors.greenAccent, 'Museum Jenang Gusjigang', 'Kota', 'https://goo.gl/maps/g1Q1uHPk1ZTWoK3bA', 'assets/images/museum_kudus.jpg', 'Museum Kretek menyimpan 1.195 koleksi mengenai sejarah kretek di Kabupaten Kudus, yuk kepoin', 'Museum ini didirikan atas prakarsa dan diresmikan oleh Soepardjo Roestam, Gubernur Jawa Tengah, pada 3 Oktober 1986. Gagasan ini bermula sewaktu Beliau berkunjung ke Kudus dan menyaksikan potensi kontribusi usaha rokok kretek dalam menggerakkan perekonomian daerah. Museum Kretek didirikan di atas lahan seluas 2,5 ha, dengan pembiayaan dari Persatuan Pengusaha Rokok Kudus (PPRK).'),
    Models(4, Colors.amberAccent, 'Alun-alun Kudus', 'Kota', 'https://goo.gl/maps/g1Q1uHPk1ZTWoK3bA', 'assets/images/museum_kudus.jpg', 'Museum Kretek menyimpan 1.195 koleksi mengenai sejarah kretek di Kabupaten Kudus, yuk kepoin', 'Museum ini didirikan atas prakarsa dan diresmikan oleh Soepardjo Roestam, Gubernur Jawa Tengah, pada 3 Oktober 1986. Gagasan ini bermula sewaktu Beliau berkunjung ke Kudus dan menyaksikan potensi kontribusi usaha rokok kretek dalam menggerakkan perekonomian daerah. Museum Kretek didirikan di atas lahan seluas 2,5 ha, dengan pembiayaan dari Persatuan Pengusaha Rokok Kudus (PPRK).')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: new Text("Visit Kudus"),
      ),
      body: ListView.builder(
        padding: EdgeInsets.only(bottom: 24),
        itemCount: data.length,
        itemBuilder: (BuildContext context, int index) {
          return Items(index, data[index], (modelData) {
            print(modelData.name + ' Clicked');
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return DetailsPage(modelData);
            }));
            // final snackBar = SnackBar(
            //     content: Text(modelData.name),
            //   duration: const Duration(milliseconds: 800),
            //   backgroundColor: Colors.blueAccent,
            //   action: SnackBarAction(
            //     label: 'OK',
            //     textColor: Colors.redAccent,
            //     onPressed: (){
            //       print('OK Has Clicked');
            //     },
            //   ),
            // );
            // _scaffoldKey.currentState.showSnackBar(snackBar);
          });
        },
      ),
    );
  }
}
