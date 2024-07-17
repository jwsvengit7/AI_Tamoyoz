
enum Flavor { dev, prod }

class FlavorConfig {
  static late Flavor appFlavor;
  static Uri get baseUri {
    if(appFlavor==Flavor.prod){
      return Uri(host: 'https://cardmonixadmin.pro',scheme: 'https',path: '');
    }else{
        return Uri(
            host: 'https://cardmonixadmin.pro',
            scheme: 'https',
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
