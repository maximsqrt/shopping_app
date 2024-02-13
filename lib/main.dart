import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:shoooooping_provider_app/common/colors.dart';
import 'package:shoooooping_provider_app/common/presentation/shopping_cart_button.dart';
import 'package:shoooooping_provider_app/common/presentation/shopping_cart_provider.dart';
import 'package:shoooooping_provider_app/common/presentation/shopping_product_provider.dart';

import 'package:shoooooping_provider_app/features/shopping_main/shopping_main_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CartProvider()),
        ChangeNotifierProvider(create: (context) => ProductProvider()),
      ],
      child: const ShopApp(),
    ),
  );
}

class ShopApp extends StatefulWidget {
  const ShopApp({Key? key});

  @override
  State<ShopApp> createState() => _ShopAppState();
}

class _ShopAppState extends State<ShopApp> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: const Text('ShopApp', style: TextStyle(color: Colors.white)),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.centerRight,
                colors: [
                  CustomColors.color2,
                  CustomColors.color3,
                ],
              ),
            ),
          ),
          actions: const [
            ShoppingCartButton(),
          ],
        ),
        body: AnimatedBackgroundContainer(
          child: ShoppingMainScreen(), // Place ShoppingMainScreen as child
        ),
      ),
    );
  }
}



class AnimatedBackgroundContainer extends StatefulWidget {
  final Widget child;

  const AnimatedBackgroundContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  _AnimatedBackgroundContainer createState() => _AnimatedBackgroundContainer();
}

class _AnimatedBackgroundContainer extends State<AnimatedBackgroundContainer> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Alignment> _topAlignmentAnimation;
  late Animation<Alignment> _bottomAlignmentAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 12),
    );

    // Define TweenSequenceItems for the animation
    _topAlignmentAnimation = TweenSequence<Alignment>([
      TweenSequenceItem<Alignment>(
        tween: Tween<Alignment>(
            begin: Alignment.topRight, end: Alignment.bottomRight),
        weight: 1,
      ),
      TweenSequenceItem<Alignment>(
        tween: Tween<Alignment>(
            begin: Alignment.bottomRight, end: Alignment.bottomLeft),
        weight: 1,
      ),
      TweenSequenceItem<Alignment>(
        tween: Tween<Alignment>(
            begin: Alignment.bottomLeft, end: Alignment.topLeft),
        weight: 1,
      ),
      TweenSequenceItem<Alignment>(
        tween:
            Tween<Alignment>(begin: Alignment.topLeft, end: Alignment.topRight),
        weight: 1,
      ),
    ]).animate(_controller);

    _bottomAlignmentAnimation = TweenSequence<Alignment>([
      TweenSequenceItem<Alignment>(
        tween: Tween<Alignment>(
            begin: Alignment.bottomRight, end: Alignment.topRight),
        weight: 1,
      ),
      TweenSequenceItem<Alignment>(
        tween:
            Tween<Alignment>(begin: Alignment.topRight, end: Alignment.topLeft),
        weight: 1,
      ),
      TweenSequenceItem<Alignment>(
        tween: Tween<Alignment>(
            begin: Alignment.topLeft, end: Alignment.bottomLeft),
        weight: 1,
      ),
      TweenSequenceItem<Alignment>(
        tween: Tween<Alignment>(
            begin: Alignment.bottomLeft, end: Alignment.bottomRight),
        weight: 1,
      ),
    ]).animate(_controller);

    _controller.repeat(reverse: true); // Start the animation loop and repeat it indefinitely

    _controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _controller.dispose(); // Release animation controller
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print(_topAlignmentAnimation.value);
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: _topAlignmentAnimation.value,
          end: _bottomAlignmentAnimation.value,
          colors: [CustomColors.color1, CustomColors.color4],
        ),
      ),
      child: widget.child,
    );
  }
}
