import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MenuPersonalizado extends StatefulWidget{
  final Widget child;

  const MenuPersonalizado( {Key key, @required this.child }) : super(key:key);

  static MenuPersonalizadoState of(BuildContext context) => 
      context.findAncestorStateOfType<MenuPersonalizadoState>();

  @override
  MenuPersonalizadoState createState() => MenuPersonalizadoState();

}

class MenuPersonalizadoState extends State<MenuPersonalizado>
    with SingleTickerProviderStateMixin{
  static const Duration toggleDuration = Duration(milliseconds: 250);
  static const double maxSlide = 225;
  static const double minDragStartEdge = 60;
  static const double maxDragStatrEdge = maxSlide - 16;
  AnimationController _animationController;
  bool _canBeDragged = false;

  @override
  void initState(){
    super.initState();
    _animationController = AnimationController(
      vsync: this, 
      duration: MenuPersonalizadoState.toggleDuration
    );
  }

  void close() => _animationController.reverse();

  void open() => _animationController.forward();

  void toggleDrawer() => _animationController.isCompleted ? close() : open();

  @override
  void dispose(){
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context){}

  }