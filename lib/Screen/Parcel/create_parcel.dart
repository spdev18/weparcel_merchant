import '../../services/api-list.dart';
import '/Screen/Widgets/button_global.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../Controllers/parcel_controller.dart';
import '../../Models/parcel_crate_model.dart';
import '../../utils/size_config.dart';
import '../Widgets/constant.dart';
import '../Widgets/loader.dart';

class CreateParcel extends StatefulWidget {
  const CreateParcel({Key? key}) : super(key: key);

  @override
  State<CreateParcel> createState() => _CreateParcelState();
}

class _CreateParcelState extends State<CreateParcel> {
  ParcelController parcelController = Get.put(ParcelController());
  final _formKey = GlobalKey<FormState>();
  final TextEditingController weightController = TextEditingController();

  List<String> deliveryType = [
    'Same Day',
    'Next Day',
    'Sub City',
    'Outside City',
  ];
  String type = 'Same Day';

  DropdownButton<String> selectType() {
    List<DropdownMenuItem<String>> dropDownItems = [];
    for (String des in deliveryType) {
      var item = DropdownMenuItem(
        value: des,
        child: Text(des),
      );
      dropDownItems.add(item);
    }
    return DropdownButton(
      items: dropDownItems,
      value: type,
      onChanged: (value) {
        setState(() {
          type = value!;
          Get.find<ParcelController>().deliveryTypID = type;
        });
      },
    );
  }

