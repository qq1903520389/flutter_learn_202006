import 'package:flutter_screenutil/flutter_screenutil.dart';
class ScreenAdapter{

  static Screen init(context,{widthMargin:100}){
    ScreenUtil.instance = ScreenUtil(width: 750, height: 1280)..init(context);
     return Screen(
        width: ScreenAdapter.getScreenWidth(),
        height: ScreenAdapter.getScreenHeight(),
        widthMargin:  ScreenAdapter.getScreenWidth() - ScreenAdapter.width(100)
    );
  }
  static height(double value){
    return ScreenUtil.getInstance().setHeight(value);
  }
  static width(double value){
    return ScreenUtil.getInstance().setWidth(value);
  }
  static getStatusBarHeight(){
    return ScreenUtil.statusBarHeight;
  }
  static getScreenHeight(){
    return ScreenUtil.screenHeightDp;
  }
  static getScreenWidth(){
    return ScreenUtil.screenWidthDp;
  }

  static getScreenPxHeight(){
    return ScreenUtil.screenHeight;
  }
  static getScreenPxWidth(){
    return ScreenUtil.screenWidth;
  }

  static size(double value){
    return ScreenUtil.getInstance().setSp(value);
  }

// ScreenUtil.screenHeight
}
class Screen{
  //屏幕宽度、高度、边距
  double width,height,widthMargin;
  Screen({this.width,this.height,this.widthMargin});
}
// ScreenAdaper