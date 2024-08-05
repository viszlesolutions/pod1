class HotelListData {
  HotelListData({
    this.imagePath = '',
    this.titleTxt = '',
    this.subTxt = "",
   
   
  });

  String imagePath;
  String titleTxt;
  String subTxt;
 
 

  static List<HotelListData> hotelList = <HotelListData>[
    HotelListData(
      imagePath: 'assets/house.jpg',
      titleTxt: '50 Acrs/Land for sale',
     subTxt: 'Agriculuture',
     
     
   ),
    HotelListData(
      imagePath: 'assets/salampalam_2_11zon.jpg',
      titleTxt: '70 Acrs/Land for sale',
      subTxt: 'Aquaculuture',
     
     
    ),
    HotelListData(
      imagePath: 'assets/koduru_1_11zon.jpg',
      titleTxt: '60 Acrs/Land for sale',
      subTxt: 'Aquaculuture',
     
     
    ),HotelListData(
      imagePath: 'assets/koduru2_3_11zon.jpg',
      titleTxt: '25 Acrs/Land for sale',
      subTxt: 'Farmland',
     
     
    ),HotelListData(
      imagePath: 'assets/pp2.jpeg',
      titleTxt: '11 Acrs/Land for sale',
      subTxt: 'Vacantland',
     
     
    ),HotelListData(
      imagePath: 'assets/pp2.jpeg',
      titleTxt: '80 Acrs/Land for sale',
      subTxt: 'Agriculuture',
     
     
    ),HotelListData(
      imagePath: 'assets/pp2.jpeg',
      titleTxt: '30Acrs/Land for sale',
      subTxt: 'Farmland',
     
     
    ),HotelListData(
      imagePath: 'assets/pp2.jpeg',
      titleTxt: '100 Acrs/Land for sale',
      subTxt: 'Aquaculuture',
     
     
    ),HotelListData(
      imagePath: 'assets/pp2.jpeg',
      titleTxt: '20Acrs/Land for sale',
      subTxt: 'Aquaculuture',
     
     
    ),
  ];
  }