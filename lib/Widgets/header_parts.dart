import 'package:adstack/Utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:adstack/Config/responsive.dart'; // Assuming you have this class
import 'header_action_items.dart'; // Import the new file

class HeaderParts extends StatelessWidget {
  const HeaderParts({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Home",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  height: 1.3,
                  color: Colors.black54,  // Or your custom color
                ),
              ),
            ],
          ),
        ),
        const Spacer(flex: 1),
        Expanded(
          flex: Responsive.isDesktop(context) ? 1 : 3,
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor:  MyAppColors.DarBlue,
              contentPadding: const EdgeInsets.only(left: 40, right: 5),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(color:MyAppColors.DarBlue),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(color: Colors.white),
              ),
              suffixIcon: const Icon(Icons.search, color:Colors.white),
              hintText: "Search",
              hintStyle: const TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
          ),
        ),
        const SizedBox(width: 20),
        HeaderActionItems(),
      ],
    );
  }
}
