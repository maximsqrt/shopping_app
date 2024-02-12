import 'package:shoooooping_provider_app/common/domain/product.dart';

List<Product> getDefaultProducts() {
  return [
    Product(
      'Provider',
      'Provides a static value',
      3.99,
    ),
    Product(
      'ChangeNotifierProvider',
      'Listens to a ChangeNotifier',
      4.99,
    ),
    Product(
        'ChangeNotifierProxyProvider',
        'Listens to a ChangeNotifier and provides a new value based on the ChangeNotifier',
        12.99),
    Product(
      'Provider.value',
      'Provides a value that never changes',
      0.99,
    ),
    Product(
      'Provider.of',
      'Listens to a value and rebuilds when the value changes',
      1.99,
    ),
    Product(
      'ProviderListener',
      'Listens to a value and calls a callback when the value changes',
      0.49,
    ),
    Product(
      'MultiProvider',
      'Provides multiple values',
      5.99,
    ),
    Product(
      'Consumer',
      'Listens to a value and rebuilds when the value changes',
      2.99,
    ),
    Product(
      'Selector',
      'Equivalent to Consumer but can filter values',
      3.99,
    ),
    Product(
      'context.read<T>()',
      'Gets a value without listening or rebuilding',
      0.99,
    ),
    Product(
      'context.watch<T>()',
      'Listens to a value and rebuilds',
      0.99,
    ),
    Product(
      'context.select<T, R>(R cb(T value))',
      'Listen to only a part of a value and rebuild',
      7.99,
    ),
  ];
}
