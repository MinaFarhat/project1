import 'package:flutter/material.dart';
import 'package:project1/shared/styes/colors.dart';

class SearchOf extends StatelessWidget {
  const SearchOf({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios_new_rounded,
                    size: 30,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                Text(
                  "Graphic Design",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: defaultColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.italic,
                  ),
                ),
               // SizedBox(width: 10),
                CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/interests/graphic_design.jpg',
                  ),
                  radius: 30,
                ),
              ],
            ),
            Divider(
              color: Color(0xff9a9ea4),
              thickness: 1,
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
