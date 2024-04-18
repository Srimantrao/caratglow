// ignore_for_file: file_names, non_constant_identifier_names

import 'package:caratglow/view/utils/app_String.dart';
import 'package:caratglow/view/utils/widgets/Bodys/body_Container.dart';
import 'package:caratglow/view/utils/widgets/Container/Button/wideButtons.dart';
import 'package:caratglow/view/utils/widgets/Text/Signup/heding.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/CallApi/Collection/Address_details.dart';
import '../../../controller/CallApi/Collection/Sinup_Api.dart';
import '../../../modal/Collection/Sinup/Gender.dart';
import '../../utils/widgets/Textfild/Inputfild.dart';
import '../../utils/widgets/Textfild/Textdrop.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  countrylist contry = Get.put(countrylist());
  statelist state = Get.put(statelist());
  SinupApi Sinup = Get.put(SinupApi());

  TextEditingController fristname_controller = TextEditingController();
  TextEditingController lasname_controller = TextEditingController();
  TextEditingController email_controller = TextEditingController();
  TextEditingController mobile_controller = TextEditingController();
  TextEditingController street_controller = TextEditingController();
  TextEditingController city_controller = TextEditingController();
  TextEditingController Pin_code_controller = TextEditingController();
  TextEditingController password_controller = TextEditingController();
  TextEditingController cnf_pass_controller = TextEditingController();

  String Selectditem = 'Gender';

  @override
  void initState() {
    Future.microtask(() async {
      contry.countrylist_fuction();
      await state.StateList_Fuction('CountryId');
    });
    super.initState();
  }

  @override
  void dispose() {
    fristname_controller.dispose();
    lasname_controller.dispose();
    email_controller.dispose();
    mobile_controller.dispose();
    street_controller.dispose();
    city_controller.dispose();
    Pin_code_controller.dispose();
    password_controller.dispose();
    cnf_pass_controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body_Container(
        widget: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: Get.width / 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: Get.height / 40),
                  Text(
                    Signup_text.Sinup,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: Get.width / 18,
                    ),
                  ),
                  SizedBox(height: Get.height / 30),
                  const hedding(text: Signup_text.personalInformation),
                  SizedBox(height: Get.height / 45),

                  //Textfild
                  Inputfild(
                    hintText: Signup_text.E_Fisrname,
                    text: Signup_text.Fistname,
                    controller: fristname_controller,
                  ),
                  Inputfild(
                    hintText: Signup_text.E_Lastname,
                    text: Signup_text.Lastname,
                    controller: lasname_controller,
                  ),
                  Textdrop(
                    text: Signup_text.Gender,
                    child: DropdownButton(
                      underline: const SizedBox(),
                      isExpanded: true,
                      icon: const Icon(
                        CupertinoIcons.chevron_down,
                        size: 15,
                      ),
                      value: Selectditem,
                      items: items.map((String value) {
                        return DropdownMenuItem(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (String? Newvalue) {
                        if (Newvalue != null) {
                          Selectditem = Newvalue;
                        }
                        setState(() {});
                      },
                    ),
                  ),
                  SizedBox(height: Get.height / 30),
                  const hedding(text: Signup_text.Contact_Details),
                  SizedBox(height: Get.height / 30),
                  Inputfild(
                    hintText: Signup_text.E_Email_Address,
                    text: Signup_text.Email_Address,
                    controller: email_controller,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: Get.width / 2.6,
                        child: Textdrop(
                          text: Signup_text.code,
                          child: DropdownButton<String>(
                            icon: const Icon(
                              CupertinoIcons.chevron_down,
                              size: 15,
                            ),
                            isExpanded: true,
                            underline: const SizedBox(),
                            value: contry.selectedCountryId_code,
                            items: (contry.countrylist_data != null &&
                                    contry.countrylist_data['data'] != null)
                                ? contry.countrylist_data['data']
                                    .map<DropdownMenuItem<String>>((item) {
                                    return DropdownMenuItem(
                                      value: item['CountryId'].toString(),
                                      child: Text(item['Code'].toString()),
                                    );
                                  }).toList()
                                : [],
                            onChanged: (String? selectedValue) {
                              contry.selectedCountryId_code = selectedValue!;
                              setState(() {});
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        width: Get.width / 2,
                        child: Inputfild(
                          hintText: Signup_text.E_Email_Address,
                          text: Signup_text.Email_Address,
                          controller: mobile_controller,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: Get.height / 30),
                  const hedding(text: Signup_text.Address_Details),
                  SizedBox(height: Get.height / 45),
                  Inputfild(
                    hintText: Signup_text.E_Street,
                    text: Signup_text.Street,
                    controller: street_controller,
                  ),
                  Inputfild(
                    hintText: Signup_text.E_CITY,
                    text: Signup_text.CITY,
                    controller: city_controller,
                  ),
                  Inputfild(
                    hintText: Signup_text.E_Pin_code,
                    text: Signup_text.Pin_code,
                    controller: Pin_code_controller,
                  ),
                  Textdrop(
                    text: Signup_text.Country,
                    child: DropdownButton<String>(
                      value: state.selectedcontry,
                      underline: const SizedBox(),
                      items: (state.statelist_data != null &&
                              state.statelist_data['data'] != null)
                          ? state.statelist_data['data']
                              .map<DropdownMenuItem<String>>((value) {
                              return DropdownMenuItem(
                                value: value["CountryId"],
                                child: Text(value['Name']),
                              );
                            }).toList()
                          : [],
                      onChanged: (String? value) {
                        state.selectedcontry = value!;
                        setState(() {});
                      },
                    ),
                  ),
                  Textdrop(
                    text: Signup_text.State,
                    child: DropdownButton<String>(
                      value: state.selectedstate,
                      items: (state.statelist_data != null &&
                              state.statelist_data['data'] != null)
                          ? state.statelist_data['data']
                              .map<DropdownMenuItem<String>>((value) {
                              return DropdownMenuItem(
                                value: value['CountryId'].toString(),
                                child: Text(value['Name'].toString()),
                              );
                            }).toList()
                          : [],
                      onChanged: (String? selectedValue) {
                        state.selectedstate = selectedValue!;
                        setState(() {});
                      },
                    ),
                  ),
                  SizedBox(height: Get.height / 30),
                  const hedding(text: Signup_text.Contact_Details),
                  SizedBox(height: Get.height / 30),
                  Inputfild(
                    hintText: Signup_text.E_password,
                    text: Signup_text.password,
                    controller: password_controller,
                    suffixIcon: const Icon(Icons.visibility),
                  ),
                  Inputfild(
                    hintText: Signup_text.E_cnf_password,
                    text: Signup_text.E_password,
                    controller: cnf_pass_controller,
                    suffixIcon: const Icon(Icons.visibility),
                  ),
                  SizedBox(height: Get.height / 50),
                  Text(
                    Signup_text.Already,
                    style: TextStyle(
                      fontSize: Get.width / 24,
                    ),
                  ),
                  SizedBox(height: Get.height / 50),
                  Button(
                    onTap: () {
                      Sinup.Sinup_Fuction(
                        fristname_controller.text,
                        lasname_controller.text,
                        email_controller.text,
                        mobile_controller.text,
                        street_controller.text,
                        city_controller.text,
                        Pin_code_controller.text,
                        password_controller.text,
                      );
                    },
                    text: Signup_text.Sinup,
                  ),
                  SizedBox(height: Get.height / 30),

                  Obx(() {
                    if (Sinup.isloding.value) {
                      return const CircularProgressIndicator();
                    }
                    return const SizedBox.shrink();
                  }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
