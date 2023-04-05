import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quizapp/controllers/edit_user.dart';
import 'package:quizapp/widgets/show_snack_bar.dart';
import '../const.dart';
import '../provider/user.dart';
import '../utls/textfled.dart';
import 'package:intl/intl.dart';

class ProfileScreen extends ConsumerStatefulWidget {
  final int id;
  const ProfileScreen({super.key, required this.id});

  @override
  ConsumerState<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends ConsumerState<ProfileScreen> {
  bool _isLoading = false;
  TextEditingController fullname = TextEditingController();

  TextEditingController password = TextEditingController();
  TextEditingController ngaysinh = TextEditingController();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final info = ref.watch(userProvider(widget.id));
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: info.when(
            data: (data) => Stack(
                  children: <Widget>[
                    // Container(
                    // margin: const EdgeInsets.only(top: 80.8),
                    // width: MediaQuery.of(context).size.width,
                    // height: MediaQuery.of(context).size.height,
                    Column(
                      children: [
                        // const SizedBox(
                        //   height: 100,
                        // ),
                        Container(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            children: <Widget>[
                              TextFieldWidget(
                                readOnly: true,
                                hintText: data!.account,
                                iconData: Icons.email,
                                color: Colors.black,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              TextFieldWidget(
                                  readOnly: false,
                                  onChange: () {},
                                  hintText: data.hoten,
                                  iconData: Icons.person,
                                  color: Colors.black,
                                  controller: fullname),
                              const SizedBox(
                                height: 20,
                              ),
                              TextField(
                                keyboardType: TextInputType.datetime,
                                controller: ngaysinh,
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.all(20),
                                  hintStyle:
                                      const TextStyle(color: Colors.black),
                                  filled: true,
                                  hintText: data.age,
                                  prefixIcon: const Icon(Icons.date_range),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                                onTap: () {
                                  log(data.age);
                                  print("$ngaysinh");
                                  FocusScope.of(context)
                                      .requestFocus(FocusNode());
                                  DatePicker.showDatePicker(context,
                                      showTitleActions: true,
                                      minTime: DateTime(1950, 1, 1),
                                      maxTime: DateTime.now(),
                                      onChanged: (date) {
                                    ngaysinh.text =
                                        DateFormat('dd/MM/yyyy').format(date);
                                  }, onConfirm: (date) {
                                    ngaysinh.text =
                                        DateFormat('dd/MM/yyyy').format(date);
                                  },
                                      onCancel: () {},
                                      currentTime: DateTime.now(),
                                      locale: LocaleType.vi);
                                },
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  TextButton(
                                      onPressed: () {
                                        TextEditingController matkhauhientai =
                                            TextEditingController();
                                        TextEditingController matkhaumoi =
                                            TextEditingController();
                                        TextEditingController nhapmatkhaumoi =
                                            TextEditingController();
                                        doiMatkhau(
                                            context,
                                            'Nhập mật khẩu hiện tại',
                                            'Nhập mật khẩu mới',
                                            'Nhập lại mật khẩu',
                                            matkhauhientai,
                                            matkhaumoi,
                                            nhapmatkhaumoi);
                                      },
                                      child: const Text(
                                        'Đổi mật khẩu',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                      ))
                                ],
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width - 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: buttonColor,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: InkWell(
                                    onTap: () async {
                                      setState(() {
                                        _isLoading = true;
                                      });

                                      final edit = await ref
                                          .watch(editUserControllerProvider)
                                          .editUser(
                                              widget.id,
                                              fullname.text.trim(),
                                              ngaysinh.text.trim());
                                      // ignore: unrelated_type_equality_checks
                                      ref.invalidate(userProvider);
                                      setState(() {
                                        _isLoading = false;
                                        edit == true
                                            ? showSnackBar(
                                                'Cập nhật thành công', context)
                                            : showSnackBar(
                                                'Cập nhật that bai', context);
                                      });
                                    },
                                    child: _isLoading
                                        ? Center(
                                            child: CircularProgressIndicator(
                                              color: textButton,
                                            ),
                                          )
                                        : Text(
                                            'Cập nhật thông tin',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 20,
                                              color: textButton,
                                            ),
                                          ),
                                  ),
                                ),
                              ),
                              // const SizedBox(
                              //   height: 20,
                              // ),
                              // Container(
                              //   width: MediaQuery.of(context).size.width - 50,
                              //   height: 50,
                              //   decoration: BoxDecoration(
                              //     color: buttonColorDanger,
                              //     borderRadius: BorderRadius.circular(10),
                              //   ),
                              //   child: Center(
                              //     child: InkWell(
                              //       onTap: () async {
                              //         showSnackBar('Đăng xuất', context);
                              //         context.router.replaceNamed('/');
                              //       },
                              //       child: Text(
                              //         'Đăng xuất',
                              //         style: TextStyle(
                              //           fontWeight: FontWeight.w500,
                              //           fontSize: 20,
                              //           color: textButton,
                              //         ),
                              //       ),
                              //     ),
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    // ),
                    // Align(
                    //   alignment: Alignment.topCenter,
                    //   child: Stack(children: [
                    //     ClipOval(
                    //       child: _image == null
                    //           ? Image.network(
                    //               "https://cdn1.vectorstock.com/i/thumb-large/62/60/default-avatar-photo-placeholder-profile-image-vector-21666260.jpg",
                    //               width: 150,
                    //               height: 150,
                    //               fit: BoxFit.cover,
                    //             )
                    //           : Image.network(
                    //               _image.toString(),
                    //               width: 150,
                    //               height: 150,
                    //               fit: BoxFit.cover,
                    //             ),
                    //     ),
                    //     Positioned(
                    //       bottom: 6,
                    //       right: 15.5,
                    //       child: Container(
                    //         padding: const EdgeInsets.all(5),
                    //         decoration: const BoxDecoration(
                    //             color: Colors.blueGrey, shape: BoxShape.circle),
                    //         child: InkWell(
                    //           onTap: () {
                    //             _showPicker(context);
                    //           },
                    //           child: const Icon(
                    //             Icons.edit,
                    //             size: 30.0,
                    //           ),
                    //         ),
                    //       ),
                    //     ),
                    //   ]),
                    // ),
                  ],
                ),
            error: (error, stack) {
              return Text(error.toString());
            },
            loading: () => const Center(child: CircularProgressIndicator())),
      ),
    );
  }

