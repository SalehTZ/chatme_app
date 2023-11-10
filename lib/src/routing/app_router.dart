// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:go_router/go_router.dart';

// import '../features/authentication/data/appwrite_auth_repo.dart';
// import '../features/authentication/presentation/account/account_screen.dart';
// import '../features/authentication/presentation/sign_in/email_password_sign_in_screen.dart';
// import '../features/authentication/presentation/sign_in/email_password_sign_in_state.dart';
// import '../features/categories/presentation/browse_screen.dart';
// import '../features/categories/presentation/category_screen.dart';
// import '../features/landing_page/presentation/home_screen.dart';
// import '../features/landing_page/presentation/tiled_scaffold_with_navigation.dart';
// import '../features/map/presentation/map_screen.dart';
// import '../features/onboarding/data/onboarding_repo_impl.dart';
// import '../features/onboarding/presentation/onboarding_screen.dart';
// import '../features/profile/presentation/screens/profile_screen.dart';
// import '../features/saved_screen/presentation/screens/saved_screen/saved_screen.dart';
// import '../features/search/presentation/search_screen.dart';
// import '../features/splash_screen/presentation/splash_screen.dart';
// import '../features/trucks/presentation/screens/truck_detail/truck_detail_screen.dart';
// import 'go_router_refresh_stream.dart';

// // private navigators
// final _rootNavigatorKey = GlobalKey<NavigatorState>();
// final _shellNavigatorHomeKey =
//     GlobalKey<NavigatorState>(debugLabel: 'Home Shell');
// final _shellNavigatorMapKey =
//     GlobalKey<NavigatorState>(debugLabel: 'Map Shell');
// final _shellNavigatorProfileKey =
//     GlobalKey<NavigatorState>(debugLabel: 'Profile Shell');

// // ! Add new route names to AppRoute enum
// // ! Use AppRoute for route name to ensure no misspellings
// enum AppRoute {
//   splash,
//   home,
//   signIn,
//   account,
//   onboarding,
//   categories,
//   map,
//   truckDetail,
//   browse,
//   search,
//   saved,
// }

// final goRouterProvider = Provider<GoRouter>((ref) {
//   final onboardingRepoImpl = ref.watch(onboardingRepoProvider);
//   final authRepo = ref.watch(authRepoProvider);
//   return GoRouter(
//     initialLocation: '/splash',
//     debugLogDiagnostics: true,
//     navigatorKey: _rootNavigatorKey,
//     refreshListenable: GoRouterRefreshStream(authRepo.authStateStream()),
//     redirect: (context, state) async {
//       final isLoggedIn = authRepo.currentUser != null;

//       if (isLoggedIn) {
//         if (state.uri.toString() == '/signIn' ||
//             state.uri.toString() == '/onboarding') {
//           return '/home';
//         }
//       } else {
//         // if (state.location == '/account' || state.location == '/orders') {
//         //   return '/signIn';
//         // }
//         if (state.uri.toString() != '/splash') {
//           if (state.uri.toString() != '/onboarding' &&
//               !onboardingRepoImpl.hasSeenTheOnBoarding) {
//             return '/onboarding';
//           }
//         }
//       }
//       return null;
//     },
//     routes: [
//       // Stateful nested navigation based on:
//       // https://github.com/flutter/packages/blob/main/packages/go_router/example/lib/stateful_shell_route.dart
//       StatefulShellRoute.indexedStack(
//         builder: (context, state, navigationShell) {
//           // the UI shell
//           return ScaffoldWithNestedNavigation(navigationShell: navigationShell);
//         },
//         branches: [
//           // first branch (Home)
//           StatefulShellBranch(
//             navigatorKey: _shellNavigatorHomeKey,
//             routes: [
//               // top route inside branch
//               GoRoute(
//                 path: '/home',
//                 name: AppRoute.home.name,
//                 pageBuilder: (context, state) => const NoTransitionPage(
//                   child: HomeScreen(),
//                 ),
//                 routes: [
//                   GoRoute(
//                     path: 'search',
//                     name: AppRoute.search.name,
//                     builder: (context, state) => const SearchScreen(),
//                   ),
//                   GoRoute(
//                     path: 'categories/:type',
//                     name: AppRoute.categories.name,
//                     builder: (context, state) => CategoriesScreen(
//                       categoryType: state.pathParameters['type'],
//                     ),
//                   ),
//                   GoRoute(
//                     path: 'truck/:id',
//                     name: AppRoute.truckDetail.name,
//                     builder: (context, state) =>
//                         TruckDetailsScreen(state.pathParameters['id']!),
//                   ),
//                   GoRoute(
//                     path: 'browse',
//                     name: AppRoute.browse.name,
//                     builder: (context, state) => const BrowseScreen(),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//           // second branch (Map)
//           StatefulShellBranch(
//             navigatorKey: _shellNavigatorMapKey,
//             routes: [
//               // top route inside branch
//               GoRoute(
//                 path: '/map',
//                 pageBuilder: (context, state) => const NoTransitionPage(
//                   child: MapScreen(),
//                 ),
//               ),
//             ],
//           ),
//           // third branch (Profile)
//           StatefulShellBranch(
//             navigatorKey: _shellNavigatorProfileKey,
//             routes: [
//               // top route inside branch
//               GoRoute(
//                 path: '/profile',
//                 pageBuilder: (context, state) => const NoTransitionPage(
//                   child: ProfileScreen(),
//                 ),
//                 routes: [
//                   GoRoute(
//                     path: 'saved',
//                     name: AppRoute.saved.name,
//                     builder: (context, state) => const SavedScreen(),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ],
//       ),
//       GoRoute(
//         path: '/onboarding',
//         name: AppRoute.onboarding.name,
//         builder: (context, state) => const OnboardingScreen(),
//       ),
//       GoRoute(
//         path: '/splash',
//         name: AppRoute.splash.name,
//         builder: (context, state) => const SplashScreen(),
//       ),
//       GoRoute(
//         path: '/signIn',
//         name: AppRoute.signIn.name,
//         builder: (context, state) => const EmailPasswordSignInScreen(
//           formType: EmailPasswordSignInFormType.signIn,
//         ),
//       ),
//       GoRoute(
//         path: '/account',
//         name: AppRoute.account.name,
//         builder: (context, state) => const AccountScreen(),
//       ),
//     ],
//     //   // * Fallback page mostly used in web
//     //   // TODO: Add 404 page later
//     //   errorBuilder: (context, state) => HomeScreen(),
//   );
// });
