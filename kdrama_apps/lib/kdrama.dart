class Kdrama {
  String tajuk;
  String gambar;
  String caption; // Tambah ini

  Kdrama(this.tajuk, this.gambar, this.caption);

  static List<Kdrama> senarai = [
    Kdrama('Vincenzo', 'assets/vincenzo.jpg', 'Vincenzo tells the story of Vincenzo Cassano, a Korean-born Italian mafia lawyer who returns to South Korea after conflict within his mafia family in Italy. While trying to recover hidden gold beneath Geumga Plaza, he becomes involved in fighting against the corrupt Babel Group alongside lawyer Hong Cha-young. Using both legal skills and mafia tactics, Vincenzo seeks justice in his own ruthless way while slowly building unexpected friendships and finding a sense of belonging in Korea..'),
    Kdrama('We Are All Trying Here', 'assets/trying.jpg', 'We Are All Trying Here follows a struggling aspiring film director who feels left behind while his friends become successful. As he faces insecurity, pressure, and failure, he slowly learns about healing, friendship, and finding his own path in life.'),
    Kdrama('Hometown Cha Cha Cha','assets/hometown.jpg', 'Story of Yoon Hye-jin, a perfectionist dentist who moves to the peaceful seaside village of Gongjin after problems in the city. There, she meets Hong Du-sik, a kind and talented man loved by everyone in town. As they grow closer, they help each other heal from past wounds while experiencing love, friendship, and the warmth of village life.'),
    Kdrama('Phantom Lawyer','assets/phantom.jpg', 'Follows Shin Yi-rang, a timid lawyer who suddenly gains the ability to see ghosts after opening his law office in a former shamans house. As spirits with unfinished grudges begin asking for his help, he teams up with elite lawyer Han Na-hyun to solve mysterious cases and deliver justice for both the living and the dead. The drama mixes legal cases, fantasy, comedy, and emotional moments.'),
  ];
}