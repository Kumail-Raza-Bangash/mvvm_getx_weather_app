// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

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
        margin: const EdgeInsets.only(top: 10),
        padding: const EdgeInsets.all(13),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white.withOpacity(0.17),
        ),
        child: Row(
          children: [
            Icon(
              widget.icon,
              size: 32,
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.value != 'N/A'
                      ? '${widget.value} ${widget.unit}'
                      : widget.value,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  widget.title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
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
