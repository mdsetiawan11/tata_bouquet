import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:tata_bouquet/presentation/widgets/category_card.dart';
import 'package:tata_bouquet/presentation/widgets/product_card.dart';
import 'package:tata_bouquet/shared/colors.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15.0,
            vertical: 10,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Cari',
                        hintStyle: TextStyle(color: Colors.grey.shade400),
                        suffixIcon: const Icon(Ionicons.search_outline),
                        suffixIconColor: AppColors.primary,
                        border: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                        )),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 110,
                child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CategoryCard(
                        categoryName: 'Bunga',
                        iconData: Ionicons.rose_outline,
                      ),
                      CategoryCard(
                        categoryName: 'Snack',
                        iconData: Ionicons.ice_cream_outline,
                      ),
                      CategoryCard(
                        categoryName: 'Uang',
                        iconData: Ionicons.cash_outline,
                      ),
                      CategoryCard(
                        categoryName: 'Hadiah',
                        iconData: Ionicons.gift_outline,
                      ),
                    ]),
              ),
              SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Produk baru',
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                    InkWell(
                      child: Text(
                        'Liat semua',
                        style: TextStyle(
                          color: AppColors.primary,
                          fontSize: 18,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 3,
                child: ListView.builder(
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return const ProductCard();
                    }),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 80,
                child: MaterialButton(
                    elevation: 0,
                    color: AppColors.primary,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    onPressed: () {},
                    child: const Text(
                      'Request buket',
                      style: TextStyle(color: Colors.white, fontSize: 26),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
