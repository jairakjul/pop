import 'package:get/get.dart';
import 'app_routes.dart';

// Login
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';

// Home
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

// Create
import '../modules/create/bindings/create_binding.dart';
import '../modules/create/views/create_view.dart';

// Cart
import '../modules/cart/bindings/cart_binding.dart';
import '../modules/cart/views/cart_view.dart';

class AppPages {
  static final routes = <GetPage>[
    GetPage(
      name: AppRoutes.login,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: AppRoutes.home,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.create,
      page: () => const CreateView(),
      binding: CreateBinding(),
    ),
    GetPage(
      name: AppRoutes.cart,
      page: () => const CartView(),
      binding: CartBinding(),
    ),
  ];
}
