import 'package:get/get.dart';
import 'package:new_project/models/makanan_models.dart';

class HomeController extends GetxController {
  List<MakananModels> listMakanan = [
    MakananModels(
      namaMakanan: "Soto",
      harga: "18000",
      rating: 4.7,
      deskripsi: "Soto ayam dengan kuah kaldu rempah gurih, suwiran ayam, dan taburan seledri.",
      review: "Kuahnya segar dan gurih!",
      gambar: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQirOpuEk6vTTe71ImkiEogk3GqYAg_mpQNVNhu-AUMXkwqTLi90Tg5kgU&s=10",
    ),
    MakananModels(
      namaMakanan: "Pindang",
      harga: "22000",
      rating: 4.5,
      deskripsi: "Pindang ikan khas nusantara dengan perpaduan rasa asam pedas yang segar.",
      review: "Ikan lembut dan kuahnya nikmat!",
      gambar: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBH5h1HPBZLLShiTfE2rcD2TVGWMNRLLSlYLYwSTBLblOOgQcog5Y49Grh&s=10",
    ),
    MakananModels(
      namaMakanan: "Nasi Goreng",
      harga: "15000",
      rating: 4.5,
      deskripsi: "Nasi goreng dengan bumbu rempah pilihan.",
      review: "Sangat enak!",
      gambar: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQirOpuEk6vTTe71ImkiEogk3GqYAg_mpQNVNhu-AUMXkwqTLi90Tg5kgU&s=10",
    ),
    MakananModels(
      namaMakanan: "Ayam Bakar",
      harga: "20000",
      rating: 4.0,
      deskripsi: "Ayam bakar dengan bumbu rempah yang meresap.",
      review: "Ayam empuk dan bumbunya enak!",
      gambar: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBH5h1HPBZLLShiTfE2rcD2TVGWMNRLLSlYLYwSTBLblOOgQcog5Y49Grh&s=10",
    ),
    MakananModels(
      namaMakanan: "Sate",
      harga: "25000",
      rating: 4.3,
      deskripsi: "Sate dengan bumbu kacang yang gurih.",
      review: "Dagingnya empuk dan bumbunya mantap!",
      gambar: "https://www.dapurkobe.co.id/wp-content/uploads/sate-ayam.jpg",
    ),
    MakananModels(
      namaMakanan: "Gado-Gado",
      harga: "12000",
      rating: 4.1,
      deskripsi: "Gado-gado dengan sayuran segar dan saus kacang.",
      review: "Sehat dan enak!",
      gambar: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0yiI54abKf-HZ8ve3LSrZh7WZUJr77sdNjSzo0GXEClmCDLHXLepARaM&s=10",
    ),
    MakananModels(
      namaMakanan: "Ayam Geprek Bakar",
      harga: "15000",
      rating: 4.6,
      deskripsi: "Ayam geprek bakar dengan sambal pedas.",
      review: "Pedasnya pas, bikin nagih!",
      gambar: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpHShj59W1dpTt_z78M87bGSsBKgoJHI2G6bPk8pITG6fD6FavWZly9IM&s=10",
    ),
  ];
}