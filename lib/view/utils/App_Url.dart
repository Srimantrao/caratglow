// ignore_for_file: file_names, constant_identifier_names, camel_case_types

class Caretglow {
  static const base_url = "https://weingenious.in/caratglow/api/";
}

//Get ApI Link
class HomePageData {
  static const homepageData = "${Caretglow.base_url}Home/HomePageData";
  static const category = "${Caretglow.base_url}Home/CategoryMenu";
}

//Collection
class Collectiondata{
  static const CountryList = "${Caretglow.base_url}User_Controller/CountryList";
}

//Put ApI Link
class Collectiondata_put{
  static const Sinup_url = "${Caretglow.base_url}User_Controller/Signup";
  static const Statelist ="${Caretglow.base_url}User_Controller/StateList";
}