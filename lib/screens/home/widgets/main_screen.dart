import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:previsao_tempo/models/weather.dart';
import 'package:previsao_tempo/screens/home/widgets/weather_view.dart';
import 'package:previsao_tempo/screens/shared/find_icon.dart';

class MainScreen extends StatelessWidget {
  final Map data;

  const MainScreen({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(
              top: 65,
              bottom: 35,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  this.data["city"],
                  style: Theme.of(context).textTheme.headline6,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                  child: Text(
                    this.data["date"],
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                ),
                SvgPicture.asset(
                  findIcon(
                    this.data["condition_slug"],
                  ),
                  width: 50,
                ),
                Text(
                  "${this.data["temp"]}º",
                  style: Theme.of(context).textTheme.headline1,
                ),
                Text(
                  this.data["description"],
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 20,
                    bottom: 5,
                  ),
                  child: SvgPicture.asset(
                    "assets/images/vento.svg",
                    width: 30,
                  ),
                ),
                Text(
                  "Vento",
                  style: Theme.of(context).textTheme.subtitle2,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 20,
                  ),
                  child: Text(
                    this.data["wind_speedy"].toUpperCase(),
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                ),
                SizedBox(
                  height: 60,
                  child: ListView.builder(
                    itemBuilder: builder,
                    itemCount: 7,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget builder(BuildContext context, int index) {
    Weather weather = Weather(
      dayOfWeek: this.data["forecast"][index]["weekday"],
      icon: findIcon(this.data["forecast"][index]["condition"]),
      temperature: this.data["forecast"][index]["max"],
    );
    return WeatherView(weather);
  }
}
