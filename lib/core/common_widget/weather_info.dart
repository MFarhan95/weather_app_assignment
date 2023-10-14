import 'package:flutter/material.dart';

class WeatherInfo extends StatelessWidget {
  const WeatherInfo({
    super.key, required this.humidity, required this.pressure, required this.windy,
  });

  final int? humidity;
  final int? pressure;
  final double? windy;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(22.0),
      child: Container(
        padding: const EdgeInsets.all(22),
        decoration: const BoxDecoration(
          color: Color.fromRGBO(236, 236, 236, 1),
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                const Icon(
                  Icons.water_drop,
                  color: Colors.blue,
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text('Humidity',style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w600
                ),),
                const SizedBox(
                  height: 8,
                ),
                Text('$humidity',style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600
                ),),
              ],
            ),
            Column(
              children: [
                const Icon(
                  Icons.cloud_sharp,
                  color: Colors.blue,
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text('Pressure',style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w600
                ),),
                const SizedBox(
                  height: 8,
                ),
                Text('$pressure',style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600
                ),),
              ],
            ),
             Column(
              children: [
                const Icon(
                  Icons.water_drop,
                  color: Colors.blue,
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text('Windy',style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w600
                ),),
                const SizedBox(
                  height: 8,
                ),
                Text('$windy',style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600
                ),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
