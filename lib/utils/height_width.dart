import 'package:flutter/material.dart';

double Sheight (double per,BuildContext context){
  double h = MediaQuery.of(context).size.height;
  return h * per /100;
}
double Swidth (double per,BuildContext context){
  double w = MediaQuery.of(context).size.height;
  return w * per /100;
}