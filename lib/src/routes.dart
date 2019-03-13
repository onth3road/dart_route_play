import 'package:angular_router/angular_router.dart';
import 'crisis_list_component.template.dart' as crisis_list_template;
import 'hero_list_component.template.dart' as hero_list_template;
import 'not_found_component.template.dart' as not_found_template;
import 'route_paths.dart';
export 'route_paths.dart';
class Routes {
  static final crises = RouteDefinition(
    routePath: RoutePaths.crises,
    component: crisis_list_template.CrisisListComponentNgFactory,
  );
  static final heroes = RouteDefinition(
    routePath: RoutePaths.heroes,
    component: hero_list_template.HeroListComponentNgFactory,
    useAsDefault: true,
  );
  static final all = <RouteDefinition>[
    crises,
    heroes,
    RouteDefinition.redirect(
      path: '',
      redirectTo: RoutePaths.heroes.toUrl(),
    ),
    RouteDefinition(
      path: '.+',
      component: not_found_template.NotFoundComponentNgFactory,
    ),
  ];
}
