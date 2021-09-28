import 'package:dart_grpc_server/dart_grpc_server.dart';
import 'package:test/test.dart';

void main() {
  test('calculate', () {
    expect(calculate(), 42);
  });
}
