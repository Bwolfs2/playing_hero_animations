import 'detail_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'detail_page.dart';

class DetailModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $DetailController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(
          Modular.initialRoute,
          child: (_, args) => DetailPage(
            image: args.data['image'],
            price: args.data['price'],
            name: args.data['name'],
            description: args.data['description'],
          ),
        ),
      ];

  static Inject get to => Inject<DetailModule>.of();
}
