class Product {
  final int id;
  final String title;
  final String description;
  final double price;
  final String imageUrl;

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.imageUrl,
  });

  // JSON verisini Dart objesine çeviren factory
  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      price: json['price'].toDouble(),
      imageUrl: json['image'],
    );
  }
}

// Global sepet listesi
List<Product> cartItems = [];

// DummyJSON API simülasyonu
final List<Map<String, dynamic>> mockJsonData = [
  {
    "id": 1,
    "title": "Essence Mascara",
    "price": 9.99,
    "description": "Mükemmel hacim ve uzunluk veren günlük kullanıma uygun maskara.",
    "image": "https://cdn.dummyjson.com/products/images/beauty/Essence%20Mascara%20Lash%20Princess/1.png"
  },
  {
    "id": 2,
    "title": "Eyeshadow Palette",
    "price": 19.99,
    "description": "Çarpıcı göz makyajı için aynalı ve çok yönlü far paleti.",
    "image": "https://cdn.dummyjson.com/products/images/beauty/Eyeshadow%20Palette%20with%20Mirror/1.png"
  },
  {
    "id": 3,
    "title": "Annibale Colombo Sofa",
    "price": 2499.99,
    "description": "Modern tasarımıyla evinize şıklık katacak, konforlu ve geniş kanepe.",
    "image": "https://cdn.dummyjson.com/products/images/furniture/Annibale%20Colombo%20Sofa/1.png"
  },
  {
    "id": 4,
    "title": "Apple iPhone 15 Pro",
    "price": 1099.00,
    "description": "Titanyum kasa, A17 Pro çip ve gelişmiş kamera sistemiyle yeni nesil akıllı telefon.",
    "image": "https://cdn.dummyjson.com/products/images/smartphones/iPhone%2015%20Pro/1.png"
  }
];