  Future doiMatkhau(
    BuildContext context,
    String text1,
    String text2,
    String text3,
    TextEditingController controller1,
    TextEditingController controller2,
    TextEditingController controller3,
  ) {
    return showDialog(
        context: context,
        builder: (context) => Dialog(
              child: Container(
                height: 300,
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      'Đổi mật khẩu',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    TextFieldWidget(
                        readOnly: false,
                        hintText: text1,
                        iconData: Icons.lock,
                        color: Colors.black,
                        colorIcon: Colors.black,
                        controller: controller1),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFieldWidget(
                        readOnly: false,
                        hintText: text2,
                        iconData: Icons.lock,
                        color: Colors.black,
                        colorIcon: Colors.black,
                        controller: controller2),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFieldWidget(
                        readOnly: false,
                        hintText: text3,
                        iconData: Icons.lock,
                        colorIcon: Colors.black,
                        color: Colors.black,
                        controller: controller3),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(5)),
                      child: InkWell(
                        onTap: () async {
                          if (controller1 != controller2 &&controller2.text == controller3.text) {
                            setState(() {
                              _isLoading = true;
                            });
                            final check = await EditUserControler()
                                .editPassUser(
                                    widget.id, controller2.text.trim());
                            setState(() {
                              _isLoading = false;
                              check == true
                                  ? {showSnackBar('Cập nhật thành công', context),
                                  Future.delayed(const Duration(seconds: 1), () => context.router.replaceNamed('/'),)}
                                  : showSnackBar('Cập nhật thất bại', context);
                            });
                          } else {
                            showSnackBar(
                                'Mời bạn nhập lại mật khẩu cho đúng', context);
                          }
                        },
                        child: const Center(
                          child: Text(
                            'Lưu',
                            style:
                                TextStyle(color: Colors.yellow, fontSize: 15),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ));
  }
  // void _showPicker(context) {
  //   showModalBottomSheet(
  //       context: context,
  //       builder: (context) {
  //         // ignore: avoid_unnecessary_containers
  //         return Container(
  //           child: Wrap(children: <Widget>[
  //             ListTile(
  //               leading: const Icon(Icons.photo_library),
  //               title: const Text('Thu vien anh'),
  //               onTap: () {
  //                 // imgFromGallery();
  //                 Navigator.of(context).pop();
  //               },
  //             ),
  //             ListTile(
  //               leading: const Icon(Icons.photo_camera),
  //               title: const Text('Chup anh'),
  //               onTap: () {

  //                 Navigator.of(context).pop();
  //               },
  //             ),
  //           ]),
  //         );
  //       });
  // }
}
