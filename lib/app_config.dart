// var this_year = DateTime.now().year.toString();

// class AppConfig {
//   static String copyright_text =
//       "@ ActiveItZone " + this_year; //this shows in the splash screen
//   static String app_name =
//       "Active eCommerce seller app"; //this shows in the splash screen
//   static String purchase_code =
//       " your purchase code"; //enter your purchase code for the app from codecanyon
//   static String system_key =
//       r"your system key  "; //enter your purchase code for the app from codecanyon

//   //static const bool HTTPS = true;
//   static const bool HTTPS = true;

//   //Default language config
//   static String default_language = "en";
//   static String mobile_app_code = "en";
//   static bool app_language_rtl = false;

//   //configure this

 
//   static const DOMAIN_PATH = 'your_domain.com'; //enter your domain without https://www. use only domain

//   //do not configure these below
//   static const String API_ENDPATH = "api/v2";
//   static const String PUBLIC_FOLDER = "public";
//   static const String PROTOCOL = HTTPS ? "https://" : "http://";
//   static const String SELLER_PREFIX = "seller";
//   static const String RAW_BASE_URL = "${PROTOCOL}${DOMAIN_PATH}";
//   static const String BASE_URL = "${RAW_BASE_URL}/${API_ENDPATH}";
//   static const String BASE_URL_WITH_PREFIX = "${BASE_URL}/${SELLER_PREFIX}";
// }

// ignore_for_file: non_constant_identifier_names, constant_identifier_names

var this_year = DateTime.now().year.toString();

class AppConfig {
  static String copyright_text =
      "@ ActiveItZone $this_year"; //this shows in the splash screen
  static String app_name =
      "Jomlah Seller"; //this shows in the splash screen
  static String purchase_code =
      "977bcb67-a50c-4d27-aafb-4715f0f02dfa"; //enter your purchase code for the app from codecanyon
  static String system_key =
      r"$2y$10$I8CialgZLXGXEYRMIkpaoeYQmyzQ5k8.2R6LPrSGJXf5FZ3KTM6T6"; //enter your purchase code for the app from codecanyon

  //static const bool HTTPS = true;
  static const bool HTTPS = true;

  //Default language config
  static String default_language = "ar";
  static String mobile_app_code = "ar";
  static bool app_language_rtl = true;

  //configure this

 // static const DOMAIN_PATH = '192.168.88.146/ecommerce82';
  static const DOMAIN_PATH = "jomlah.com";
  static String app_name_splash = "Jomlah.com"; //this shows in the splash screen

  //do not configure these below
  static const String API_ENDPATH = "api/v2";
  static const String PUBLIC_FOLDER = "public";
  static const String PROTOCOL = HTTPS ? "https://" : "http://";
  static const String SELLER_PREFIX = "seller";
  static const String RAW_BASE_URL = "$PROTOCOL$DOMAIN_PATH";
  static const String BASE_URL = "$RAW_BASE_URL/$API_ENDPATH";
  static const String BASE_URL_WITH_PREFIX = "$BASE_URL/$SELLER_PREFIX";
}
///////////////////////for customer
