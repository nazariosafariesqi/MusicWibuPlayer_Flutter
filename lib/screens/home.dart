import 'package:final_project/models/category.dart';
import 'package:final_project/models/music.dart';
import 'package:final_project/services/category_operations.dart';
import 'package:final_project/services/music_operations.dart';
import 'package:final_project/services/popular_operations.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final Function _miniPlayer;
  const Home(this._miniPlayer, {Key? key}) : super(key: key);

  //membuat category
  Widget createCategory(Category category) {
    return Container(
        color: Colors.blueGrey.shade400,
        child: Row(
          children: [
            Image.network(category.imageURL, fit: BoxFit.cover),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                category.name,
                style: const TextStyle(color: Colors.white),
              ),
            )
          ],
        ));
  }

  //membuat daftar-daftar category  yang isinya gambar dan teks yang sudah diatur di class category serta category_operations
  List<Widget> createListOfCategories() {
    //Mendapatkan data
    List<Category> categoryList = CategoryOperations.getCategories();
    //Mengganti data ke Widget menggunakan fungsi map
    List<Widget> categories = categoryList
        .map((Category category) => createCategory(category))
        .toList();
    return categories;
  }

  Widget createMusic(Music music) {
    return Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 200,
              width: 200,
              child: InkWell(
                onTap: () {
                  _miniPlayer(music, stop: true);
                },
                child: Image.network(
                  music.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text(
              music.name,
              style: const TextStyle(color: Colors.white),
            ),
            Text(
              music.desc,
              style: const TextStyle(color: Colors.white),
            ),
          ],
        ));
  }

  Widget createMusicList(String label) {
    List<Music> musicList = MusicOperation.getMusic();
    return Column(
      children: [
        Text(
          label,
          style: const TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 300,
          child: ListView.builder(
            padding: const EdgeInsets.all(3),
            scrollDirection: Axis.horizontal,
            itemCount: musicList.length,
            itemBuilder: (ctx, index) {
              return createMusic(musicList[index]);
            },
          ),
        )
      ],
    );
  }

  Widget createPopularList(String label) {
    List<Music> popularList = PopularOperation.getMusic();
    return Column(
      children: [
        Text(
          label,
          style: const TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 300,
          child: ListView.builder(
            padding: const EdgeInsets.all(3),
            scrollDirection: Axis.horizontal,
            itemCount: popularList.length,
            itemBuilder: (ctx, index) {
              return createMusic(popularList[index]);
            },
          ),
        )
      ],
    );
  }

  Widget popularMusicList(String label) {
    List<Music> musicList = PopularOperation.getMusic();
    return Column(
      children: [
        Text(
          label,
          style: const TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 300,
          child: ListView.builder(
            padding: const EdgeInsets.all(3),
            scrollDirection: Axis.horizontal,
            itemCount: musicList.length,
            itemBuilder: (ctx, index) {
              return createMusic(musicList[index]);
            },
          ),
        )
      ],
    );
  }

  //Membuat Grid
  Widget createGrid() {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 280,
      child: GridView.count(
        //Memberikan rasio luas 5 : 2
        childAspectRatio: 5 / 2,
        //Memberikan jarak tengah antar objek category
        crossAxisSpacing: 10,
        //Memberikan jarak atas-bawah antar objek category
        mainAxisSpacing: 10,
        children: createListOfCategories(),
        crossAxisCount: 2,
      ),
    );
  }

  //Membuat AppBar
  Widget createAppBar(String message) {
    return AppBar(
      //Menambahkan warna ke latar belakang namun transparan
      backgroundColor: Colors.transparent,
      //Mengatur elevasi shadow, semakin besar nilai, shadow-nya semakin jauh atau mengabur.
      elevation: 0.0,
      //Membuat judul berupa Teks yang bisa dimodifikasi (message)
      title: Text(message),
      //Membuat action button
      actions: const [
        //Memberikan padding kanan sebesar 20
        Padding(
            padding: EdgeInsets.only(right: 20),
            //Membuat icon settings
            child: Icon(Icons.settings))
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
          child: Container(
        //Membuat kolom yang isinya adalah App bar
        child: Column(
          children: [
            //Memasukkan App bar ke dalam Kolom dan mengisi "message"-nya = Selamat Datang
            createAppBar('Selamat Datang'),
            const SizedBox(
              height: 5,
            ),
            createGrid(),
            createMusicList("Dibuat Untukmu"),
            createPopularList("Popular Music")
          ],
        ),
        //Memberikan dekorasi pada sebuah kotak
        decoration: BoxDecoration(
            //Memberikan gradasi linier pada Box
            gradient: LinearGradient(
                colors:
                    //Gradasi warna 1 = Blue Gray dengan shade 300
                    //Gradasi warna 2 = Hitam tanpa shade
                    [Colors.blueGrey.shade300, Colors.black],
                //Warna 1 ditaruh di ujung kiri atas (topLeft)
                //Warna 2 ditaruh di ujung kanan bawah (bottomRight)
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                //0.1 = sebagian satu dari empat bagian diwarnai Warna 1 (Blue Grey)
                //0.3 = sebagian tiga dari empat bagian diwarnai Warna 2 (Black)
                stops: const [0.1, 0.3])),
      )),
    );
  }
}
