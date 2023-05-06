import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:market_place_mobile_app/feature/single_product/single_product_state.dart';

final singleProductProvider = StateNotifierProvider<SingleProductController, SingleProductState>((ref) {
  return SingleProductController(
    SingleProductState(
      reviewTag: [
        'Product in good condition',
        'Very fast delivery',
        'Fast seller response'
      ]
    )
  );
});

class SingleProductController extends StateNotifier<SingleProductState> {
  SingleProductController(super.state);
}