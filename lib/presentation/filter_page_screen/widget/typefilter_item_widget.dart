import 'package:flutter/material.dart';
import '../../../core/app_export.dart';

class TypefilterItemWidget extends StatelessWidget {
  const TypefilterItemWidget({super.key});

  Widget buildChip(BuildContext context, String label) {
    return Theme(
      data: ThemeData(
        canvasColor: Colors.transparent,
      ),
      child: RawChip(
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          label,
          style: TextStyle(
            color: Colors.black,
            fontSize: 14.fSize,
            fontFamily: 'Ubuntu',
            fontWeight: FontWeight.w500,
          ),
        ),
        selected: false,
        backgroundColor: Colors.transparent,
        selectedColor: Colors.transparent,
        onSelected: (value) {},
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildChip(context, "All"),
        SizedBox(width: 8.h), // Spasi horizontal antara tombol
        buildChip(context, "Ongoing"),
        SizedBox(width: 8.h), // Spasi horizontal antara tombol
        buildChip(context, "Completed"),
      ],
    );
  }
}
