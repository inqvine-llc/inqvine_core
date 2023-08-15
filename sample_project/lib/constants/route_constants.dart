import 'package:flutter/material.dart';
import 'package:inqvine_core_simulate/inqvine_core_simulate.dart';

import '../pages/counter/mocks/mock_counter_view_model.dart';
import '../pages/counter/views/counter_view.dart';
import '../pages/todo/mocks/mock_todo_view_model.dart';
import '../pages/todo/views/todo_view.dart';

final GoRouter kRouter = GoRouter(
  routes: kRoutes.map((e) => e.route).toList(),
  observers: <NavigatorObserver>[
    InqvineSimulationObserver(routes: kRoutes),
  ],
);

final List<SimulatableGoRoute> kRoutes = <SimulatableGoRoute>[
  SimulatableGoRoute(
    name: 'Counter View',
    fakeModel: MockCounterViewModel.instance,
    route: GoRoute(
      path: '/',
      builder: (_, __) => const CounterView(),
    ),
  ),
  SimulatableGoRoute(
    name: 'Todo View',
    fakeModel: MockTodoViewModel.instance,
    route: GoRoute(
      path: '/todo',
      builder: (_, __) => const TodoView(),
    ),
  ),
  // SimulatableGoRoute(
  //   name: 'To Do View',
  //   fakeModel: MockToDoViewModel.instance,
  //   route: GoRoute(
  //     path: '/todo',
  //     builder: (_, __) => const ToDoView(),
  //   ),
  // ),
];
