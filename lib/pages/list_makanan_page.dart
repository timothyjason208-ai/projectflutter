import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kalkulator/components/custom_text.dart';
import '../routes.dart';
import 'package:kalkulator/controllers/list_makanan_controller.dart';



class ListMakananPage extends StatelessWidget {
  ListMakananPage({super.key});

  final controller = Get.put(ListMakananController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Makanan"),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Obx(() => ListView.builder(
              itemCount: controller.dataMakanan.length,
              itemBuilder: (context, index) {
                final makanan = controller.dataMakanan[index];
                return Dismissible(
                  key: ValueKey(makanan.namaMakanan),
                  direction: DismissDirection.startToEnd,
                  background: Container(
                    color: Colors.red,
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(left: 16.0),
                    child: const Icon(Icons.delete, color: Colors.white),
                  ), 
                  child: Card(
    elevation: 2,
    margin: const EdgeInsets.symmetric(vertical: 6),
    child: InkWell(
      onTap: () {
        Get.toNamed(Routes.detailMakanan, arguments: makanan);
      },
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                makanan.gambar,
                width: 80,
                height: 80,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    width: 80,
                    height: 80,
                    color: Colors.grey[300],
                    child: const Icon(Icons.image_not_supported),
                  );
                },
              ),
            ),
            const SizedBox(width: 12),

                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  makanan.namaMakanan,
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                CustomText(
                                  text: makanan.deskripsi,
                                  fontSize: 14,
                                  color: Colors.grey[600],
                                ),
                                const SizedBox(height: 8),
                                CustomText(
                                  text: "Rp " + makanan.harga.toString(),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black87,
                                ),
                               
                              ],
                                
                                
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                );
              },
            )),
      ),
    );
  }
}