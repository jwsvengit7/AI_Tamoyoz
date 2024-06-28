
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

 }
