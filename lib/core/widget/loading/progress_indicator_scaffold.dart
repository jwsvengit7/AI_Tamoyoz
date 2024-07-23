import 'package:ai_tamayoz/core/buttons/Tamayozbuttons.dart';
import 'package:ai_tamayoz/core/colors/color.dart';
import 'package:ai_tamayoz/core/widget/text_field/search_text_field.dart';
import 'package:ai_tamayoz/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import 'loading_dialog_widget.dart';

class ProgressIndicatorPage extends StatelessWidget {
  const ProgressIndicatorPage({
    super.key,
    required this.child,
    this.isLoading = false,
    this.message = "",
  });

  final bool isLoading;
  final Widget child;
  final String message;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        Visibility(
          visible: isLoading,
          replacement: const SizedBox.shrink(),
          child: LoadingDialogWidget(
            message: message,
          ),
        )
      ],
    );
  }
}



class ProgressIndicatorPage2 extends StatelessWidget {
  const ProgressIndicatorPage2({
    super.key,
    required this.child,
    required this.onTap,
    this.isLoading = false,
    this.message = "",

  });

  final bool isLoading;
  final Widget child;
  final String message;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          child,
          InkWell(
              onTap: onTap,
            child: Container(
              alignment: Alignment.center,
                  color: TamayozLoanColors.black1.withOpacity(0.4),
                 
                  
                  //  borderRadius: BorderRadius.circular(10),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        width:MediaQuery.of(context).size.width,
                        height: 400.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                                    color:Colors.white,
                      
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text("Bid Amount"),
                            ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: TamayozSearchTextField(
                                         controller: TextEditingController(),
                                                                   type: "email",
                                
                                        hintText: "Bid Amount",
                                        // passwordField: true,
                                        ),
                              ),
            
                                        Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: TamayozLoanButtons(
                                              context: context,
                                              onTap: () {},
                                              text: "Submit",
                                              textColor: TamayozLoanColors.white,
                                              color: TamayozLoanColors.black1)
                                          .normal(),
                                    ),
            
            
                           
                            
                          ],
                        ),
                      ),
                    ),
                  
            ),
          )
        ],
      ),
    );
  }
}