  @override
  void initState() {
    parcelController.crateParcel();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfigCustom sizeConfig = SizeConfigCustom();
    sizeConfig.init(context);
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: kMainColor,
        appBar: AppBar(
          titleSpacing: 0,
          title: Text(
            'create_parcel'.tr,
            style: kTextStyle.copyWith(color: kBgColor),
          ),
          leading: IconButton(
              onPressed: () {
                Get.back();
                Get.find<ParcelController>().clearAll();
              },
              icon: const Icon(
                Icons.arrow_back,
                color: kBgColor,
              )),
          backgroundColor: kMainColor,
          elevation: 0.0,
          iconTheme: const IconThemeData(color: kBgColor),
        ),
        body: GetBuilder<ParcelController>(
            init: ParcelController(),
            builder: (parcel) => Stack(children: [
                  Center(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          const SizedBox(height: 30.0),
                          Container(
                            padding: const EdgeInsets.all(10.0),
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              border: Border.all(color: kGreyTextColor.withOpacity(0.2)),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(30.0),
                                topRight: Radius.circular(30.0),
                              ),
                              color: Colors.white,
                            ),
                            child: Form(
                                key: _formKey,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(height: 20.0),
                                    Text(
                                      'Create Parcel',
                                      style: kTextStyle.copyWith(color: kTitleColor, fontWeight: FontWeight.bold, fontSize: 18.0),
                                    ),
                                    const SizedBox(height: 20.0),
                                    Text(
                                      'Sender Phone',
                                      style: kTextStyle.copyWith(color: kTitleColor),
                                    ),
                                    const SizedBox(height: 5.0),
                                    AppTextField(
                                      onChanged: (value) {
                                        setState(() {
                                          parcel.pickupPhone = parcel.pickupPhoneController.text;
                                        });
                                      },
                                      controller: parcel.pickupPhoneController
                                        ..text = parcel.pickupPhone.toString()
                                        ..selection = TextSelection.collapsed(offset: parcel.pickupPhoneController.text.length),
                                      showCursor: true,
                                      validator: (value) {
                                        if (parcel.pickupPhoneController.text.isEmpty) {
                                          return "Please enter sender phone number";
                                        }
                                        return null;
                                      },
                                      cursorColor: kTitleColor,
                                      textFieldType: TextFieldType.PHONE,
                                      decoration: kInputDecoration.copyWith(
                                        hintText: 'Enter sender phone number',
                                        hintStyle: kTextStyle.copyWith(color: kGreyTextColor),
                                      ),
                                    ),
                                    const SizedBox(height: 20.0),
                                    Text(
                                      'Sender Name & Address',
                                      style: kTextStyle.copyWith(color: kTitleColor),
                                    ),
                                    const SizedBox(height: 5.0),
                                    AppTextField(
                                      onChanged: (value) {
                                        setState(() {
                                          parcel.pickupAddress = parcel.pickupAddressController.text;
                                        });
                                      },
                                      controller: parcel.pickupAddressController
                                        ..text = parcel.pickupAddress.toString()
                                        ..selection = TextSelection.collapsed(offset: parcel.pickupAddressController.text.length),
                                      showCursor: true,
                                      maxLines: 2,
                                      validator: (value) {
                                        if (parcel.pickupAddressController.text.isEmpty) {
                                          return "Please enter sender address";
                                        }
                                        return null;
                                      },
                                      cursorColor: kTitleColor,
                                      textFieldType: TextFieldType.MULTILINE,
                                      decoration: kInputDecoration.copyWith(
                                        hintText: 'Enter sender address',
                                        hintStyle: kTextStyle.copyWith(color: kGreyTextColor),
                                      ),
                                    ),
                                    const SizedBox(height: 20.0),
                                    Text(
                                      'Weight*',
                                      style: kTextStyle.copyWith(color: kTitleColor),
                                    ),
                                    const SizedBox(height: 5.0),
                                    AppTextField(
                                      onChanged: (value) {},
                                      controller: weightController,
                                      showCursor: true,
                                      cursorColor: kTitleColor,
                                      textFieldType: TextFieldType.NUMBER,
                                      decoration: kInputDecoration.copyWith(
                                        hintText: 'Enter weight in KG',
                                        hintStyle: kTextStyle.copyWith(color: kGreyTextColor),
                                      ),
                                    ),
                                    const SizedBox(height: 20.0),
                                    Text(
                                      'Invoice#',
                                      style: kTextStyle.copyWith(color: kTitleColor),
                                    ),
                                    const SizedBox(height: 5.0),
                                    AppTextField(
                                      onChanged: (value) {},
                                      controller: parcel.invoiceController,
                                      showCursor: true,
                                      cursorColor: kTitleColor,
                                      textFieldType: TextFieldType.NAME,
                                      decoration: kInputDecoration.copyWith(
                                        hintText: 'Enter invoice number',
                                        hintStyle: kTextStyle.copyWith(color: kGreyTextColor),
                                      ),
                                    ),
                                    const SizedBox(height: 20.0),
                                    Text(
                                      'Cash Collection (If Applicable)',
                                      style: kTextStyle.copyWith(color: kTitleColor),
                                    ),
                                    const SizedBox(height: 5.0),
                                    AppTextField(
                                      onChanged: (value) {},
                                      controller: parcel.cashCollectionController,
                                      showCursor: true,
                                      cursorColor: kTitleColor,
                                      textFieldType: TextFieldType.NUMBER,
                                      decoration: kInputDecoration.copyWith(
                                        hintText: 'Cash Amount',
                                        hintStyle: kTextStyle.copyWith(color: kGreyTextColor),
                                      ),
                                    ),
                                    const SizedBox(height: 20.0),
                                    Text(
                                      'Parcel Type',
                                      style: kTextStyle.copyWith(color: kTitleColor, fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(height: 10.0),
                                    Row(
                                      children: [
                                        Checkbox(
                                          value: parcel.isLiquidChecked,
                                          onChanged: (value) {
                                            setState(() {
                                              parcel.isLiquidChecked = value ?? false;
                                            });
                                          },
                                          activeColor: kMainColor,
                                        ),
                                        Text(
                                          'Liquid/Fragile',
                                          style: kTextStyle.copyWith(color: kTitleColor),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 20.0),
                                    Text(
                                      'Receiver Name*',
                                      style: kTextStyle.copyWith(color: kTitleColor),
                                    ),
                                    const SizedBox(height: 5.0),
                                    AppTextField(
                                      onChanged: (value) {},
                                      controller: parcel.customerController,
                                      showCursor: true,
                                      cursorColor: kTitleColor,
                                      textFieldType: TextFieldType.NAME,
                                      decoration: kInputDecoration.copyWith(
                                        hintText: 'Receiver Name',
                                        hintStyle: kTextStyle.copyWith(color: kGreyTextColor),
                                      ),
                                    ),
                                    const SizedBox(height: 20.0),
                                    Text(
                                      'Receiver Phone*',
                                      style: kTextStyle.copyWith(color: kTitleColor),
                                    ),
                                    const SizedBox(height: 5.0),
                                    AppTextField(
                                      onChanged: (value) {},
                                      controller: parcel.customerPhoneController,
                                      showCursor: true,
                                      cursorColor: kTitleColor,
                                      textFieldType: TextFieldType.PHONE,
                                      decoration: kInputDecoration.copyWith(
                                        hintText: 'Receiver phone',
                                        hintStyle: kTextStyle.copyWith(color: kGreyTextColor),
                                      ),
                                    ),
                                    const SizedBox(height: 20.0),
                                    Text(
                                      'Note',
                                      style: kTextStyle.copyWith(color: kTitleColor),
                                    ),
                                    const SizedBox(height: 5.0),
                                    AppTextField(
                                      onChanged: (value) {},
                                      controller: parcel.noteController,
                                      showCursor: true,
                                      maxLines: 3,
                                      cursorColor: kTitleColor,
                                      textFieldType: TextFieldType.MULTILINE,
                                      decoration: kInputDecoration.copyWith(
                                        hintText: 'Enter note',
                                        hintStyle: kTextStyle.copyWith(color: kGreyTextColor),
                                      ),
                                    ),
                                    const SizedBox(height: 20.0),
                                    Text(
                                      'Receiver Address*',
                                      style: kTextStyle.copyWith(color: kTitleColor),
                                      ),

                                    
                                    const SizedBox(height: 5.0),
                                    // Customer Address Input
                                    AppTextField(
                                      onChanged: (value) {},
                                      controller: parcel.customerAddressController,
                                      showCursor: true,
                                      maxLines: 2,
                                      cursorColor: kTitleColor,
                                      textFieldType: TextFieldType.MULTILINE,
                                      decoration: kInputDecoration.copyWith(
                                        hintText: 'Enter receiver address',
                                        hintStyle: kTextStyle.copyWith(color: kGreyTextColor),
                                      ),
                                    ),
                                    const SizedBox(height: 20.0),
                                    // Cancel and Save buttons
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          height: 40,
                                          width: 100,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(20),
                                            color: Colors.grey[200],
                                          ),
                                          child: Center(
                                            child: Text(
                                              'Cancel',
                                              style: kTextStyle.copyWith(color: kTitleColor),
                                            ),
                                          ),
                                        ).onTap(() {
                                          Get.back();
                                          Get.find<ParcelController>().clearAll();
                                        }),
                                        const SizedBox(width: 10),
                                        Container(
                                          height: 40,
                                          width: 100,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(20),
                                            color: kMainColor,
                                          ),
                                          child: Center(
                                            child: Text(
                                              'Save',
                                              style: kTextStyle.copyWith(color: Colors.white),
                                            ),
                                          ),
                                        ).onTap(() {
                                          if (_formKey.currentState!.validate()) {
                                            if (parcel.customerAddressController.text.isNotEmpty) {
                                              parcel.parcelPost();
                                            } else {
                                              Get.rawSnackbar(
                                                message: "Please Enter Receiver Address", 
                                                backgroundColor: Colors.red, 
                                                snackPosition: SnackPosition.TOP
                                              );
                                            }
                                          }
                                        }),
                                      ],
                                    ),
                                  ],
                                )),
                          ),
                        ],
                      ),
                    ),
                  ),
                  parcel.loaderParcel
                      ? Positioned(
                          child: Container(height: MediaQuery.of(context).size.height, width: MediaQuery.of(context).size.width, color: Colors.white60, child: const Center(child: LoaderCircle())),
                        )
                      : const SizedBox.shrink(),
                ])));
  }
}
