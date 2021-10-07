import 'package:dart_grpc_server/dart_grpc_server.dart';

class ItemsServices implements IItemsServices{
  @override
  Item? createItem(Item item) {
    // TODO: implement createItem
    throw UnimplementedError();
  }

  @override
  Empty? deleteItem(Item item) {
    // TODO: implement deleteItem
    throw UnimplementedError();
  }

  @override
  Item? editItem(Item item) {
    // TODO: implement editItem
    throw UnimplementedError();
  }

  @override
  Item? getItemById(int id) {
    // TODO: implement getItemById
    throw UnimplementedError();
  }

  @override
  Item? getItemByName(String name) {
    // TODO: implement getItemByName
    throw UnimplementedError();
  }

  @override
  List<Item>? getItems() {
    // TODO: implement getItems
    throw UnimplementedError();
  }

  @override
  List<Item>? getItemsByCategory(int categoryId) {
    // TODO: implement getItemsByCategory
    throw UnimplementedError();
  }

}