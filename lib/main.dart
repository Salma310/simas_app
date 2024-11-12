import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'views/login/login_screen.dart';
import 'views/components/bottom_navigation.dart';
import 'views/find_event/find_event_screen.dart';
import 'views/home_screen/home_screen.dart';
import 'views/my_event/my_event_screen.dart';
import 'views/profile/profile_screen.dart';
import 'controllers/event_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => EventController()),
      ],
      child: MaterialApp(
        title: 'Simas App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        onGenerateRoute: (RouteSettings settings) {
          switch (settings.name) {
            case '/':
              return MaterialPageRoute(
                  builder: (context) => const SplashScreen());
            case '/login':
              return MaterialPageRoute(
                  builder: (context) => const LoginScreen());
            case '/main':
              return MaterialPageRoute(builder: (context) => const MainPage());
            default:
              return MaterialPageRoute(
                builder: (context) => const Scaffold(
                  body: Center(
                    child: Text('404 - Page Not Found'),
                  ),
                ),
              );
          }
        },
      ),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  Future<String> _getInitialRoute() async {
    final prefs = await SharedPreferences.getInstance();
    final authToken = prefs.getString('auth_token');

    // Redirect to login if not authenticated, otherwise to MainPage
    // if (authToken == null || authToken.isEmpty) {
    //   return '/login';
    // }
    return '/main';
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String>(
      future: _getInitialRoute(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        }

        if (snapshot.hasData) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            Navigator.pushReplacementNamed(context, snapshot.data!);
          });
        }

        return const SizedBox(); // Placeholder kosong
      },
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomeScreen(),
    const FindEventScreen(),
    const MyEventScreen(),
    const ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex], // Tampilkan halaman sesuai indeks
      bottomNavigationBar: BottomNavigation(
        currentIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// import 'views/login/login_screen.dart';
// import 'views/components/bottom_navigation.dart';
// import 'views/components/header.dart';
// import 'views/find_event/find_event_screen.dart';
// import 'views/home_screen/home_screen.dart';
// import 'views/notifikasi/notifikasi_page.dart';
// import 'views/my_event/my_event_screen.dart';
// import 'views/profile/profile_screen.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Simas App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       debugShowCheckedModeBanner: false,
//       initialRoute: '/',
//       onGenerateRoute: (RouteSettings settings) {
//         switch (settings.name) {
//           case '/':
//             return MaterialPageRoute(
//                 builder: (context) => const SplashScreen());
//           case '/login':
//             return MaterialPageRoute(builder: (context) => const LoginScreen());
//           case '/home':
//             return MaterialPageRoute(builder: (context) => const HomeScreen());
//           case '/find-event':
//             return MaterialPageRoute(
//                 builder: (context) => const FindEventScreen());
//           case '/my-event':
//             return MaterialPageRoute(
//                 builder: (context) => const MyEventScreen());
//           case '/profile':
//             return MaterialPageRoute(
//                 builder: (context) => const ProfileScreen());
//           default:
//             return MaterialPageRoute(
//               builder: (context) => const Scaffold(
//                 body: Center(
//                   child: Text('404 - Page Not Found'),
//                 ),
//               ),
//             );
//         }
//       },
//     );
//   }
// }

// class SplashScreen extends StatelessWidget {
//   const SplashScreen({Key? key}) : super(key: key);

//   Future<String> _getInitialRoute() async {
//     final prefs = await SharedPreferences.getInstance();
//     final authToken = prefs.getString('auth_token');

//     if (authToken == null || authToken.isEmpty) {
//       return '/home'; // Jika belum login, arahkan ke halaman login
//     }
//     return '/home'; // Jika sudah login, arahkan ke halaman utama
//   }

//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder<String>(
//       future: _getInitialRoute(),
//       builder: (context, snapshot) {
//         if (snapshot.connectionState == ConnectionState.waiting) {
//           return const Scaffold(
//             body: Center(child: CircularProgressIndicator()),
//           );
//         }

//         if (snapshot.hasData) {
//           WidgetsBinding.instance.addPostFrameCallback((_) {
//             Navigator.pushReplacementNamed(context, snapshot.data!);
//           });
//         }

//         return const SizedBox();
//       },
//     );
//   }
// }

// class MainPage extends StatefulWidget {
//   const MainPage({Key? key}) : super(key: key);

//   @override
//   _MainPageState createState() => _MainPageState();
// }

// class _MainPageState extends State<MainPage> {
//   int _selectedIndex = 0;

//   // Daftar halaman
//   final List<Widget> _pages = [
//     const HomeScreen(),
//     const FindEventScreen(),
//     const MyEventScreen(),
//     const ProfileScreen(),
//   ];

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _pages[_selectedIndex], // Tampilkan halaman sesuai indeks
//       bottomNavigationBar: BottomNavigation(
//         currentIndex: _selectedIndex,
//         onItemTapped: _onItemTapped,
//       ),
//     );
//   }
// }


// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Simas App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       debugShowCheckedModeBanner: false,
//       home: const SplashScreen(), // SplashScreen sebagai halaman awal
//     );
//   }
// }

// // SplashScreen untuk cek status login
// class SplashScreen extends StatelessWidget {
//   const SplashScreen({Key? key}) : super(key: key);

//   Future<String> _getInitialRoute() async {
//     final prefs = await SharedPreferences.getInstance();
//     final authToken = prefs.getString('auth_token');

//     if (authToken == null || authToken.isEmpty) {
//       return '/login'; // Belum login, arahkan ke halaman login
//     }

//     // Jika sudah login, arahkan ke MainPage
//     return '/main';
//   }

//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder<String>(
//       future: _getInitialRoute(),
//       builder: (context, snapshot) {
//         if (snapshot.connectionState == ConnectionState.waiting) {
//           return const Scaffold(
//             body: Center(child: CircularProgressIndicator()),
//           );
//         }

//         if (snapshot.hasData) {
//           WidgetsBinding.instance.addPostFrameCallback((_) {
//             Navigator.pushReplacementNamed(context, snapshot.data!);
//           });
//         }

//         return const SizedBox(); // Placeholder kosong
//       },
//     );
//   }
// }

// // MainPage untuk semua pengguna
// class MainPage extends StatefulWidget {
//   const MainPage({Key? key}) : super(key: key);

//   @override
//   _MainPageState createState() => _MainPageState();
// }

// class _MainPageState extends State<MainPage> {
//   int _selectedIndex = 0;

//   final List<Widget> _pages = [
//     const HomeScreen(), // Halaman Home
//     const FindEventScreen(), // Halaman Find Event
//     const MyEventScreen(), // Halaman My Event
//     const ProfileScreen(), // Halaman Profile
//   ];

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           const Header(), // Header tetap tampil
//           Expanded(
//             child:
//                 _pages[_selectedIndex], // Tampilkan halaman berdasarkan indeks
//           ),
//         ],
//       ),
//       bottomNavigationBar: BottomNavigation(
//         currentIndex: _selectedIndex,
//         onItemTapped: _onItemTapped,
//       ),
//     );
//   }
// }

// // Routing untuk semua halaman
// class AppRoutes {
//   static Map<String, WidgetBuilder> routes = {
//     '/login': (context) => const LoginScreen(),
//     '/main': (context) => const MainPage(),
//   };
// }
