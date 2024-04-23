// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:mvvm_getx_weather_app/resourses/utils/dimensions.dart';

class DetailItemsWidgets extends StatefulWidget {
  String title;
  String value;
  IconData icon;
  String unit;

  DetailItemsWidgets({
    super.key,
    required this.title,
    required this.value,
    required this.icon,
    required this.unit,
  });

  @override
  State<DetailItemsWidgets> createState() => _DetailItemsWidgetsState();
}

class _DetailItemsWidgetsState extends State<DetailItemsWidgets> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(top: Dimensions.height10),
        padding: EdgeInsets.all(Dimensions.height10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimensions.radius20 / 2),
          color: Colors.white.withOpacity(0.18),
        ),
        child: Row(
          children: [
            Icon(
              widget.icon,
              size: Dimensions.height30,
            ),
            SizedBox(
              width: Dimensions.width10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.value != 'N/A'
                      ? '${widget.value} ${widget.unit}'
                      : widget.value,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: Dimensions.font16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: Dimensions.height10 / 5,
                ),
                Text(
                  widget.title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: Dimensions.font26 / 2,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
