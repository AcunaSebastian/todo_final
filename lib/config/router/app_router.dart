import 'package:go_router/go_router.dart';
import 'package:todo_practica_final/screens/home_screen.dart';
import 'package:todo_practica_final/screens/login_screen.dart';
import 'package:todo_practica_final/views/important_view.dart';
import 'package:todo_practica_final/views/my_day_view.dart';
import 'package:todo_practica_final/views/pendant_view.dart';

import '../../screens/registro_screen.dart';
import '../../views/project_view.dart';


final GoRouter appRouter = GoRouter(
  initialLocation: '/login', // Establece la ruta inicial como '/login'
  routes: [
    GoRoute(
      path: '/login',
      name: LoginScreen.name,
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/registro', name: RegistroScreen.name,// Ruta para el registro
      builder: (context, state) => const RegistroScreen(), // Builder del RegistroScreen
    ),
    StatefulShellRoute.indexedStack(
      builder: (_, __, navigationShell) => HomeScreen(children: navigationShell),
      branches: <StatefulShellBranch>[
        StatefulShellBranch(routes: [
          GoRoute(
            path: '/',
            name: HomeView.name,
            builder: (context, state) => const HomeView(),
          ),
          GoRoute(
            path: '/important',
            name: ImportantView.name,
            builder: (context, state) => const ImportantView(),
          ),
          GoRoute(
            path: '/pendant',
            name: PendantView.name,
            builder: (context, state) => const PendantView(),
          ),
          GoRoute(
            path: '/project',
            name: ProjectView.name,
            builder: (context, state) => const ProjectView(),
          ),
        ]),
      ],
    )
  ],
);
