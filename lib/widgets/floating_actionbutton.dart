import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FloatingButton extends StatefulWidget {
  @override
  FloatingButtonState createState() => new FloatingButtonState();
}

class FloatingButtonState extends State<FloatingButton> with TickerProviderStateMixin {
  int _angle = 90;
  bool _isRotated = true;

  late AnimationController _controller;
  late Animation<double> _animation;
  late Animation<double> _animation2;
  late Animation<double> _animation3;

  @override
  void initState() {
    _controller = new AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 180),
    );

    _animation = new CurvedAnimation(
      parent: _controller,
      curve: new Interval(0.0, 1.0, curve: Curves.linear),
    );

    _animation2 = new CurvedAnimation(
      parent: _controller,
      curve: new Interval(0.5, 1.0, curve: Curves.linear),
    );

    _animation3 = new CurvedAnimation(
      parent: _controller,
      curve: new Interval(0.8, 1.0, curve: Curves.linear),
    );
    _controller.reverse();
    super.initState();
  }

  void _rotate(){
    setState((){
      if(_isRotated) {
        _angle = 45;
        _isRotated = false;
        _controller.forward();
      } else {
        _angle = 90;
        _isRotated = true;
        _controller.reverse();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Stack(
            children: <Widget>[
              Positioned(
                  bottom: 315.0.h,
                  right: 18.0.w,
                  child: Column(
                    children: [
                      ScaleTransition(
                       scale: _animation2,
                       alignment: FractionalOffset.center,
                          ),

                      ScaleTransition(
                       scale: _animation2,
                       alignment: FractionalOffset.center,
                       child:Material(
                           color:  const Color(0xFF00BFA5),
                           type: MaterialType.circle,
                           elevation: 6.0,
                           child:  GestureDetector(
                             child:  Container(
                                 width: 70.w,
                                 height: 70.h,
                                 decoration: const BoxDecoration(
                                     color: Colors.white,
                                   shape: BoxShape.circle
                                 ),
                                 child: InkWell(
                                   onTap: (){
                                     if(_angle == 45.0){
                                       print("foo2");
                                     }
                                   },
                                   child: Column(
                                     mainAxisAlignment: MainAxisAlignment.center,
                                     children: [
                                       Icon(Icons.add),
                                       Text('Post',
                                       style: TextStyle(
                                         color: Colors.black,
                                         fontSize: 15.sp
                                       ),)
                                     ],
                                   ),
                                 )
                             ),
                           )
                       ),
                          ),
                    ],
                  )
              ),

               Positioned(
                  bottom: 234.0.h,
                  right: 18.0.w,
                  child:Row(
                    children: <Widget>[
                       ScaleTransition(
                        scale: _animation2,
                        alignment: FractionalOffset.center,
                        child:  Container(
                          margin:  EdgeInsets.only(right: 16.w),

                        ),
                      ),

                       ScaleTransition(
                        scale: _animation2,
                        alignment: FractionalOffset.center,
                        child:  Material(
                            color:  Color(0xFF00BFA5),
                            type: MaterialType.circle,
                            elevation: 6.0,
                            child:  GestureDetector(
                              child:  Container(
                                  width: 70.w,
                                  height: 70.h,

                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle
                                  ),
                                  child:  InkWell(
                                    onTap: (){
                                      if(_angle == 45.0){
                                        print("foo2");
                                      }
                                    },
                                    child:  Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.wifi_tethering),
                                        Text('Go live',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 13.sp
                                          ),)
                                      ],
                                    ),
                                  )
                              ),
                            )
                        ),
                      ),
                    ],
                  )
              ),
               Positioned(
                  bottom: 153.0.h,
                  right: 18.0.w,
                  child:  Row(
                    children: <Widget>[
                       ScaleTransition(
                        scale: _animation,
                        alignment: FractionalOffset.center,
                        child:  Container(
                          margin:  EdgeInsets.only(right: 16.0),
                        ),
                      ),

                       ScaleTransition(
                        scale: _animation,
                        alignment: FractionalOffset.center,
                        child:  Material(
                            color:  Color(0xFFE57373),
                            type: MaterialType.circle,
                            elevation: 6.0,
                            child:  GestureDetector(
                              child:  Container(
                                  width: 70.w,
                                  height: 70.h,
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle
                                  ),
                                  child:  InkWell(
                                    onTap: (){
                                      if(_angle == 45.0){
                                        print("foo3");
                                      }
                                    },
                                    child:  Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        const Icon(Icons.photo_album_rounded),
                                        Text('Story',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15.sp
                                          ),)
                                      ],
                                    ),
                                  )
                              ),
                            )
                        ),
                      ),
                    ],
                  )
              ),
               Positioned(
                
                bottom: 69.h,
                right: 18.w,
                child:  Material(
                    color:  const Color(0xffED8770),
                    type: MaterialType.circle,
                    elevation: 6.0,
                    child:  GestureDetector(
                      child:  Container(
                          width: 56.0,
                          height: 56.00,

                          child:  InkWell(
                            onTap: _rotate,
                            child:  Center(
                                child: RotationTransition(
                                  turns:  AlwaysStoppedAnimation(_angle / 360),
                                  child:  Icon(
                                    Icons.add,size: 30.sp,
                                    color:  Colors.black,
                                  ),
                                )
                            ),
                          )
                      ),
                    )
                ),
              ),
            ]
        );

  }
}