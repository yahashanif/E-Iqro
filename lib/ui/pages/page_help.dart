part of 'pages.dart';

class PageHelp extends StatefulWidget {
  @override
  State<PageHelp> createState() => _PageHelpState();
}

class _PageHelpState extends State<PageHelp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: ListView(
          children: [
            SizedBox(
              height: 35,
            ),
            Center(
              child: Column(
                children: [
                  Container(
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [BoxShadow(color: Colors.black)],
                      ),
                      child: Image.asset("assets/android.png")),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    "Penggunaan Aplikasi",
                    style: TextStyle(fontSize: 20, color: Colors.blue),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(35),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "1. Cara Login ?",
                    style: TextStyle(fontSize: 24),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, top: 25),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.circle,
                              size: 10,
                              color: Colors.red,
                            ),
                            SizedBox(
                              width: 300,
                              child: Text(
                                "Pastikan anda memiliki akun yang terdaftar.",
                                style: TextStyle(color: Colors.red),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.circle,
                              size: 10,
                              color: Colors.red,
                            ),
                            SizedBox(
                              width: 300,
                              child: Text(
                                "Pendaftaran  Akun Dapat dilakukan dengan menghubungi Staff Guru Sebagai ADMIN.",
                                style: TextStyle(color: Colors.red),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.circle,
                              size: 10,
                              color: Colors.red,
                            ),
                            SizedBox(
                              width: 300,
                              child: Text(
                                "Masukan No Telephone dan password yang sudah didaftarkan.",
                                style: TextStyle(color: Colors.red),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.circle,
                              size: 10,
                              color: Colors.red,
                            ),
                            SizedBox(
                              width: 300,
                              child: Text(
                                "Jika Terjadi masalah Gagal login, Lupa password, atau permasalahan seputar akses aplikasi Silahkan menghubungi Staff Guru Sebagai ADMIN.",
                                style: TextStyle(color: Colors.red),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "2. Google Meet Akses ",
                    style: TextStyle(fontSize: 24),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, top: 25),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.circle,
                              size: 10,
                              color: Colors.red,
                            ),
                            SizedBox(
                              width: 300,
                              child: Text(
                                "Klik tombol Join Meeting untuk bergabung dalam rapat online.",
                                style: TextStyle(color: Colors.red),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.circle,
                              size: 10,
                              color: Colors.red,
                            ),
                            SizedBox(
                              width: 300,
                              child: Text(
                                "Jika Anda tidak memiliki aplikasi meeting online anda bisa memilih salah satu pilihan browser yang di tampilkan setelah klik tombol Join Meeting.",
                                style: TextStyle(color: Colors.red),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "3. Indikator Penilaian ",
                    style: TextStyle(fontSize: 24),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, top: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.circle,
                              size: 10,
                              color: Colors.red,
                            ),
                            SizedBox(
                              width: 300,
                              child: Text(
                                "Indikator Penilaian menunjukan nilai perkembangan anak yang di berikan oleh guru.",
                                style: TextStyle(color: Colors.red),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.circle,
                              size: 10,
                              color: Colors.red,
                            ),
                            SizedBox(
                              width: 300,
                              child: Text(
                                "Poin 0  Menunjukan Anak Belum berkembang dimana guru harus memberikan contoh dan mendampingi anak dalam melakukan kegiatan.",
                                style: TextStyle(color: Colors.red),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "Contoh",
                          style: TextStyle(color: Colors.orange),
                        ),
                        Center(
                          child: Image.asset("assets/poin0.png"),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.circle,
                              size: 10,
                              color: Colors.red,
                            ),
                            SizedBox(
                              width: 300,
                              child: Text(
                                "Poin 1-2 Menunjukan Anak Mulai Berkembang dimana terkadang guru harus mengingatkan anak dalam melakukan kegiatan.",
                                style: TextStyle(color: Colors.red),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "Contoh",
                          style: TextStyle(color: Colors.orange),
                        ),
                        Center(
                          child: Image.asset("assets/poin2.png"),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.circle,
                              size: 10,
                              color: Colors.red,
                            ),
                            SizedBox(
                              width: 300,
                              child: Text(
                                "Poin 3-4 Menunjukan Anak Berkembang Sesuai Harapan dimana anak sudah dapat mandiri dan konsisten tanpa di dicontohkan dan diingatkan oleh guru dalam melakukan kegiatan.",
                                style: TextStyle(color: Colors.red),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "Contoh",
                          style: TextStyle(color: Colors.orange),
                        ),
                        Center(
                          child: Image.asset("assets/poin4.png"),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.circle,
                              size: 10,
                              color: Colors.red,
                            ),
                            SizedBox(
                              width: 300,
                              child: Text(
                                "Poin 5 Menunjukan Anak Berkembang Sangat Baik dimana anak dapat mandiri dan konsisten dalam melakukan kegiatan serta bisa membantu teman yang belum bisa melakukan kegiatan tersebut.",
                                style: TextStyle(color: Colors.red),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "Contoh",
                          style: TextStyle(color: Colors.orange),
                        ),
                        Center(
                          child: Image.asset("assets/poin5.png"),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    padding: EdgeInsets.symmetric(horizontal: 26,vertical: 7),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.amber
                    ),
                    width: double.infinity,
                    child: Text("“JIKA ANDA MEMILIKI PERTANYAAN DAN BANTUAN LEBIH LANJUT SILAHKAN MENGHUBUNGI STAFF ADMIN YANG BERTUGAS”",textAlign: TextAlign.center,style: TextStyle(color: Colors.blue),),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
