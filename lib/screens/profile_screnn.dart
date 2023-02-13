import 'dart:developer';


import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:quizapp/widgets/show_snack_bar.dart';

import '../const.dart';
import '../utls/textfled.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  Map<String, dynamic>? data;
  String imageURL = '';
  XFile? image;
  

  Future imgFromGallery() async {
    ImagePicker pickImage = ImagePicker();
    XFile? file = await pickImage.pickImage(source: ImageSource.gallery);
    if (file != null) {
      return await file.readAsBytes();
      log(file.path);
    } else {
      print('No Image selected');
    }
  }

  bool _isLoading = false;
  TextEditingController fullname = TextEditingController();

  TextEditingController password = TextEditingController();
  TextEditingController gt = TextEditingController();

  String? _uid;
  String? _email;
  String? _fullname;

  String? _gt;

  @override
  void initState() {
    super.initState();
    
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(top: 50.0),
          child: Stack(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 80.8),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 100,
                    ),
                    FutureBuilder(
                      
                      builder: (context, snapshot) => Container(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: <Widget>[
                            TextFieldWidget(
                              readOnly: true,
                              hintText: _email.toString(),
                              iconData: Icons.email,
                              color: Colors.black,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            TextFieldWidget(
                                readOnly: false,
                                onChange: () {},
                                hintText: _fullname.toString(),
                                iconData: Icons.person,
                                color: Colors.black,
                                controller: fullname),
                            const SizedBox(
                              height: 20,
                            ),
                            TextFieldWidget(
                              readOnly: false,
                              onChange: () {},
                              maxLines: 3,
                              hintText: _gt.toString(),
                              iconData: Icons.info,
                              color: Colors.black,
                              controller: gt,
                            ),
                            const SizedBox(
                              height: 30,
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
                                    updateUser(
                                      fullname.text.trim(),
                                      gt.text.trim(),
                                    );
                                    showSnackBar(
                                        'Cập nhật thành công', context);
                                    setState(() {
                                      _isLoading = false;
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
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width - 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: buttonColorDanger,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: InkWell(
                                  onTap: () {
                                    _signout(context);
                                    showSnackBar('Đăng xuất', context);
                                  },
                                  child: Text(
                                    'Đăng xuất',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20,
                                      color: textButton,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
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
        ),
      ),
    );
  }

  void _showPicker(context) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          // ignore: avoid_unnecessary_containers
          return Container(
            child: Wrap(children: <Widget>[
              ListTile(
                leading: const Icon(Icons.photo_library),
                title: const Text('Thu vien anh'),
                onTap: () {
                  imgFromGallery();
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                leading: const Icon(Icons.photo_camera),
                title: const Text('Chup anh'),
                onTap: () {
                 
                  Navigator.of(context).pop();
                },
              ),
            ]),
          );
        });
  }

  

  Future<void> updateUser(String fullname, String gt) async {
    // String downloadURL = await _uploadImageToStorage(image);

   
  }

  Future _signout(context) async {
   
  }
}
