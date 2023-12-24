import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_work3/custom_widgets/customWidget1.dart';
import 'package:home_work3/data/models/weathermodel.dart';
import 'package:home_work3/data/repositoryes/get_weather_repo.dart';
import 'package:home_work3/resources/resources.dart';

class Time extends StatefulWidget {
  final Color gradient1;
  final Color gradient2;
  final String dayImage;
  final String opposite;
  const Time(
      {super.key,
      required this.gradient1,
      required this.gradient2,
      required this.dayImage,
      required this.opposite});

  @override
  State<Time> createState() => _TimeState();
}

class _TimeState extends State<Time> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // GetWeatherRepo.getWeather();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: double.maxFinite,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [widget.gradient1, widget.gradient2],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        ),
      ),
      child: FutureBuilder(
          future: GetWeatherRepo.getWeather(),
          builder: (context, snapshot) {
            WeatherModel? model = snapshot.data;
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator.adaptive();
            } else {
              return Center(
                child: Column(children: [
                  SizedBox(
                    height: 55.h,
                  ),
                  Column(children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 10.w,
                        ),
                        InkWell(
                          onTap: () {
                          },
                          child: Image.asset(
                            widget.opposite,
                            // 'lib/assets/images/Ellipse1.png',
                            height: 50.h,
                            width: 50,
                          ),
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        Text(
                          model?.city?.name ?? '',
                          style: const TextStyle(
                              fontFamily: 'Calistoga',
                              fontSize: 36,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 42.h,
                      child: Center(
                        child: Text(
                          model?.myWeatherlist?.first.weather?.first.main ??
                              's',
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Center(
                        child: Image.asset(
                          widget.dayImage,

                          // 'lib/assets/images/sun1.png',
                          height: 100.h,
                          width: 100.h,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 63.h,
                      child: Center(
                        child: Text(
                          '${model?.myWeatherlist?.first.main?.temp?.round().toString()}°',
                              
                          style: const TextStyle(
                            fontSize: 72,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 53.h,
                      child: Center(
                        child: Text(
                          DateTime.now().toString().substring(0,10),
                          style: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 21,
                      ),
                      // ignore: avoid_unnecessary_containers
                      child: Container(
                        child: Column(children: [
                          const Divider(
                            color: Color(0xFF949494),
                          ),
                          RowWidget(
                            gradusFrom: model?.myWeatherlist?[1].main?.tempMin?.round().toString()??'',
                            toGradus: model?.myWeatherlist?[1].main?.tempMax?.round().toString()??'',
                            dayName: 'Monday',
                            image: Images.cloud1,
                          ),
                          const Divider(
                            color: Color(0xFF949494),
                          ),
                          RowWidget(
                            gradusFrom: model?.myWeatherlist?[2].main?.tempMin?.round().toString()??'',
                            toGradus: model?.myWeatherlist?[2].main?.tempMax?.round().toString()??'',
                            dayName: 'Tuesday', image: Images.sun1),
                          const Divider(
                            color: Color(0xFF949494),
                          ),
                          RowWidget(
                            gradusFrom: model?.myWeatherlist?[3].main?.tempMin?.round().toString()??'',
                            toGradus: model?.myWeatherlist?[3].main?.tempMax?.round().toString()??'',
                            dayName: 'Wednesday', image: Images.sun1),
                          const Divider(
                            color: Color(0xFF949494),
                          ),
                          RowWidget(
                              gradusFrom: model?.myWeatherlist?[4].main?.tempMin?.round().toString()??'',
                            toGradus: model?.myWeatherlist?[4].main?.tempMax?.round().toString()??'',
                            dayName: 'Thursday', image: Images.rain1),
                          const Divider(
                            color: Color(0xFF949494),
                          ),
                          RowWidget(
                             gradusFrom: model?.myWeatherlist?[5].main?.tempMin?.round().toString()??'',
                            toGradus: model?.myWeatherlist?[5].main?.tempMax?.round().toString()??'',
                              dayName: 'Friday', image: Images.snowflakefinal),
                          const Divider(
                            color: Color(0xFF949494),
                          ),
                          RowWidget(
                                gradusFrom: model?.myWeatherlist?[6].main?.tempMin?.round().toString()??'',
                            toGradus: model?.myWeatherlist?[6].main?.tempMax?.round().toString()??'',
                              dayName: 'Saturday',
                              image: Images.snowflakefinal),
                        ]),
                      ),
                    )
                  ])
                ]),
              );
            }
          }),
    );
  }
}
