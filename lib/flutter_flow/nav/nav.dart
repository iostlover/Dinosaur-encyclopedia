import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/flutter_flow/flutter_flow_util.dart';

import '/index.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  bool showSplashImage = true;

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      navigatorKey: appNavigatorKey,
      errorBuilder: (context, state) => appStateNotifier.showSplashImage
          ? Builder(
              builder: (context) => Container(
                color: Colors.transparent,
                child: Image.asset(
                  'assets/images/ChatGPT_Image_202561_03_04_58.png',
                  fit: BoxFit.fill,
                ),
              ),
            )
          : HomePageWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.showSplashImage
              ? Builder(
                  builder: (context) => Container(
                    color: Colors.transparent,
                    child: Image.asset(
                      'assets/images/ChatGPT_Image_202561_03_04_58.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                )
              : HomePageWidget(),
        ),
        FFRoute(
          name: HomePageWidget.routeName,
          path: HomePageWidget.routePath,
          builder: (context, params) => HomePageWidget(),
        ),
        FFRoute(
          name: Trex1Widget.routeName,
          path: Trex1Widget.routePath,
          builder: (context, params) => Trex1Widget(),
        ),
        FFRoute(
          name: Pteranodon1Widget.routeName,
          path: Pteranodon1Widget.routePath,
          builder: (context, params) => Pteranodon1Widget(),
        ),
        FFRoute(
          name: Protedacti2Widget.routeName,
          path: Protedacti2Widget.routePath,
          builder: (context, params) => Protedacti2Widget(),
        ),
        FFRoute(
          name: Quetzal3Widget.routeName,
          path: Quetzal3Widget.routePath,
          builder: (context, params) => Quetzal3Widget(),
        ),
        FFRoute(
          name: Rhamphorhynchus4Widget.routeName,
          path: Rhamphorhynchus4Widget.routePath,
          builder: (context, params) => Rhamphorhynchus4Widget(),
        ),
        FFRoute(
          name: Dimorphodon5Widget.routeName,
          path: Dimorphodon5Widget.routePath,
          builder: (context, params) => Dimorphodon5Widget(),
        ),
        FFRoute(
          name: Eudimorphodon6Widget.routeName,
          path: Eudimorphodon6Widget.routePath,
          builder: (context, params) => Eudimorphodon6Widget(),
        ),
        FFRoute(
          name: Archaeopteryx7Widget.routeName,
          path: Archaeopteryx7Widget.routePath,
          builder: (context, params) => Archaeopteryx7Widget(),
        ),
        FFRoute(
          name: Microraptor8Widget.routeName,
          path: Microraptor8Widget.routePath,
          builder: (context, params) => Microraptor8Widget(),
        ),
        FFRoute(
          name: Trex2Widget.routeName,
          path: Trex2Widget.routePath,
          builder: (context, params) => Trex2Widget(),
        ),
        FFRoute(
          name: Trex3Widget.routeName,
          path: Trex3Widget.routePath,
          builder: (context, params) => Trex3Widget(),
        ),
        FFRoute(
          name: Trex4Widget.routeName,
          path: Trex4Widget.routePath,
          builder: (context, params) => Trex4Widget(),
        ),
        FFRoute(
          name: Trex5Widget.routeName,
          path: Trex5Widget.routePath,
          builder: (context, params) => Trex5Widget(),
        ),
        FFRoute(
          name: Trex6Widget.routeName,
          path: Trex6Widget.routePath,
          builder: (context, params) => Trex6Widget(),
        ),
        FFRoute(
          name: Trex7Widget.routeName,
          path: Trex7Widget.routePath,
          builder: (context, params) => Trex7Widget(),
        ),
        FFRoute(
          name: Trex8Widget.routeName,
          path: Trex8Widget.routePath,
          builder: (context, params) => Trex8Widget(),
        ),
        FFRoute(
          name: Ple1Widget.routeName,
          path: Ple1Widget.routePath,
          builder: (context, params) => Ple1Widget(),
        ),
        FFRoute(
          name: Ple2Widget.routeName,
          path: Ple2Widget.routePath,
          builder: (context, params) => Ple2Widget(),
        ),
        FFRoute(
          name: Ple3Widget.routeName,
          path: Ple3Widget.routePath,
          builder: (context, params) => Ple3Widget(),
        ),
        FFRoute(
          name: Ple4Widget.routeName,
          path: Ple4Widget.routePath,
          builder: (context, params) => Ple4Widget(),
        ),
        FFRoute(
          name: Ple5Widget.routeName,
          path: Ple5Widget.routePath,
          builder: (context, params) => Ple5Widget(),
        ),
        FFRoute(
          name: Ple6Widget.routeName,
          path: Ple6Widget.routePath,
          builder: (context, params) => Ple6Widget(),
        ),
        FFRoute(
          name: Ple7Widget.routeName,
          path: Ple7Widget.routePath,
          builder: (context, params) => Ple7Widget(),
        ),
        FFRoute(
          name: Ple8Widget.routeName,
          path: Ple8Widget.routePath,
          builder: (context, params) => Ple8Widget(),
        ),
        FFRoute(
          name: Microraptor9Widget.routeName,
          path: Microraptor9Widget.routePath,
          builder: (context, params) => Microraptor9Widget(),
        ),
        FFRoute(
          name: Microraptor10Widget.routeName,
          path: Microraptor10Widget.routePath,
          builder: (context, params) => Microraptor10Widget(),
        ),
        FFRoute(
          name: Microraptor11Widget.routeName,
          path: Microraptor11Widget.routePath,
          builder: (context, params) => Microraptor11Widget(),
        ),
        FFRoute(
          name: Microraptor12Widget.routeName,
          path: Microraptor12Widget.routePath,
          builder: (context, params) => Microraptor12Widget(),
        ),
        FFRoute(
          name: Microraptor13Widget.routeName,
          path: Microraptor13Widget.routePath,
          builder: (context, params) => Microraptor13Widget(),
        ),
        FFRoute(
          name: Microraptor14Widget.routeName,
          path: Microraptor14Widget.routePath,
          builder: (context, params) => Microraptor14Widget(),
        ),
        FFRoute(
          name: Microraptor15Widget.routeName,
          path: Microraptor15Widget.routePath,
          builder: (context, params) => Microraptor15Widget(),
        ),
        FFRoute(
          name: Microraptor16Widget.routeName,
          path: Microraptor16Widget.routePath,
          builder: (context, params) => Microraptor16Widget(),
        ),
        FFRoute(
          name: Microraptor17Widget.routeName,
          path: Microraptor17Widget.routePath,
          builder: (context, params) => Microraptor17Widget(),
        ),
        FFRoute(
          name: Ple9Widget.routeName,
          path: Ple9Widget.routePath,
          builder: (context, params) => Ple9Widget(),
        ),
        FFRoute(
          name: Ple10Widget.routeName,
          path: Ple10Widget.routePath,
          builder: (context, params) => Ple10Widget(),
        ),
        FFRoute(
          name: Ple11Widget.routeName,
          path: Ple11Widget.routePath,
          builder: (context, params) => Ple11Widget(),
        ),
        FFRoute(
          name: Ple12Widget.routeName,
          path: Ple12Widget.routePath,
          builder: (context, params) => Ple12Widget(),
        ),
        FFRoute(
          name: Ple13Widget.routeName,
          path: Ple13Widget.routePath,
          builder: (context, params) => Ple13Widget(),
        ),
        FFRoute(
          name: Ple14Widget.routeName,
          path: Ple14Widget.routePath,
          builder: (context, params) => Ple14Widget(),
        ),
        FFRoute(
          name: Ple15Widget.routeName,
          path: Ple15Widget.routePath,
          builder: (context, params) => Ple15Widget(),
        ),
        FFRoute(
          name: Ple16Widget.routeName,
          path: Ple16Widget.routePath,
          builder: (context, params) => Ple16Widget(),
        ),
        FFRoute(
          name: Trex9Widget.routeName,
          path: Trex9Widget.routePath,
          builder: (context, params) => Trex9Widget(),
        ),
        FFRoute(
          name: Trex10Widget.routeName,
          path: Trex10Widget.routePath,
          builder: (context, params) => Trex10Widget(),
        ),
        FFRoute(
          name: Trex11Widget.routeName,
          path: Trex11Widget.routePath,
          builder: (context, params) => Trex11Widget(),
        ),
        FFRoute(
          name: Trex12Widget.routeName,
          path: Trex12Widget.routePath,
          builder: (context, params) => Trex12Widget(),
        ),
        FFRoute(
          name: Trex13Widget.routeName,
          path: Trex13Widget.routePath,
          builder: (context, params) => Trex13Widget(),
        ),
        FFRoute(
          name: Trex14Widget.routeName,
          path: Trex14Widget.routePath,
          builder: (context, params) => Trex14Widget(),
        ),
        FFRoute(
          name: Trex15Widget.routeName,
          path: Trex15Widget.routePath,
          builder: (context, params) => Trex15Widget(),
        ),
        FFRoute(
          name: Trex16Widget.routeName,
          path: Trex16Widget.routePath,
          builder: (context, params) => Trex16Widget(),
        ),
        FFRoute(
          name: Trex17Widget.routeName,
          path: Trex17Widget.routePath,
          builder: (context, params) => Trex17Widget(),
        ),
        FFRoute(
          name: Trex18Widget.routeName,
          path: Trex18Widget.routePath,
          builder: (context, params) => Trex18Widget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
