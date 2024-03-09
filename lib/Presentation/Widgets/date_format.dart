import 'package:intl/intl.dart';

String formatDate(String date){
   final dateTime = DateTime.tryParse(date);
    if(dateTime != null) {
      return DateFormat.yMMMMd().format(dateTime);
    }
  return "";
}


String formatTime(String time){
  DateTime dateTime = DateTime.parse(time);
  return DateFormat.jm().format(dateTime);
}
//
// String formatDataDate(String date){
//
//   DateTime dateTime = DateTime.parse(date);
//
//   return DateFormat('MMM dd yyyy').format(dateTime);
//   // print(formattedDate); // Output: Feb 23 2024
// }
