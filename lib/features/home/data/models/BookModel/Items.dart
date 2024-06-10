import 'VolumeInfo.dart';
import 'SaleInfo.dart';
import 'AccessInfo.dart';

/// kind : "books#volume"
/// id : "RQwJ5AGCCXUC"
/// etag : "hJ+1qV79atA"
/// selfLink : "https://www.googleapis.com/books/v1/volumes/RQwJ5AGCCXUC"
/// volumeInfo : {"title":"The Joy of Sex","authors":["Alex Comfort"],"publisher":"Simon and Schuster","publishedDate":"2003","description":"A thirtieth anniversary edition of the guide first published in 1972 features updated text and illustrations and covers such topics as sexually transmitted diseases and achieving healthy intimacy.","industryIdentifiers":[{"type":"ISBN_13","identifier":"9780743477741"},{"type":"ISBN_10","identifier":"074347774X"}],"readingModes":{"text":false,"image":false},"pageCount":243,"printType":"BOOK","categories":["Family & Relationships"],"averageRating":4,"ratingsCount":1,"maturityRating":"MATURE","allowAnonLogging":false,"contentVersion":"0.3.2.0.preview.0","panelizationSummary":{"containsEpubBubbles":false,"containsImageBubbles":false},"imageLinks":{"smallThumbnail":"http://books.google.com/books/content?id=RQwJ5AGCCXUC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api","thumbnail":"http://books.google.com/books/content?id=RQwJ5AGCCXUC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"},"language":"en","previewLink":"http://books.google.com.eg/books?id=RQwJ5AGCCXUC&printsec=frontcover&dq=subject:sex&hl=&cd=1&source=gbs_api","infoLink":"http://books.google.com.eg/books?id=RQwJ5AGCCXUC&dq=subject:sex&hl=&source=gbs_api","canonicalVolumeLink":"https://books.google.com/books/about/The_Joy_of_Sex.html?hl=&id=RQwJ5AGCCXUC"}
/// saleInfo : {"country":"EG","saleability":"NOT_FOR_SALE","isEbook":false}
/// accessInfo : {"country":"EG","viewability":"PARTIAL","embeddable":true,"publicDomain":false,"textToSpeechPermission":"ALLOWED_FOR_ACCESSIBILITY","epub":{"isAvailable":false},"pdf":{"isAvailable":false},"webReaderLink":"http://play.google.com/books/reader?id=RQwJ5AGCCXUC&hl=&source=gbs_api","accessViewStatus":"SAMPLE","quoteSharingAllowed":false}

class Items {
  Items({
      this.kind, 
      this.id, 
      this.etag, 
      this.selfLink, 
      this.volumeInfo, 
      this.saleInfo, 
      this.accessInfo,});

  Items.fromJson(dynamic json) {
    kind = json['kind'];
    id = json['id'];
    etag = json['etag'];
    selfLink = json['selfLink'];
    volumeInfo = json['volumeInfo'] != null ? VolumeInfo.fromJson(json['volumeInfo']) : null;
    saleInfo = json['saleInfo'] != null ? SaleInfo.fromJson(json['saleInfo']) : null;
    accessInfo = json['accessInfo'] != null ? AccessInfo.fromJson(json['accessInfo']) : null;
  }
  String? kind;
  String? id;
  String? etag;
  String? selfLink;
  VolumeInfo? volumeInfo;
  SaleInfo? saleInfo;
  AccessInfo? accessInfo;
Items copyWith({  String? kind,
  String? id,
  String? etag,
  String? selfLink,
  VolumeInfo? volumeInfo,
  SaleInfo? saleInfo,
  AccessInfo? accessInfo,
}) => Items(  kind: kind ?? this.kind,
  id: id ?? this.id,
  etag: etag ?? this.etag,
  selfLink: selfLink ?? this.selfLink,
  volumeInfo: volumeInfo ?? this.volumeInfo,
  saleInfo: saleInfo ?? this.saleInfo,
  accessInfo: accessInfo ?? this.accessInfo,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['kind'] = kind;
    map['id'] = id;
    map['etag'] = etag;
    map['selfLink'] = selfLink;
    if (volumeInfo != null) {
      map['volumeInfo'] = volumeInfo?.toJson();
    }
    if (saleInfo != null) {
      map['saleInfo'] = saleInfo?.toJson();
    }
    if (accessInfo != null) {
      map['accessInfo'] = accessInfo?.toJson();
    }
    return map;
  }

}