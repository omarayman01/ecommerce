import 'package:equatable/equatable.dart';

class CategoryModel extends Equatable {
  final String name;
  final String imgUrl;

  const CategoryModel({required this.name, required this.imgUrl});
  @override
  List<Object?> get props => [name, imgUrl];

  static List<CategoryModel> categories = const [
    CategoryModel(
        name: "Soft Drinks",
        imgUrl:
            'https://images.unsplash.com/photo-1560689189-65b6ed6228e7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1471&q=80'),
    CategoryModel(
        name: "Water",
        imgUrl:
            'https://images.unsplash.com/photo-1523362628745-0c100150b504?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1336&q=80'),
    CategoryModel(
        name: "Smoothies",
        imgUrl:
            'https://images.unsplash.com/photo-1505252585461-04db1eb84625?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1416&q=80')
  ];
}
