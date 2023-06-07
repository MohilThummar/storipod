import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

import 'package:get/get.dart';
import 'package:storipod_app/app/modules/createAccount/userdetail/views/userdetail_view.dart';

import '../../../../common/app_button.dart';
import '../../../../common/app_text_field.dart';
import '../../../../common/appbar.dart';
import '../../../../constant/colour.dart';
import '../../../../constant/string.dart';
import '../../../login/views/login_view.dart';
import '../controllers/username_controller.dart';

class UsernameView extends GetView<UsernameController> {
  const UsernameView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(UsernameController());
    return Scaffold(
      backgroundColor: ColorPicker.whiteColor,
      appBar: appbarWithSkip(context: context, icon: true, onTaped: () {}),
      body: Padding(
        padding: const EdgeInsets.all(26.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 10.h,
              ),

              Text(
                AppStrings.chooseUserName,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 24.sp,
                    color: ColorPicker.blackColor),
              ),
              SizedBox(
                height: 12.h,
              ),
              Text(
                AppStrings.preferredName,
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14.sp,
                    color: ColorPicker.subBlackColor),
              ),
              SizedBox(
                height: 58.h,
              ),
              CustomTextField(
                padding: EdgeInsets.all(16),
                fillColor: ColorPicker.lightWhiteColor,
                isDense: true,
                suffixIconData1: Icon(null),
                boderColor: ColorPicker.boderBlackColor,
                controller: controller.userNameController,
                hintText: AppStrings.enterUsername,
                onTap: () {},
                inputType: TextInputType.emailAddress,
              ),
              // TypeAheadField(
              //   textFieldConfiguration: TextFieldConfiguration(
              //       autofocus: true,
              //       style: DefaultTextStyle.of(context).style.copyWith(
              //           fontStyle: FontStyle.italic
              //       ),
              //       decoration: InputDecoration(
              //           border: OutlineInputBorder()
              //       )
              //   ),
              //   suggestionsCallback: (pattern) async {
              //     return Container();
              //     // return await BackendService.getSuggestions(pattern);
              //   },
              //   itemBuilder: (context, suggestion) {
              //     return ListTile(
              //       leading: Icon(Icons.shopping_cart),
              //       title: Text("name"),
              //       subtitle: Text('enter user name'),
              //     );
              //   },
              //   onSuggestionSelected: (suggestion) {
              //     // Navigator.of(context).push(MaterialPageRoute(
              //     //     builder: (context) => ProductPage(product: suggestion)
              //     // ));
              //   },
              // ),
              SizedBox(
                height: 27.h,
              ),
              ButtonWidget(redius: 10,
                context: context,
                height: 55,
                width: 335,
                onPressed: () {
                  Get.to(UserdetailView());
                },
                textColor: ColorPicker.blackColor,
                title: AppStrings.proceed,
                fontSize: 16.sp,
                bgColor: ColorPicker.offGreyColor,
                disableColor: ColorPicker.appButtonColor,
              ),

              SizedBox(
                height: 355.h,
              ),
              InkWell(
                onTap: () {
                  Get.to(LoginView());
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                      overflow: TextOverflow.clip,
                      textAlign: TextAlign.end,
                      textDirection: TextDirection.rtl,
                      text: TextSpan(
                        text: AppStrings.doYouHave,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12.sp,
                            color: ColorPicker.subBlackColor),
                        children: <TextSpan>[
                          TextSpan(
                            text: AppStrings.signIN,
                            style: TextStyle(
                                fontWeight: FontWeight.w800,
                                fontSize: 12.sp,
                                color: ColorPicker.skyColor),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
