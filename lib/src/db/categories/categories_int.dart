import 'package:dart_grpc_server/dart_grpc_server.dart';
import 'package:dart_grpc_server/src/generated/groceries.pb.dart';

abstract class ICategoriesServices {
  factory ICategoriesServices() => CategoriesServices();
  
  Category? getCategoryByName(String name){}
  Category? getCategoryById(int id){}
  Category? createCategory(Category category){}
  Category? editCategory(Category category){}
  Empty? deleteCategory(Category category){}
  List<Category>? getCategories(){}
}

final categoriesServices = ICategoriesServices();