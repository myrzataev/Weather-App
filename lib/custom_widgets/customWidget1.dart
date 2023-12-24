import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class RowWidget extends StatelessWidget {
  final String image;
  final String dayName;
  final String gradusFrom;
  final String toGradus;

  const RowWidget(
      {super.key,
      required this.dayName,
      required this.image,
      required this.gradusFrom,
      required this.toGradus});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 20.h,
          width: 109.w,
          child: Text(
            dayName,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w400,
              fontSize: 20,
            ),
          ),
        ),
        SizedBox(
          width: 42.h,
        ),
        Image.asset(
          image,
          height: 30.h,
          width: 30.w,
        ),
        SizedBox(
          width: 70.w,
        ),
        SizedBox(
          width: 40,
          child: Center(
            child: Text(
              '${gradusFrom}°',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      Spacer(),
        SizedBox(
          width: 40,
          child: Center(
            child: Text(
              '${toGradus}°',
              style: const TextStyle(
                color: Color(0xFFA8A8A8),
                fontSize: 24,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
        SizedBox(width: 10,)
      ],
    );
  }


}
