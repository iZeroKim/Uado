class Insurance {
  final String insuranceProvider;
  final DateTime validFrom;
  final DateTime validTo;
  final brokerName;
  final brokerNumber;

  Insurance(
      {required this.insuranceProvider,
      required this.validFrom,
      required this.validTo,
      required this.brokerName,
      required this.brokerNumber});
}
