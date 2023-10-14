import 'package:provider/provider.dart';
import 'package:weather_app_assignment/features/home/home_providers/home_provider.dart';

final multiProviders = [
  ChangeNotifierProvider<HomeProvider>(
    create: (_) => HomeProvider(),
    lazy: true,
  ),
];