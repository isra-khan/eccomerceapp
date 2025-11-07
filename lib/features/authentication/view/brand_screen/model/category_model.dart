import 'package:eccomerceapp/features/authentication/view/brand_screen/model/brand_model.dart';

class CategoryModel {
  final String name;
  final List<BrandModel> brands;

  CategoryModel({required this.name, required this.brands});
}
