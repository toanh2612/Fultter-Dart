void searchByName (List<Book> bookList, String keyword) {
  print('Tìm kiếm bởi tên (tên sách, tên tác giả, tên nhà xuất bản): ' +keyword);
  keyword = keyword.toLowerCase();
  bookList.forEach((book) {
    String data = (book.name +' '+ book.publishingCompanyName + ' ' +book.authorName);
    RegExp re = new RegExp(keyword, caseSensitive: false);
    Iterable matches = re.allMatches(data);
    if (matches.length > 0) {
        print(book.name);
    }
  });
  print('======================');
}

void searchByPrice (List<Book> bookList, int price) {
  print('Tìm kiếm bởi giá: '+price.toString());
  bookList.forEach((book) {
    if (book.price < price) {
      print(book.name);
    }
  });
  print('======================');
}



void main () {
  Book book1 = new Book('S-0001', 'Dế mèn phiêu lưu ký', 'Thiếu nhi', 4, 2007, 49000, authorId: 'TG-0043', authorName: 'Tô Hoài', publishingCompanyId: 'XB-0023', publishingCompanyName: 'Kim Đồng', publishingCompanyAddress: 'Hà Nội' );
  Book book2 = new Book('S-0033', 'Mắt biếc', 'Tình cảm', 54, 2012, 58000, authorId: 'TG-0005', authorName: 'Nguyễn Nhật Ánh', publishingCompanyId: 'XB-0225', publishingCompanyName: 'NXB Trẻ', publishingCompanyAddress: 'Hà Nội');
  Book book3 = new Book('S-0009', 'Tony buổi sáng - Trên đường băng', 'Kỹ năng sống', 4, 2018, 52000, authorId: 'TG-0087', authorName: 'Tony', publishingCompanyId: 'XB-0023', publishingCompanyName: 'NXB Trẻ', publishingCompanyAddress: 'Hà Nội');
  Book book4 = new Book('S-0386', 'Tuổi Trẻ Đáng Giá Bao Nhiêu', 'Kỹ năng sống', 18, 2018, 52000, authorId: 'TG-0774', authorName: 'Đặng Nguyễn Đông Vy', publishingCompanyId: 'XB-0032', publishingCompanyName: 'Nhã Nam', publishingCompanyAddress: 'Hồ Chí Minh');
  Book book5 = new Book('S-94538', 'Cuộc Sống "Đếch" Giống Cuộc Đời', 'Kỹ năng sống', 1, 2020, 63000, authorId: 'TG-4336',authorName: ' Hoàng Hải Nguyễn', publishingCompanyId: 'XB-0225', publishingCompanyName: 'NXB Trẻ', publishingCompanyAddress: 'Hà Nội' );
  Book book6 = new Book('S-0538', 'Cô Gái Đến Từ Hôm Qua', 'Truyện dài', 39, 2007, 50000, authorId: 'TG-0005', authorName: 'Nguyễn Nhật Ánh', publishingCompanyId: 'XB-0225', publishingCompanyName: 'NXB Trẻ', publishingCompanyAddress: 'Hà Nội');
  List<Book> bookList = new List();
  bookList.add(book1);
  bookList.add(book2);
  bookList.add(book3);
  bookList.add(book4);
  bookList.add(book5);
  bookList.add(book6);

  searchByName(bookList, 'băng');
  searchByPrice(bookList, 50000);
  book1.price = 226000;
  print(book1.price);
}

class PublishingCompany {
  String _publishingCompanyId;
  String _publishingCompanyName;
  String _publishingCompanyAddress;

  PublishingCompany ({String publishingCompanyId, String publishingCompanyAddress, String publishingCompanyName}) {
    _publishingCompanyId = publishingCompanyId;
    _publishingCompanyAddress = publishingCompanyAddress;
    _publishingCompanyName = publishingCompanyName;
  }

  set publishingCompanyId (String publishingCompanyId) => _publishingCompanyId = publishingCompanyId;

  String get publishingCompanyId => _publishingCompanyId;

  set publishingCompanyName (String publishingCompanyName) => _publishingCompanyName = _publishingCompanyName;

  String get publishingCompanyName => _publishingCompanyName;

  set publishingCompanyAddress (String publishingCompanyAddress) => _publishingCompanyAddress = publishingCompanyAddress;

  String get publishingCompanyAddress => _publishingCompanyAddress;

}

mixin  Author {
  String _authorId;
  String _authorName;
//
//  Author ({ String authorId, String authorName}){
//    _authorId = authorId;
//    _authorName = authorName;
//  }

  set authorId (String authorId) => _authorId = authorId;

  String get authorId => _authorId;

  set authorName (String authorName) => _authorName = authorName;

  String get authorName => _authorName;
}

class Book extends PublishingCompany with Author {
  String _id;
  String _name;
  String _category;
  int _numberOfRepublish;
  int _republishYear;
  int _price;



  //Book (_id, _name, _price, {String category, int numberOfRepublish, int republishYear, String publishingCompanyId, String publishingCompanyName, String publishingCompanyAddress, String authorId, String authorName}) : super(publishingCompanyId, publishingCompanyName:publishingCompanyName,publishingCompanyAddress:publishingCompanyAddress, authorName: authorName);
Book (this._id , this._name, this._category, this._numberOfRepublish, this._republishYear, this._price, {String publishingCompanyId, String publishingCompanyName, String publishingCompanyAddress, String authorId, String authorName}) : super(publishingCompanyId:publishingCompanyId,publishingCompanyName:publishingCompanyName, publishingCompanyAddress: publishingCompanyAddress ) {
  super.authorId = authorId;
  super.authorName = authorName;
}
  set id (String id) => _id = id;

  String get id => _id;

  set name (String name) => _name = name;

  String get name => _name;

  set price (int price) => this._price = price;

  int get price => _price;

  set category (String category) => _category = category;

  String get category => _category;

  set numberOfRepublish (int numberOfRepublish) => _numberOfRepublish = numberOfRepublish;

  int get numberOfRepublish => _numberOfRepublish;

  set republishYear (int republishYear) => _republishYear;

  int get republishYear => _republishYear;

}