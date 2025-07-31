import 'dart:io';

// Months with 30 days: April, June, September, November.
// Months with 31 days: January, March, May, July, August, October, December.
class Holiday{
  String name;
  late int day;
  late String month;
  final String dayErrorMessage = "The day is not a logical value";
  final String monthWith28Days = "feb";
  final List<String> monthsWith30Days = ["apr", "june", "sep", "nov"];
  final List<String> monthsWith31Days = [
    "jan", "mar", "may",
    "july", "aug", "oct",
    "dec"
  ];

  Holiday(this.name, String month, int day){
    if (checkMonthAndDay(month.toLowerCase(), day)) {
      this.month = month;
      this.day = day;
    } else throw ArgumentError.value(day, dayErrorMessage);
  }

  // This logic can be improved I think but it works XD
  bool checkMonthAndDay(String month, int day){
    if (day >= 1){
      if (day <= 31 && monthsWith31Days.contains(month))
          return true;
      else if (day <= 30 && monthsWith30Days.contains(month))
          return true;
      else if (day <= 28 && month == monthWith28Days)
          return true;
      else return false;
    } else return false;
  }

  // This logic is cleaner
  // bool checkMonthAndDay(String month, int day){
  //   if (day <= 0) return false;
  //
  //   if (monthsWith31Days.contains(month)) return day <= 31;
  //   else if (monthsWith30Days.contains(month)) return day <= 30;
  //   else if (monthWith28Days == month) return day <= 28;
  //   else return false;
  // }

  static bool isSameMonth(Holiday hol1, Holiday hol2){
    return (hol1.month == hol2.month);
  }

  static double avgDate(List<Holiday> holidays) {
    double sum = 0;
    for (int i = 0; i < holidays.length; i++) sum += holidays[i].day;
    return sum / holidays.length;
  }
}

void main(){
  try {
    // Some Tests generated using ChatGPT
    Holiday h1 = Holiday("New Year", "Jan", 1);
    Holiday h2 = Holiday("Valentine's Day", "Feb", 14);
    Holiday h3 = Holiday("April Fools", "Apr", 1);
    Holiday h4 = Holiday("Christmas", "Dec", 25);
    // Holiday h5 = Holiday("Invalid Day", "Feb", 30); // This one throws an error

    Holiday h6 = Holiday("Independence Day", "July", 4); // This was the test required in the assignment
    List<Holiday> holidays = [h1, h2, h3, h4, h6];

    print("Is ${h1.name} in the same month as ${h2.name}? ${Holiday.isSameMonth(h1, h2)}");
    print("Average day of holidays: ${Holiday.avgDate(holidays)}");
  } catch (e) {
    print("Caught an error: $e");
  }
}