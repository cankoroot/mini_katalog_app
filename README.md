# Mini Katalog Uygulaması

Bu proje, Flutter ile mobil uygulama geliştirme eğitimi kapsamında geliştirilmiş, temel bileşenleri ve state mantığını anlamayı hedefleyen bir **Mini Katalog Uygulamasıdır**. Eğitim standartlarına sadık kalınarak, harici hiçbir üçüncü parti paket kullanılmadan tamamen `material.dart` kütüphanesiyle inşa edilmiştir.

## Kısa Açıklama
Uygulama, modern e-ticaret ve katalog arayüzlerinin temel yapı taşlarını simüle etmektedir. Proje kapsamında aşağıdaki teknik kazanımlar ve özellikler uygulanmıştır:
- **Modüler Proje Klasörlemesi:** Kodlar `models`, `screens` ve `widgets` mimarisine uygun olarak ayrıştırılmıştır.
- **JSON Veri Modeli Yapısı:** Mock veriler (DummyJSON yapısı baz alınarak) `Product.fromJson` factory metodu ile Dart nesnelerine dönüştürülmüştür.
- **Gelişmiş Arayüz Bileşenleri:** Ana ekranda dinamik ürün listeleme için `GridView.builder`, sepet ekranında ise `ListView.builder` kullanılmıştır.
- **Navigasyon ve Veri Taşıma:** Ekranlar arası geçişler `Navigator.push` ile sağlanmış, seçilen ürünün detayları `Route Arguments` mantığıyla detay ekranına aktarılmıştır.
- **State Yönetimi Simülasyonu:** Ürünlerin sepete eklenmesi, sepet listesinden çıkarılması ve sepetin güncellenmesi işlemleri Stateful Widget yapısı ve `setState` ile dinamik olarak kontrol edilmektedir.

## Kullanılan Flutter Sürümü
- **Flutter SDK:** 3.44.0 veya üzeri
- **Paketler:** Sadece `package:flutter/material.dart` (Ekstra paket kullanılmamıştır).

## Çalıştırma Adımları

Projeyi kendi yerel ortamınızda ayağa kaldırmak için aşağıdaki adımları sırasıyla uygulayabilirsiniz:

1. **Projeyi Klonlayın:**
   ```bash
   git clone [https://github.com/cankoroot/mini_katalog_app.git](https://github.com/cankoroot/mini_katalog_app.git)
2. **Bağımlılıkları çekin**
   flutter pub get
3. **Uygulamayı Çalıştırın**
   flutter run

   
