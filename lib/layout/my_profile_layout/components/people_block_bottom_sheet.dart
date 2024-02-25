import 'package:flutter/material.dart';
import 'package:project1/layout/my_profile_layout/components/block_people_item.dart';
import 'package:project1/shared/styes/colors.dart';

Widget peopleBlockBottomSheet(context) => Column(
      children: [
        Divider(
          color: defaultColor,
          thickness: 4,
          height: 20,
          indent: MediaQuery.of(context).size.width / 2 - 30,
          endIndent: MediaQuery.of(context).size.width / 2 - 30,
        ),
        Expanded(
          child: ListView.separated(
            itemCount: 10,
            itemBuilder: (context, index) => blockPeopleItem(
              image: 'assets/images/interests/animal.jpg',
              name: "Mina farhat",
            ),
            separatorBuilder: (context, index) => Divider(
              height: 15,
            ),
          ),
        ),
      ],
    );
