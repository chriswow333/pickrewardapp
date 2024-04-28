
class UserSummaryGroupByMonthCard {
  final DateTime month;
  final String cardID;
  final String cardName;
  final int totalCost;
  final double totalGetReturn;

  UserSummaryGroupByMonthCard({
    required this.month, 
    required this.cardID, 
    required this.cardName, 
    required this.totalCost, 
    required this.totalGetReturn
  });
}


class UserSummaryGroupByMonth {
  final DateTime month;
  final int totalCost;
  final double totalGetReturn;

  UserSummaryGroupByMonth({
    required this.month, 
    required this.totalCost, 
    required this.totalGetReturn 
  }); 
  
}