import 'dart:math';

import 'package:grpc/grpc.dart';
import 'package:dart_grpc_server/dart_grpc_server.dart';

class GroceriesService extends GroceriesServiceBase{
  @override
  Future<Category> createCategory(ServiceCall call, Category request) async {
    var category = Category(
    );
        category.id = request.id;
    category.name = request.name;
    var _result = category.writeToJsonMap();

    // ignore: omit_local_variable_types
    Map<String, dynamic> categoryJson = {
      'id': _result['1'],
      'name': _result['2']
    };

    categories.add(categoryJson);
    return category;
  }

  @override
  Future<Item> createItem(ServiceCall call, Item request) {
    // TODO: implement createItem
    throw UnimplementedError();
  }

  @override
  Future<Empty> deleteCategory(ServiceCall call, Category request) {
    // TODO: implement deleteCategory
    throw UnimplementedError();
  }

  @override
  Future<Empty> deleteItem(ServiceCall call, Item request) {
    // TODO: implement deleteItem
    throw UnimplementedError();
  }

  @override
  Future<Category> editCategory(ServiceCall call, Category request) {
    // TODO: implement editCategory
    throw UnimplementedError();
  }

  @override
  Future<Item> editItem(ServiceCall call, Item request) {
    // TODO: implement editItem
    throw UnimplementedError();
  }

  @override
  Future<Categories> getAllCategories(ServiceCall call, Empty request) async{
    print('client calling: getAllCategories');
    final convertedCategories = categories.map((category){
     return getCategoryFromMap(category);
    }).toList();
    return Categories()..categories.addAll(convertedCategories);
  }

  @override
  Future<Items> getAllItems(ServiceCall call, Empty request) async{
    print('client calling: getAllItems');
    final itemsConverted = items.map((item){
     return getItemFromMap(item);
    }).toList();
    return Items()..items.addAll(itemsConverted);
  }

  @override
  Future<Category> getCategory(ServiceCall call, Category request) async {
    var category = Category();
        var result = categories.where((element) => element['name'] == request.name).toList();
        if(result.isNotEmpty){
        category = getCategoryFromMap(result.first);
        }
      return category;
  }

  @override
  Future<Item> getItem(ServiceCall call, Item request) {
    // TODO: implement getItem
    throw UnimplementedError();
  }

  @override
  Future<AllItemsOfCategory> getItemsByCategory(ServiceCall call, Category request) {
    // TODO: implement getItemsByCategory
    throw UnimplementedError();
  }

  Category getCategoryFromMap(Map category) {
    var _idTag = 1;
    var _nameTag = 2;
    int _id = category['id'];
    String _name = category['name'];
    return Category.fromJson('{"$_idTag": $_id, "$_nameTag": "$_name"}');
  }

    Item getItemFromMap(Map item) {
    var _idTag = 1;
    var _nameTag = 2;
    var _categoryTag = 3;
    int _id = item['id'];
    String _name = item['name'];
    int _categoryId = item['categoryId'];
    return Item.fromJson('{"$_idTag": $_id, "$_nameTag": "$_name", "$_categoryTag": $_categoryId}');
  }

}

Future<void> main(List<String> args) async {
  final server = Server(
    [GroceriesService()],
    const <Interceptor>[],
    CodecRegistry(codecs: const [GzipCodec(), IdentityCodec()]),
  );
  await server.serve(port: 50000);
  print('Server listening on port ${server.port}...');
}