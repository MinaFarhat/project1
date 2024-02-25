import 'package:flutter/material.dart';
import 'package:project1/models/interstes/interests_model.dart';
import 'package:project1/module/edit_post/components/choose_post_image_buttom_sheet.dart';
import 'package:project1/module/edit_post/components/validator_snack_bar_interests.dart';
import 'package:project1/module/edit_post/cubit/edit_post_cubit.dart';
import 'package:project1/module/intersts/components/item_Interest.dart';
import 'package:project1/shared/components/components.dart';
import 'package:project1/shared/components/interests_name_item.dart';
import 'package:project1/shared/components/size_config.dart';
import 'package:project1/shared/styes/colors.dart';

class AddPost11 extends StatefulWidget {
  const AddPost11({ Key? key }) : super(key: key);

  @override
  State<AddPost11> createState() => _AddPost11State();
}

class _AddPost11State extends State<AddPost11> {
  @override
  Widget build(BuildContext context) {
      EditPostCubit cubit = EditPostCubit.get(context);
    return SafeArea(
            child: Scaffold(
              body: Column(
                children: [
                  SizedBox(
                    height: getProportionateScreenHeight(10),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.arrow_back_ios_new_rounded,
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      Text(
                        "Edit Post",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      TextButton(
                        // TODO:
                        style: ButtonStyle(
                          overlayColor: MaterialStateProperty.all(
                            defaultColor.withOpacity(0.1),
                          ),
                        ),
                        onPressed: () {
                          if (cubit.postEditImage == null) {
                            showToast(
                              text: 'It must contain an image',
                              state: ToastState.ERROR,
                             // gravity: ToastGravity.CENTER,
                            );
                          }
                        },
                        child: Text(
                          "SAVE",
                          style: TextStyle(
                            color: defaultColor,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    color: hintFieldColor,
                    thickness: 1,
                  ),
                  Expanded(
                    child: ListView(
                      physics: BouncingScrollPhysics(),
                      children: [
                        Container(
                          padding: EdgeInsets.all(20),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage: AssetImage(
                                      //TODO: Add a images publisher
                                      'assets/images/interests/art.jpg',
                                    ),
                                  ),
                                  SizedBox(
                                      width: getProportionateScreenWidth(8)),
                                  Text(
                                    //TODO: Add a name publisher
                                    "Mauricio Lopez",
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 17,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                  height: getProportionateScreenHeight(25)),
                              TextFormField(
                               // controller: postController,
                                decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: defaultColor),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: defaultColor),
                                  ),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(color: defaultColor),
                                  ),
                                  hintText: "Enter your Description",
                                ),
                                maxLines: null,
                              ),
                              SizedBox(
                                height: getProportionateScreenHeight(15),
                              ),
                              cubit.postEditImage == null
                                  ? InkWell(
                                      onTap: () {
                                        showModalBottomSheet(
                                          context: context,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.vertical(
                                                top: Radius.circular(20)),
                                          ),
                                          builder: (builder) =>
                                              choosePostImageButtomSheet(
                                            context: context,
                                            cubit: cubit,
                                          ),
                                        );
                                      },
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.asset(
                                          'assets/images/image.png',
                                          width:
                                              getProportionateScreenWidth(329),
                                          height:
                                              getProportionateScreenHeight(295),
                                          // width: 329,
                                          // height: 295,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    )
                                  : Stack(
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          child: Image.file(
                                            cubit.postEditImage!,
                                            width: getProportionateScreenWidth(
                                                329),
                                            height:
                                                getProportionateScreenHeight(
                                                    295),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        IconButton(
                                            onPressed: () {
                                              cubit.deletePostEditImage();
                                            },
                                            icon: Icon(
                                              Icons.cancel,
                                              size: 30,
                                              color: Colors.black54,
                                            )),
                                      ],
                                    ),
                              SizedBox(height: getProportionateScreenHeight(5)),
                              Row(
                                children: [
                                  Wrap(
                                    children: cubit.selected.isNotEmpty
                                        ? List.generate(
                                            cubit.selected.length,
                                            (index) {
                                              return interestsNameItem(
                                                interestsName[index],
                                              );
                                            },
                                          )
                                        : [
                                            interestsNameItem(
                                              "Interest",
                                            ),
                                          ],

                                    // interests("Graphic Design"),
                                    // ],
                                  ),
                                  Spacer(),
                                  IconButton(
                                    onPressed: () {
                                      cubit.changeShowInterste();
                                    },
                                    icon: Icon(
                                      cubit.iconshowInterste,
                                      size: 35,
                                      color: defaultColor,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: getProportionateScreenHeight(5),
                              ),
                              cubit.showInterste
                                  ? SizedBox(
                                      height: getProportionateScreenHeight(165),
                                      child: ListView.separated(
                                        scrollDirection: Axis.horizontal,
                                        separatorBuilder: (context, index) =>
                                            SizedBox(width: 5),
                                        itemCount: interestsName.length,
                                        itemBuilder: (context, index) =>
                                            buildInterestItem(
                                          index: index,
                                          interestsName: interestsName[index],
                                          interestsImage: interestsImage[index],
                                          selected: cubit.selected,
                                          ontap: () {
                                            if (cubit.selected.length < 2) {
                                              cubit.changeInterstsSelected(
                                                  index);
                                            } else if (cubit.selected.length >=
                                                    2 &&
                                                cubit.selected
                                                    .contains(index)) {
                                              cubit.changeInterstsSelected(
                                                  index);
                                            } else {
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                      validatorSnackBarInterests);
                                            }
                                          },
                                        ),
                                      ),
                                    )
                                  : Container(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
  }
}