import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';

import 'cubit/cubit.dart';
import 'cubit/states.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ShopCubit(),
      child: BlocConsumer<ShopCubit, ShopStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = ShopCubit.get(context);
          return Scaffold(
            body: cubit.screens[cubit.currentIndex],
            bottomNavigationBar: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
              child: CustomNavigationBar(
                strokeColor: Colors.orange,
                selectedColor: Colors.orange,
                borderRadius: Radius.circular(15.r),
                items: [
                  CustomNavigationBarItem(
                    icon: const Icon(Iconsax.home_outline),
                  ),
                  CustomNavigationBarItem(
                      icon: const Icon(Iconsax.lamp_charge_outline)),
                  CustomNavigationBarItem(
                    icon: const Icon(Iconsax.profile_tick_outline),
                  ),
                ],
                currentIndex: cubit.currentIndex,
                onTap: (index) {
                  cubit.changeBottomScreen(index);
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
