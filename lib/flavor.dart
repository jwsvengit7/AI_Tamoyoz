
enum Flavor { dev, prod }

class FlavorConfig {
  static late Flavor appFlavor;
  static Uri get baseUri {
    if(appFlavor==Flavor.prod){
      return Uri(host: '',scheme: 'https',path: '');
    }else{
        return Uri(
            host: 'localhost:8081/api',
            scheme: 'http',
            path: '');
    }
  }

  static String get dispenseErrorComplaintAbCaseType {
    switch (appFlavor) {
      case Flavor.prod:
        return "Complaint";

      default:
        return "Complaint";
    }
  }

  static String get airtimeDataSuspenseAccount {
    switch (appFlavor) {
      case Flavor.prod:
        return "1240000000";

      default:
        return "0767429159";
    }
  }

  static String get billPaymentCoralPaySuspenseAccount {
    switch (appFlavor) {
      case Flavor.prod:
        return "0000000645";

      default:
        return "0692752483";
    }
  }

  static int get idleTimeOutInSeconds {
    switch (appFlavor) {
      case Flavor.dev:
        return 45;

      default:
        return 45;
    }
  }

  static int get getCableTvId {
    switch (appFlavor) {
      case Flavor.prod:
        return 3;

      default:
        return 2;
    }
  }

  static int get getElectricityId {
    switch (appFlavor) {
      case Flavor.prod:
        return 2;

      default:
        return 1;
    }
  }

  static int get getLotteryId {
    switch (appFlavor) {
      case Flavor.prod:
        return 7;

      default:
        return 7;
    }
  }
}
