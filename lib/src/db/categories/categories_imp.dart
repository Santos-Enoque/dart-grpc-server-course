import 'package:dart_grpc_server/dart_grpc_server.dart';

class CategoriesServices implements ICategoriesServices{
  @override
  Category? createCategory(Category category) {
       categories.add({'id': category.id, 'name': category.name});
       return category;
  }

  @override
  Empty? deleteCategory(Category category) {
    // TODO: implement deleteCategory
    throw UnimplementedError();
  }

  @override
  Category? editCategory(Category category) {
    // TODO: implement editCategory
    throw UnimplementedError();
  }

  @override
  List<Category>? getCategories() {
        return categories.map((category) {
      return helper.getCategoryFromMap(category);
    }).toList();
  }

  @override
  Category? getCategoryById(int id) {
    // TODO: implement getCategoryById
    throw UnimplementedError();
  }

  @override
  Category? getCategoryByName(String name) {
    // TODO: implement getCategoryByName
    throw UnimplementedError();
  }

}