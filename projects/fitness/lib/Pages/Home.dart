import 'package:fitness/Models/Category_model.dart';
import 'package:fitness/Models/diet_model.dart';
import 'package:fitness/Models/popular_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  List<CategoryModel> categories = [];
  List<DietModel> diets = [];
  List<PopularDietsModel> popularDiets = [];
  bool tapped = false;

  void _info() {
    diets = DietModel.getDiets();
    categories = CategoryModel.getCategories();
    popularDiets = PopularDietsModel.getPopularDiets();
  }

  @override
  Widget build(BuildContext context) {
    _info();
    return Scaffold(
      appBar: _appBar(),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          _searchField(),
          const SizedBox(height: 40),
          _categoriesSection(),
          const SizedBox(height: 40),
          _dietSection(),
          const SizedBox(height: 40),

          _popularDietSection(),
          const SizedBox(height: 40),
        ],
      ),
    );
  }

  SingleChildScrollView _popularDietSection() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              "Popular Diets",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
            ),
          ),
          SizedBox(height: 15),
          ListView.separated(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: popularDiets.length,
            separatorBuilder: (context, index) => SizedBox(height: 25),
            padding: EdgeInsets.only(left: 20, right: 20),
            itemBuilder: (context, index) {
              return Container(
                height: 115,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset(
                      popularDiets[index].iconPath,
                      height: 65,
                      width: 65,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          popularDiets[index].name,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          '${popularDiets[index].level} | ${popularDiets[index].duration} | ${popularDiets[index].calorie}',
                          style: const TextStyle(
                            color: Color(0xff7B6F72),
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Padding _dietSection() {
    return Padding(
      padding: EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Recommendation \nfor Diet",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
          ),
          const SizedBox(height: 15),
          SizedBox(
            height: 210,
            child: ListView.separated(
              separatorBuilder: (context, index) => SizedBox(width: 25),
              itemCount: diets.length,
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 20, right: 20),
              itemBuilder: (context, index) {
                return Container(
                  width: 180,
                  decoration: BoxDecoration(
                    color: diets[index].boxColor.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(2),
                          child: SvgPicture.asset(diets[index].iconPath),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          diets[index].name,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 5),

                        Text(
                          '${diets[index].level} | ${diets[index].duration} | ${diets[index].calorie}',
                          style: TextStyle(fontSize: 12),
                        ),
                        const SizedBox(height: 10),

                        GestureDetector(
                          onTap: () {
                            // setState((){
                            //   tapped = !tapped;
                            // });
                          },
                          child: Container(
                            width: 100,
                            height: 38,
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [
                                  Color(0xFF2196F3), // light blue
                                  Color(0xFF1565C0), // dark blue
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                              borderRadius: BorderRadius.circular(18),
                            ),
                            child: Center(
                              child: Text(
                                "View",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Padding _categoriesSection() {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Category",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
          ),
          const SizedBox(height: 15),
          SizedBox(
            height: 120,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount:
                  categories.length, // ✅ Important: Prevent infinite rendering
              padding: EdgeInsets.only(left: 10, right: 20),
              separatorBuilder: (BuildContext context, int index) =>
                  SizedBox(width: 25),
              itemBuilder: (context, index) {
                return Container(
                  width: 100,
                  // margin: const EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                    color: categories[index].boxColor.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SvgPicture.asset(categories[index].iconPath),
                        ),
                      ),
                      Text(
                        categories[index].name,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  // ✅ FIX: Gave it a valid color & removed IntrinsicHeight (heavy on layout)
  Container _searchField() {
    return Container(
      margin: const EdgeInsets.only(top: 40, left: 20, right: 20),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.11),
            blurRadius: 40,
            spreadRadius: 0.0,
          ),
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: "Search PanCakes",
          hintStyle: const TextStyle(color: Colors.grey),
          contentPadding: const EdgeInsets.all(15),
          prefixIcon: Padding(
            padding: const EdgeInsets.all(12.0),
            child: SvgPicture.asset(
              'assets/icons/Search.svg',
              height: 20,
              width: 20,
              color: Colors.black,
            ),
          ),
          suffixIcon: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(width: 1, height: 20, color: Colors.black),
              Padding(
                padding: const EdgeInsets.all(12),
                child: SvgPicture.asset(
                  'assets/icons/Filter.svg',
                  height: 20,
                  width: 20,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }

  // ✅ Fixed AppBar (reduced potential layout overflow & ensured asset paths are valid)
  AppBar _appBar() {
    return AppBar(
      title: const Text(
        "BreakFast",
        style: TextStyle(
          fontSize: 24,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      leading: Container(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: const Color.fromARGB(115, 238, 236, 236),
          borderRadius: BorderRadius.circular(10),
        ),
        alignment: Alignment.center,
        child: SvgPicture.asset(
          'assets/icons/Arrow - Left 2.svg',
          height: 20,
          width: 20,
          color: Colors.black,
        ),
      ),
      actions: [
        Container(
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: const Color.fromARGB(115, 238, 236, 236),
            borderRadius: BorderRadius.circular(10),
          ),
          width: 37,
          alignment: Alignment.center,
          child: SvgPicture.asset(
            'assets/icons/dots.svg',
            height: 5,
            width: 5,
            color: Colors.black,
          ),
        ),
      ],
      backgroundColor: Colors.deepOrange,
      centerTitle: true,
      elevation: 0,
    );
  }
}
