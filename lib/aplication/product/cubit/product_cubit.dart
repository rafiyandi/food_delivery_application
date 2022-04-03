// import 'package:bloc/bloc.dart';
// import 'package:equatable/equatable.dart';
// import 'package:food_delivery_aplication/infrastruktur/product/product_repository.dart';

// part 'product_state.dart';

// class ProductCubit extends Cubit<ProductState> {
//   ProductCubit() : super(ProductInitial());

//   void getDataProduct() {
//     try {
//       emit(ProductLoading());
//       ProductRepository().getDataProduct().then((value) {
//         emit(ProductSuccess(value));
//       });
//     } catch (e) {}
//   }
// }
