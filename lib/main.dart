import 'package:flutter/material.dart';

void main() {
  runApp(const AppKu());
}


class AppKu extends StatelessWidget{
  const AppKu({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Latihan 5',
      theme: ThemeData(
          primarySwatch: Colors.blue
      ),
      home: const FirstScreen(), // Panggil FirstScreen di sini
    );
  }
}

class FirstScreen extends StatelessWidget{
  /*
  Pada kode di atas kita membuat sebuah StatelessWidget bernama FirstScreen, yang merupakan widget tampilan kita. Kemudian di dalam method build kita panggil Scaffold.
   */

  const FirstScreen({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      // ----------------------
      // menambahkan AppBar pada Scaffold.
      /*
      menambahkan parameter appBar pada Scaffold dan menambahkan title pada AppBar tersebut.
      Title di sini tidak hanya spesifik Text saja, melainkan juga dapat diisi dengan widget lainnya seperti TextField untuk kolom pencarian atau yang lainnya.
       */
        appBar: AppBar(
            title: const Text('Halaman Pertama'),
            // -----------------
            //   menambahkan widget-widget actions
            //   menambahkan menu ikon search

            actions: <Widget>[
              IconButton(
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                onPressed: (){},
              )
            ],
            // ------------------------------
            //   menambahkan ikon menu
            /*
          Tidak seperti pada actions, leading hanya dapat menampung satu widget saja. Secara default, leading akan berisi tombol untuk kembali ke halaman sebelumnya (jika tersedia), atau tombol untuk menu drawer (jika kita mengatur untuk drawer pada Scaffold tersebut)
           */
            leading: IconButton(
              icon: const Icon(
                  Icons.menu,
                  color: Colors.white
              ),
              onPressed: (){},
            )
        ),
        // ------------------------
        //   kode untuk menambahkan body.
        /*
        menambahkan body yang di dalamnya kita memanggil widget Center yang akan menampilkan Text "Hello World!".
         */
        body: Container(
          decoration: BoxDecoration(
            color: Colors.red,  // merubah warna Container menjadi merah dengan memberi parameter color pada BoxDecoration.
            // ------------------
            //   shape
            // shape: BoxShape.circle // menambahkan parameter shape dengan nilai BoxShape.circle.  Artinya, bentuk dari Container tersebut akan berbentuk lingkaran. BoxShape memiliki opsi circle atau rectangle.
            // -----------------------
            //   shadow
          //     boxShadow: const[
          //   BoxShadow(
          //     color: Colors.black,
          //     offset: Offset(3,6),
          //     blurRadius: 10
          //   )
          // ]
              /*
              parameter boxShadow merupakan sebuah Array. Di dalamnya terdapat BoxShadow yang artinya pada Container kita dapat memberikan banyak bayangan atau shadow
               */
          // -----------------
          //     border
            border: Border.all(color: Colors.green, width: 3), // menambahkan border pada container
            borderRadius: BorderRadius.circular(10), // membuat border yang tidak berujung lancip cukup tambahkan parameter borderRadius Pada BoxDecoration
          ),
          /*
           menambahkan parameter decoration pada Container lalu beri nilai BoxDecoration.
          ketika menggunakan color pada BoxDecoration, yaitu pastikan tidak memberi parameter color pada Container.
           */

          // color: Colors.blue, // parameter color dengan nilai colors.blue
          // width: 100,
          // height: 100, // mengatur tinggi suatu container
          // padding: const EdgeInsets.all(40), // menambahkan padding pada semua sisi container secara merata dengan nilai 40
          // margin: const EdgeInsets.all(40), // Container akan bergeser lebih ke dalam karena ada jarak antara Container dengan bagian luar Container.
          child: const Text('Hai', style: TextStyle(fontSize: 40)),
        ),
        // Container adalah widget yang digunakan untuk melakukan styling, membuat sebuah shape (bentuk), dan layout pada widget child-nya.
        // -------------------
        //   kode untuk floatingactionbutton
        /*
        FloatingActionButton ini merupakan bagian dari Scaffold yang digunakan untuk menampilkan sebuah tombol aksi yang posisinya floating (melayang dan posisinya tetap).
         */
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: (){},
        )
    );
  }
}