import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app_assignment/core/core.dart';
import 'package:weather_app_assignment/features/home/home_providers/home_provider.dart';

class HomeScreenPage extends StatefulWidget {
  const HomeScreenPage({Key? key}) : super(key: key);

  static const String routeName = '/homeScreen';

  static Route route() {
    return MaterialPageRoute(
        builder: (_) => const HomeScreenPage(),
        settings: const RouteSettings(name: routeName));
  }

  @override
  State<HomeScreenPage> createState() => _HomeScreenPageState();
}

class _HomeScreenPageState extends State<HomeScreenPage> {
  HomeProvider _homeProvider = HomeProvider();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _homeProvider = Provider.of<HomeProvider>(context, listen: false);
    _homeProvider.loadWeatherList(context);
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    Provider.of<HomeProvider>(context, listen: true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: const CommonAppBar(location: 'Lahore', dateTime: 'Today'),
      body: Column(
        children: [
          WeatherInfo(
              humidity: _homeProvider.commonResponse.main?.humidity,
              pressure: _homeProvider.commonResponse.main?.pressure,
              windy: _homeProvider.commonResponse.wind?.speed),
          Expanded(
            child: ListView.builder(
              physics: const ClampingScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return DailyWeatherCard(
                  dateTime:
                      _homeProvider.commonResponse.weather?[index].description,
                  iconData: Icons.add,
                  temperature: _homeProvider.commonResponse.main?.temp,
                );
              },
              itemCount: _homeProvider.commonResponse.weather?.length,
            ),
          )
        ],
      ),
    );
  }
}
