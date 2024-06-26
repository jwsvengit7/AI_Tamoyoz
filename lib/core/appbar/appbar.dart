import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ai_tamayoz/core/colors/color.dart';



///[shouldPop] is used to know whether to pop to previous screen or just switch to dashboard in main nav

class TamayozLoanAppBar extends ConsumerWidget implements PreferredSizeWidget {
  const TamayozLoanAppBar({
    super.key,
    this.leading,
    this.title,
    this.bottom,
    this.shouldPop = false,
    this.automaticallyImplyLeading = true,
    this.preferredSize = const Size.fromHeight(70),
    this.onBack,
  });
  final Widget? leading;
  final PreferredSize? bottom;
  final String? title;
  final bool shouldPop;
  final bool automaticallyImplyLeading;
  final VoidCallback? onBack;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppBar(
      elevation: 0.0,
      backgroundColor: TamayozLoanColors.white,
      leadingWidth: MediaQuery.of(context).size.width,
      bottom: bottom,
      automaticallyImplyLeading: automaticallyImplyLeading,
      leading: _buildLeading(context),
      title: Text(
        title ?? "",
        style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 24,
            color: TamayozLoanColors.black1),
      ),
    );
  }

  @override
  final Size preferredSize;

  Widget _buildLeading(BuildContext context) {
    if (!automaticallyImplyLeading) return const SizedBox.shrink();

    if (leading != null) return leading!;

    Null Function() callback;
    if (shouldPop) {
      callback = () {
        Navigator.pop(context);
      };
    } else {
      callback = () {
        // context.read<DashboardBloc>().add(
        //       const DashboardEvent.switchToDashboard(),
        //     );
      };
    }

    return SizedBox(
      width: double.infinity,
      height: 40,
      // color: Colors.red,
      child:   Padding(
      padding: EdgeInsets.only(left: 10.w,right: 10.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:[
          
          IconButton(
          onPressed: onBack ?? callback,
          icon: const Row(
            children: [
              Icon(
                Icons.chevron_left,
                size: 35,
              ),
              SizedBox(height: 5,),
              Text(
                'Back',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 17,
                  color: TamayozLoanColors.black1,
                ),
              ),
            ],
          ),
        ),



          TextButton(
          onPressed: onBack ?? callback,
          child: const Text("Skip",  style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 17,
                  color: TamayozLoanColors.black1,
                ),),
         
        ),

        ]
      ),
    ),
    );
  
  
  
  }
}
