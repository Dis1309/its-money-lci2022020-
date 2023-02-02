import 'dart:math';

class PackageCalculator{

  PackageCalculator({required this.interest, required this.hours, required this.experience});

  final int interest;
  final int hours;
  final int experience;

  int log2(int num) => (log(num) / log(2)).floor();


  double _package=10;

  String calculatePackage(){
    _package = (((interest * log2(hours*experience)) + hours*experience)*3)/20;
    return _package.toStringAsFixed(1);
  }

  String getFeedback(){
    if(_package>=40){
      return 'Your package is amazing, now get yourself some apple products!';
    }
    else if(_package<=15){
      return 'You\'ve got some real potential, just upskill yourself';
    }
    else{
      return 'It\'s just about some promotions, anyways you\'ve done really well';
    }
  }

}