class PopularFilterListData {
  PopularFilterListData({
    this.titleTxt = '',
    this.isSelected = false,
  });

  String titleTxt;
  bool isSelected;

  static List<PopularFilterListData> popularFList = <PopularFilterListData>[
    PopularFilterListData(
      titleTxt: 'claysoil',
      isSelected: false,
    ),
    PopularFilterListData(
      titleTxt: 'blacksoil',
      isSelected: false,
    ),
    PopularFilterListData(
      titleTxt: 'redsoil',
      isSelected: true,
    ),
    PopularFilterListData(
      titleTxt: 'saltsoil',
      isSelected: false,
    ),
    PopularFilterListData(
      titleTxt: 'rock soil',
      isSelected: false,
    ),
  ];

  static List<PopularFilterListData> accomodationList = [
    PopularFilterListData(
      titleTxt: 'All',
      isSelected: false,
    ),
    PopularFilterListData(
      titleTxt: 'pathadar passbook',
      isSelected: false,
    ),
    PopularFilterListData(
      titleTxt: '1bregister',
      isSelected: true,
    ),
    PopularFilterListData(
      titleTxt: 'saledeed',
      isSelected: false,
    ),
    PopularFilterListData(
      titleTxt: 'Adangal number',
      isSelected: false,
    ),
    PopularFilterListData(
      titleTxt: 'Fmb',
      isSelected: false,
    ),
     PopularFilterListData(
      titleTxt: 'RSR',
      isSelected: false,
    ),
      PopularFilterListData(
      titleTxt: 'Register documents Available',
      isSelected: false,
    ),
  ];
}

