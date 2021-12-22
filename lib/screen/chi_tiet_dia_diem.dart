import 'package:flutter/material.dart';

class ChiTietDiaDiem extends StatefulWidget {
  const ChiTietDiaDiem({Key? key}) : super(key: key);

  @override
  _ChiTietDiaDiemState createState() => _ChiTietDiaDiemState();
}

class _ChiTietDiaDiemState extends State<ChiTietDiaDiem> {
  final List path_imgLocation = [
    'images/diadiem/1.jpg',
    'images/diadiem/2.jpg',
    'images/diadiem/3.jpg',
    'images/diadiem/4.jpg',
    'images/diadiem/5.jpg'
  ];

  final List path_imgRestauren = [
    'images/quanan/1.jpg',
    'images/quanan/2.jpg',
    'images/quanan/6.jpg',
    'images/quanan/4.jpg',
    'images/quanan/5.jpg'
  ];

  final List path_imgHotel = [
    'images/khachsan/1.jpg',
    'images/khachsan/2.jpg',
    'images/khachsan/3.jpg',
    'images/khachsan/4.jpg',
    'images/khachsan/5.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    // tạo widget column con bên trong title
    Widget nameAddress = Column(
      crossAxisAlignment: CrossAxisAlignment
          .start, // thuộc tính này định dạng con trong column ở vị trí bắt đấu
      children: [
        Container(
            padding: const EdgeInsets.only(bottom: 8),
            child: const Text('Hồ xuân hương',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ))),
        const Text('Thành phố Đà Lạt, tỉnh Lâm Đồng, Việt Nam')
      ],
    );
    // tạo widget Row con bên trong title
    Widget view = Row(
      children: const [
        Icon(
          Icons.visibility_outlined,
          color: Colors.red,
        ),
        Text('41')
      ],
    );
    //Tạo widget title
    Widget title = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [Expanded(child: nameAddress), view],
      ),
    );

    //Tạo widget buttonSection
    Widget buttonSection = Container(
      padding: EdgeInsets.fromLTRB(32, 0, 32, 32),
      child: Row(
          //chỉnh vị trí các button đều nhau
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildButton(
                Colors.lightBlue, Icons.favorite_border_outlined, 'Yêu thích'),
            _buildButton(Colors.lightBlue, Icons.share, 'Share'),
            _buildButton(Colors.lightBlue, Icons.room, 'Định vị'),
          ]),
    );

    //widget chứa đoạn mô tả
    Widget text = Container(
        padding: EdgeInsets.only(left: 32, right: 32),
        child: const Text('Mô tả tại đây'));

    return Scaffold(
        body: SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        _buildListImages(path_imgLocation),
        title,
        buttonSection,
        text,
        _buildTitle('Nhà hàng gần đây'),
        _buildList(
            path_imgRestauren, 'Tên nhà hàng', 'Số điện thoại', 'Địa chỉ'),
        _buildTitle('Khách sạn gần đây'),
        _buildList(path_imgHotel, 'Tên khách sạn', 'Số điện thoại', 'Địa chỉ')
      ]),
    ));
  }
}

Column _buildButton(Color color, IconData icon, String text) {
  return Column(
    //chỉnh vị trí column xếp giữa
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
          padding: const EdgeInsets.only(bottom: 8),
          child: Icon(
            icon,
            color: color,
          )),
      Text(
        text,
        style: TextStyle(color: color),
      )
    ],
  );
}

Widget _buildTitle(String title) {
  return Container(
    margin: const EdgeInsets.all(20),
    padding: const EdgeInsets.fromLTRB(15, 5, 0, 5),
    width: double.infinity,
    color: Colors.black,
    child: Text(
      title,
      style: const TextStyle(
          fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
    ),
  );
}

Widget _buildListImages(List path_img) {
  return Container(
    height: 200,
    child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: path_img.length,
        itemBuilder: (context, index) {
          return Image.asset(
            path_img[index],
            height: 240,
            width: 600,
            fit: BoxFit.cover,
          );
        }),
  );
}

Widget _buildList(List path_img, String name, String address, String phone) {
  return Container(
    height: 150,
    child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: path_img.length,
        itemBuilder: (context, index) {
          return Container(
            height: double.infinity,
            child: Card(
              child: Container(
                child: Column(
                  children: [
                    Image.asset(
                      path_img[index],
                      height: 40,
                      width: 40,
                      fit: BoxFit.cover,
                    ),
                    Text(name),
                    Text(phone),
                    Text(address)
                  ],
                ),
              ),
            ),
          );
        }),
  );
}
