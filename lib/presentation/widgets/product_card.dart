import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:tata_bouquet/shared/colors.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              width: 200,
              height: 200,
              child: Image.asset('assets/flower.png'),
            ),
            Row(
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Text('Produk 1'), Text('Rp. 70.000')],
                ),
                const SizedBox(
                  width: 50,
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(12)),
                  child: InkWell(
                    onTap: () {},
                    child: const Icon(
                      Ionicons.add_outline,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
