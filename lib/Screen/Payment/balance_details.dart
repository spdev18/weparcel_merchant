import '/Controllers/balance_controller.dart';
import '/Screen/Parcel/clearable_parcel.dart';
import '/Screen/Payment/PaymentRequest/create_payment_request.dart';
import '/Screen/Widgets/button_global.dart';
import '/Screen/Widgets/shimmer/deliveryCharge_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nb_utils/nb_utils.dart';

import '../Widgets/constant.dart';

class BalanceDetails extends StatefulWidget {
  const BalanceDetails({Key? key}) : super(key: key);

  @override
  State<BalanceDetails> createState() => _BalanceDetailsState();
}

class _BalanceDetailsState extends State<BalanceDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainColor,
      appBar: AppBar(
        title: Text(
          'Balance Details'.tr,
          style: kTextStyle.copyWith(color: kBgColor,fontWeight: FontWeight.w600),
        ),
        backgroundColor: kMainColor,
        elevation: 0.0,
        iconTheme: const IconThemeData(color: kBgColor),
      ),
      body: GetBuilder<BalanceController>(
        init: BalanceController(),
        builder: (balanceController) {

          return Container(
              padding: const EdgeInsets.all(10.0),
              width: MediaQuery.of(context).size.width,
              height: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
                color: Colors.white,
              ),
              child: SingleChildScrollView(
                child: Container(
                  child: balanceController.loader? const DeliveryChargeShimmer() : Column(
                    children: [

                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                        margin: const EdgeInsets.symmetric(horizontal: 5,vertical: 10),
                        decoration: BoxDecoration(
                          color: kBorderColorTextField,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            const Text("Balance Details",style:TextStyle(fontSize: 17,color: kTitleColor,fontWeight: FontWeight.bold,)),
                            const SizedBox(height: 20,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text("Amount Delivered",style:TextStyle(fontSize: 15,color: kTitleColor,fontWeight: FontWeight.w500,)),
                                Text(balanceController.balanceDetails.amountDelivered!.toStringAsFixed(2),style:const TextStyle(fontSize: 15,color: kTitleColor,fontWeight: FontWeight.w500,)),
                              ],
                            ),
                            const SizedBox(height: 20,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text("Payable Delivery Charge",style:TextStyle(fontSize: 15,color: kTitleColor,fontWeight: FontWeight.w500,)),
                                Text(balanceController.balanceDetails.payableDeliveryCharge!.toStringAsFixed(2),style:const TextStyle(fontSize: 15,color: kTitleColor,fontWeight: FontWeight.w500,)),
                              ],
                            ),
                            const SizedBox(height: 20,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text("Sub Total",style:TextStyle(fontSize: 15,color: kTitleColor,fontWeight: FontWeight.w500,)),
                                Text(balanceController.balanceDetails.subTotal!.toStringAsFixed(2),style:const TextStyle(fontSize: 15,color: kTitleColor,fontWeight: FontWeight.w500,)),
                              ],
                            ),
                            const SizedBox(height: 20,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text("COD Charte",style:TextStyle(fontSize: 15,color: kTitleColor,fontWeight: FontWeight.w500,)),
                                Text(balanceController.balanceDetails.codCharge!.toStringAsFixed(2),style:const TextStyle(fontSize: 15,color: kTitleColor,fontWeight: FontWeight.w500,)),
                              ],
                            ),
                            const SizedBox(height: 25,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text("Available Balance",style:TextStyle(fontSize: 17,color: kTitleColor,fontWeight: FontWeight.w700,)),
                                Text(balanceController.balanceDetails.availableBalance!.toStringAsFixed(2),style:const TextStyle(fontSize: 17,color: kTitleColor,fontWeight: FontWeight.bold,)),
                              ],
                            ),
                            const SizedBox(height: 40,),
                            InkWell(
                              onTap: (){
                                const ClearableParcels().launch(context);
                              },
                              child: Container(
                                padding: const EdgeInsets.symmetric(vertical: 9,horizontal: 7),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(color: Colors.green,width: 2)
                                ),
                                child: Text("Cleanable Parcels (${balanceController.balanceDetails.clearableParcels})",textAlign: TextAlign.center,style:const TextStyle(fontSize: 18,color: Colors.green,fontWeight: FontWeight.w600,)),
                              ),

                            ),
                            const SizedBox(height: 20,),
                          ],
                        ),
                      ),
                      ButtonGlobal(
                          buttontext: 'payment_request'.tr,
                          buttonDecoration: kButtonDecoration.copyWith(boxShadow:  [BoxShadow(color: Colors.black.withOpacity(.2),blurRadius: 5,offset: const Offset(0,2))]),
                          onPressed: () {
                            CreatePaymentRequest(balanceDetails: balanceController.balanceDetails,).launch(context);
                          }),
                    ],
                  ),
                ),
              )
          );
        }
      ),
    );
  }
}
