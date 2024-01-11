// ignore_for_file: constant_identifier_names, prefer_const_constructors

import 'package:flutter_uni_app/logic/bindings/auth_biniding.dart';
import 'package:flutter_uni_app/logic/bindings/main_binding.dart';
import 'package:flutter_uni_app/logic/bindings/personal_biniding.dart';
import 'package:flutter_uni_app/view/Screen/Main_Screen.dart';
import 'package:flutter_uni_app/view/Screen/Splash/Splash1Screen.dart';
import 'package:flutter_uni_app/view/Screen/Splash/Splash2Screen.dart';
import 'package:flutter_uni_app/view/Screen/University%20Screen/ACU/Business%20Administration/BusinessAdmin_Screen.dart';
import 'package:flutter_uni_app/view/Screen/University%20Screen/ACU/Business%20Administration/apply_Screen.dart';
import 'package:flutter_uni_app/view/Screen/University%20Screen/ACU/Business%20Administration/apply_Screen2.dart';
import 'package:flutter_uni_app/view/Screen/University%20Screen/ACU/Business%20Administration/apply_Screen3.dart';
import 'package:flutter_uni_app/view/Screen/University%20Screen/ACU/FACULTY%20OF%20PHARMACY/Pharmacy_Screen.dart';
import 'package:flutter_uni_app/view/Screen/University%20Screen/ACU/FACULTY%20OF%20PHARMACY/apply_Screen.dart';
import 'package:flutter_uni_app/view/Screen/University%20Screen/ACU/FACULTY%20OF%20PHARMACY/apply_Screen2.dart';
import 'package:flutter_uni_app/view/Screen/University%20Screen/ACU/FACULTY%20OF%20PHARMACY/apply_Screen3.dart';
import 'package:flutter_uni_app/view/Screen/University%20Screen/ACU/Faculty%20of%20Dentistry/FacultyDentistry_Screen.dart';
import 'package:flutter_uni_app/view/Screen/University%20Screen/ACU/Faculty%20of%20Dentistry/apply_Screen.dart';
import 'package:flutter_uni_app/view/Screen/University%20Screen/ACU/Faculty%20of%20Dentistry/apply_Screen2.dart';
import 'package:flutter_uni_app/view/Screen/University%20Screen/ACU/Faculty%20of%20Dentistry/apply_Screen3.dart';
import 'package:flutter_uni_app/view/Screen/University%20Screen/ACU/acu_screen.dart';
import 'package:flutter_uni_app/view/Screen/University%20Screen/AUC/Global%20Affairs%20and%20Public%20Policy/GlobalAffairs_Screen.dart';
import 'package:flutter_uni_app/view/Screen/University%20Screen/AUC/Global%20Affairs%20and%20Public%20Policy/apply_Screen.dart';
import 'package:flutter_uni_app/view/Screen/University%20Screen/AUC/Global%20Affairs%20and%20Public%20Policy/apply_Screen2.dart';
import 'package:flutter_uni_app/view/Screen/University%20Screen/AUC/Global%20Affairs%20and%20Public%20Policy/apply_Screen3.dart';
import 'package:flutter_uni_app/view/Screen/University%20Screen/AUC/HSS/HSSAuc_Screen.dart';
import 'package:flutter_uni_app/view/Screen/University%20Screen/AUC/HSS/apply_Screen.dart';
import 'package:flutter_uni_app/view/Screen/University%20Screen/AUC/HSS/apply_Screen2.dart';
import 'package:flutter_uni_app/view/Screen/University%20Screen/AUC/HSS/apply_Screen3.dart';
import 'package:flutter_uni_app/view/Screen/University%20Screen/AUC/auc_screen.dart';
import 'package:flutter_uni_app/view/Screen/University%20Screen/AUC/business/apply_Screen.dart';
import 'package:flutter_uni_app/view/Screen/University%20Screen/AUC/business/apply_Screen2.dart';
import 'package:flutter_uni_app/view/Screen/University%20Screen/AUC/business/apply_Screen3.dart';
import 'package:flutter_uni_app/view/Screen/University%20Screen/AUC/business/businessauc_Screen.dart';
import 'package:flutter_uni_app/view/Screen/University%20Screen/BUC/FBE/Business_screen.dart';
import 'package:flutter_uni_app/view/Screen/University%20Screen/BUC/FBE/apply_Screen.dart';
import 'package:flutter_uni_app/view/Screen/University%20Screen/BUC/FBE/apply_Screen2.dart';
import 'package:flutter_uni_app/view/Screen/University%20Screen/BUC/FBE/apply_Screen3.dart';
import 'package:flutter_uni_app/view/Screen/University%20Screen/BUC/bus_screen.dart';
import 'package:flutter_uni_app/view/Screen/University%20Screen/BUC/fet/Engineering&Technology_screen.dart';
import 'package:flutter_uni_app/view/Screen/University%20Screen/BUC/fet/apply_Screen.dart';
import 'package:flutter_uni_app/view/Screen/University%20Screen/BUC/fet/apply_Screen2.dart';
import 'package:flutter_uni_app/view/Screen/University%20Screen/BUC/fet/apply_Screen3.dart';
import 'package:flutter_uni_app/view/Screen/University%20Screen/BUC/medicine/apply_Screen.dart';
import 'package:flutter_uni_app/view/Screen/University%20Screen/BUC/medicine/apply_Screen2.dart';
import 'package:flutter_uni_app/view/Screen/University%20Screen/BUC/medicine/apply_Screen3.dart';
import 'package:flutter_uni_app/view/Screen/University%20Screen/BUC/medicine/medicine_Screen.dart';
import 'package:flutter_uni_app/view/Screen/University%20Screen/BUE/Art&desing/Art&desing.dart';
import 'package:flutter_uni_app/view/Screen/University%20Screen/BUE/Art&desing/apply_Screen.dart';
import 'package:flutter_uni_app/view/Screen/University%20Screen/BUE/Art&desing/apply_Screen2.dart';
import 'package:flutter_uni_app/view/Screen/University%20Screen/BUE/Art&desing/apply_Screen3.dart';
import 'package:flutter_uni_app/view/Screen/University%20Screen/BUE/Bue_Screen.dart';
import 'package:flutter_uni_app/view/Screen/University%20Screen/BUE/Computer/apply_Screen.dart';
import 'package:flutter_uni_app/view/Screen/University%20Screen/BUE/Computer/apply_Screen2.dart';
import 'package:flutter_uni_app/view/Screen/University%20Screen/BUE/Computer/apply_Screen3.dart';
import 'package:flutter_uni_app/view/Screen/University%20Screen/BUE/Computer/computer_science.dart';
import 'package:flutter_uni_app/view/Screen/University%20Screen/BUE/Engineering/Engineering_screen.dart';
import 'package:flutter_uni_app/view/Screen/University%20Screen/BUE/Engineering/apply_Screen.dart';
import 'package:flutter_uni_app/view/Screen/University%20Screen/BUE/Engineering/apply_Screen2.dart';
import 'package:flutter_uni_app/view/Screen/University%20Screen/BUE/Engineering/apply_Screen3.dart';
import 'package:flutter_uni_app/view/Screen/University%20Screen/MIU/Al%20Alsun/AlAlsun_Screen.dart';
import 'package:flutter_uni_app/view/Screen/University%20Screen/MIU/Al%20Alsun/apply_Screen.dart';
import 'package:flutter_uni_app/view/Screen/University%20Screen/MIU/Al%20Alsun/apply_Screen2.dart';
import 'package:flutter_uni_app/view/Screen/University%20Screen/MIU/Al%20Alsun/apply_Screen3.dart';
import 'package:flutter_uni_app/view/Screen/University%20Screen/MIU/Engineering%20Sciences%20&%20Arts/EngineeringSciences_Screen.dart';
import 'package:flutter_uni_app/view/Screen/University%20Screen/MIU/Engineering%20Sciences%20&%20Arts/apply_Screen.dart';
import 'package:flutter_uni_app/view/Screen/University%20Screen/MIU/Engineering%20Sciences%20&%20Arts/apply_Screen2.dart';
import 'package:flutter_uni_app/view/Screen/University%20Screen/MIU/Engineering%20Sciences%20&%20Arts/apply_Screen3.dart';
import 'package:flutter_uni_app/view/Screen/University%20Screen/MIU/miu_screen.dart';
import 'package:flutter_uni_app/view/Screen/University%20Screen/MIU/oral%20and%20dental%20medicine/apply_Screen.dart';
import 'package:flutter_uni_app/view/Screen/University%20Screen/MIU/oral%20and%20dental%20medicine/apply_Screen2.dart';
import 'package:flutter_uni_app/view/Screen/University%20Screen/MIU/oral%20and%20dental%20medicine/apply_Screen3.dart';
import 'package:flutter_uni_app/view/Screen/University%20Screen/MIU/oral%20and%20dental%20medicine/oralanddental_Screen.dart';
import 'package:flutter_uni_app/view/Screen/University%20Screen/mainUniversty.dart';
import 'package:flutter_uni_app/view/Screen/University%20Screen/university_Screen.dart';
import 'package:flutter_uni_app/view/Screen/auth/Login_screen.dart';
import 'package:flutter_uni_app/view/Screen/auth/forgetpassword.dart';
import 'package:flutter_uni_app/view/Screen/auth/signup_screen.dart';
import 'package:flutter_uni_app/view/Screen/institutes%20Screens/FA/BISFuture/BisFuture.dart';
import 'package:flutter_uni_app/view/Screen/institutes%20Screens/FA/BISFuture/apply_Screen.dart';
import 'package:flutter_uni_app/view/Screen/institutes%20Screens/FA/BISFuture/apply_Screen2.dart';
import 'package:flutter_uni_app/view/Screen/institutes%20Screens/FA/BISFuture/apply_Screen3.dart';
import 'package:flutter_uni_app/view/Screen/institutes%20Screens/FA/Csfutere/CsFuture.dart';
import 'package:flutter_uni_app/view/Screen/institutes%20Screens/FA/Csfutere/apply_Screen.dart';
import 'package:flutter_uni_app/view/Screen/institutes%20Screens/FA/Csfutere/apply_Screen2.dart';
import 'package:flutter_uni_app/view/Screen/institutes%20Screens/FA/Csfutere/apply_Screen3.dart';
import 'package:flutter_uni_app/view/Screen/institutes%20Screens/FA/MISfuture/MisFuture.dart';
import 'package:flutter_uni_app/view/Screen/institutes%20Screens/FA/MISfuture/apply_Screen.dart';
import 'package:flutter_uni_app/view/Screen/institutes%20Screens/FA/MISfuture/apply_Screen2.dart';
import 'package:flutter_uni_app/view/Screen/institutes%20Screens/FA/MISfuture/apply_Screen3.dart';
import 'package:flutter_uni_app/view/Screen/institutes%20Screens/FA/future_academy.dart';
import 'package:flutter_uni_app/view/Screen/institutes%20Screens/HIAA/higher_institute_of_applied_arts.dart';
import 'package:flutter_uni_app/view/Screen/institutes%20Screens/HTI/CS/CS_Hti.dart';
import 'package:flutter_uni_app/view/Screen/institutes%20Screens/HTI/CS/apply_Screen.dart';
import 'package:flutter_uni_app/view/Screen/institutes%20Screens/HTI/CS/apply_Screen2.dart';
import 'package:flutter_uni_app/view/Screen/institutes%20Screens/HTI/CS/apply_Screen3.dart';
import 'package:flutter_uni_app/view/Screen/institutes%20Screens/HTI/Eng/Eng_screenBHTI.dart';
import 'package:flutter_uni_app/view/Screen/institutes%20Screens/HTI/Eng/apply_Screen.dart';
import 'package:flutter_uni_app/view/Screen/institutes%20Screens/HTI/Eng/apply_Screen2.dart';
import 'package:flutter_uni_app/view/Screen/institutes%20Screens/HTI/Eng/apply_Screen3.dart';
import 'package:flutter_uni_app/view/Screen/institutes%20Screens/HTI/business/BHTI_Screen.dart';
import 'package:flutter_uni_app/view/Screen/institutes%20Screens/HTI/business/apply_Screen.dart';
import 'package:flutter_uni_app/view/Screen/institutes%20Screens/HTI/business/apply_Screen2.dart';
import 'package:flutter_uni_app/view/Screen/institutes%20Screens/HTI/business/apply_Screen3.dart';
import 'package:flutter_uni_app/view/Screen/institutes%20Screens/HTI/higher_technological_institute.dart';
import 'package:flutter_uni_app/view/Screen/institutes%20Screens/MD/CSMODERN/CsModern_Screen.dart';
import 'package:flutter_uni_app/view/Screen/institutes%20Screens/MD/CSMODERN/apply_Screen.dart';
import 'package:flutter_uni_app/view/Screen/institutes%20Screens/MD/CSMODERN/apply_Screen2.dart';
import 'package:flutter_uni_app/view/Screen/institutes%20Screens/MD/CSMODERN/apply_Screen3.dart';
import 'package:flutter_uni_app/view/Screen/institutes%20Screens/MD/ECONOMICS/ECONOMICS_Screen.dart';
import 'package:flutter_uni_app/view/Screen/institutes%20Screens/MD/ECONOMICS/apply_Screen.dart';
import 'package:flutter_uni_app/view/Screen/institutes%20Screens/MD/ECONOMICS/apply_Screen2.dart';
import 'package:flutter_uni_app/view/Screen/institutes%20Screens/MD/ECONOMICS/apply_Screen3.dart';
import 'package:flutter_uni_app/view/Screen/institutes%20Screens/MD/MISmodern/MISmodern_Screen.dart';
import 'package:flutter_uni_app/view/Screen/institutes%20Screens/MD/MISmodern/apply_Screen.dart';
import 'package:flutter_uni_app/view/Screen/institutes%20Screens/MD/MISmodern/apply_Screen2.dart';
import 'package:flutter_uni_app/view/Screen/institutes%20Screens/MD/MISmodern/apply_Screen3.dart';
import 'package:flutter_uni_app/view/Screen/institutes%20Screens/MD/modern_academy.dart';
import 'package:flutter_uni_app/view/Screen/institutes%20Screens/Shrouk/Eng/Eng_SHrouk_Scree.dart';
import 'package:flutter_uni_app/view/Screen/institutes%20Screens/Shrouk/Eng/apply_Screen.dart';
import 'package:flutter_uni_app/view/Screen/institutes%20Screens/Shrouk/Eng/apply_Screen2.dart';
import 'package:flutter_uni_app/view/Screen/institutes%20Screens/Shrouk/Eng/apply_Screen3.dart';
import 'package:flutter_uni_app/view/Screen/institutes%20Screens/Shrouk/MIS/MIS_Shrouk_Screen.dart';
import 'package:flutter_uni_app/view/Screen/institutes%20Screens/Shrouk/MIS/apply_Screen.dart';
import 'package:flutter_uni_app/view/Screen/institutes%20Screens/Shrouk/MIS/apply_Screen2.dart';
import 'package:flutter_uni_app/view/Screen/institutes%20Screens/Shrouk/MIS/apply_Screen3.dart';
import 'package:flutter_uni_app/view/Screen/institutes%20Screens/Shrouk/Media/Media_screen.dart';
import 'package:flutter_uni_app/view/Screen/institutes%20Screens/Shrouk/Media/apply_Screen.dart';
import 'package:flutter_uni_app/view/Screen/institutes%20Screens/Shrouk/Media/apply_Screen2.dart';
import 'package:flutter_uni_app/view/Screen/institutes%20Screens/Shrouk/Media/apply_Screen3.dart';
import 'package:flutter_uni_app/view/Screen/institutes%20Screens/Shrouk/shrouk_acadmy.dart';
import 'package:flutter_uni_app/view/Screen/institutes%20Screens/institutes_Screen.dart';
import 'package:flutter_uni_app/view/Screen/onboarding/onboarding%201_screen.dart';
import 'package:flutter_uni_app/view/Screen/onboarding/onboarding%202_screen.dart';
import 'package:flutter_uni_app/view/Screen/personal/personal_information.dart';
import 'package:get/get.dart';

class Approutes {
  //initialRoute

  static const splash1 = Routes.splash1;

  //get Pages
  static final routes = [
    GetPage(
      name: Routes.splash1,
      page: () => const Splash1Screen(),
    ),
    GetPage(
      name: Routes.splash2,
      page: () => const Splash2Screen(),
    ),
    GetPage(
      name: Routes.onboarding1,
      page: () => const Onboarding1(),
    ),
    GetPage(
      name: Routes.onboarding2,
      page: () => const Onboarding2(),
    ),
    GetPage(
        name: Routes.signupScreen,
        page: () => SignupScreen(),
        binding: AuthBinding()),
    GetPage(
        name: Routes.loginScreen,
        page: () => LoginScreen(),
        binding: AuthBinding()),
    GetPage(
        name: Routes.forgetpasswordScreen,
        page: () => ForgetpasswordScreen(),
        binding: AuthBinding()),
    GetPage(
        name: Routes.mainScreen,
        page: () => MainScreen(),
        bindings: [AuthBinding(), MainBininding()]),
    GetPage(
        name: Routes.personalInformation,
        page: () => PersonalInformation(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.universityScreen,
        page: () => const UniversityScreen(),
        binding: AuthBinding()),
    // Start Uni //
    GetPage(
        name: Routes.bueScreen,
        page: () => const BueScreen(),
        binding: AuthBinding()),
    GetPage(
        name: Routes.busUniverstyScreen,
        page: () => const BusUniverstyScreen(),
        binding: AuthBinding()),
    GetPage(
        name: Routes.aucUniverstyScreen,
        page: () => const AucUniverstyScreen(),
        binding: AuthBinding()),
    GetPage(
        name: Routes.miuUniverstyScreen,
        page: () => const MiuUniverstyScreen(),
        binding: AuthBinding()),
    GetPage(
        name: Routes.acuUniverstyScreen,
        page: () => const AcuUniverstyScreen(),
        binding: AuthBinding()),
    // end uni //
    GetPage(
        name: Routes.institutes_Screen,
        page: () => const Institutes_Screen(),
        binding: AuthBinding()),
    // start institutes//
    GetPage(
        name: Routes.shroukacadmyScreen,
        page: () => const ShroukacadmyScreen(),
        binding: AuthBinding()),
    GetPage(
        name: Routes.higherTechnologicalInstituteScreen,
        page: () => const HigherTechnologicalInstituteScreen(),
        binding: AuthBinding()),
    GetPage(
        name: Routes.modernAcademyScreen,
        page: () => const ModernAcademyScreen(),
        binding: AuthBinding()),
    GetPage(
        name: Routes.futureAcademyegScreen,
        page: () => const FutureAcademyegScreen(),
        binding: AuthBinding()),
    GetPage(
        name: Routes.theHigherInstituteofAppliedArtsScreen,
        page: () => const TheHigherInstituteofAppliedArtsScreen(),
        binding: AuthBinding()),
    // End institutes//
    // Start Faculty//
    GetPage(
        name: Routes.artdesingScreen,
        page: () => ArtdesingScreen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.aplyyArtScreen,
        page: () => AplyyArtScreen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.AplyyArt2Screen,
        page: () => AplyyArt2Screen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.AplyyArt3Screen,
        page: () => AplyyArt3Screen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.computerscienceScreen,
        page: () => computerscienceScreen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.computerAplyyScreen,
        page: () => computerAplyyScreen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.computerAplyy2Screen,
        page: () => computerAplyy2Screen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.computerAplyy3Screen,
        page: () => computerAplyy3Screen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.EngineeringScreen,
        page: () => EngineeringScreen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.AplyyEngScreen,
        page: () => AplyyEngScreen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.AplyyEng2Screen,
        page: () => AplyyEng2Screen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.AplyyEng3Screen,
        page: () => AplyyEng3Screen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.MedicineScreen,
        page: () => MedicineScreen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.AplyyMedicineScreen,
        page: () => AplyyMedicineScreen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.AplyyMedicine2Screen,
        page: () => AplyyMedicine2Screen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.AplyyMedicine3Screen,
        page: () => AplyyMedicine3Screen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.BusinessScreen,
        page: () => BusinessScreen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.AplyyBusinessScreen,
        page: () => AplyyBusinessScreen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.AplyyBusiness2Screen,
        page: () => AplyyBusiness2Screen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.AplyyBusiness3Screen,
        page: () => AplyyBusiness3Screen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.EngineeringTechnologyScreen,
        page: () => EngineeringTechnologyScreen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.AplyyEngineeringTechnologyScreen,
        page: () => AplyyEngineeringTechnologyScreen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.AplyyEngineeringTechnology2Screen,
        page: () => AplyyEngineeringTechnology2Screen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.AplyyEngineeringTechnology3Screen,
        page: () => AplyyEngineeringTechnology3Screen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.BusinessAuCScreen,
        page: () => BusinessAuCScreen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.AplyyBusinessAuCScreen,
        page: () => AplyyBusinessAuCScreen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.AplyyBusinessAuC2Screen,
        page: () => AplyyBusinessAuC2Screen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.AplyyBusinessAuC3Screen,
        page: () => AplyyBusinessAuC3Screen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.GlobalAffairsScreen,
        page: () => GlobalAffairsScreen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.AplyyGlobalAffairsScreen,
        page: () => AplyyGlobalAffairsScreen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.AplyyGlobalAffairs2Screen,
        page: () => AplyyGlobalAffairs2Screen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.AplyyGlobalAffairs3Screen,
        page: () => AplyyGlobalAffairs3Screen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.HssAucScreen,
        page: () => HssAucScreen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.AplyyHssAucScreen,
        page: () => AplyyHssAucScreen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.AplyyHssAuc2Screen,
        page: () => AplyyHssAuc2Screen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.AplyyHssAuc3Screen,
        page: () => AplyyHssAuc3Screen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.AlsunmiuScreen,
        page: () => AlsunmiuScreen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.AplyyAlsunMIUScreen,
        page: () => AplyyAlsunMIUScreen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.AplyyAlsunMIU2Screen,
        page: () => AplyyAlsunMIU2Screen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.AplyyAlsunMIU3Screen,
        page: () => AplyyAlsunMIU3Screen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.OralanddentalScreen,
        page: () => OralanddentalScreen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.AplyyOralanddentalMIUScreen,
        page: () => AplyyOralanddentalMIUScreen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.AplyyOralanddentalMIU2Screen,
        page: () => AplyyOralanddentalMIU2Screen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.AplyyOralanddentalMIU3Screen,
        page: () => AplyyOralanddentalMIU3Screen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.EngineeringMIUScreen,
        page: () => EngineeringMIUScreen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.AplyyEngineeringMIUScreen,
        page: () => AplyyEngineeringMIUScreen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.AplyyEngineeringMIU2Screen,
        page: () => AplyyEngineeringMIU2Screen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.AplyyEngineeringMIU3Screen,
        page: () => AplyyEngineeringMIU3Screen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.BUSINESSAhramScreen,
        page: () => BUSINESSAhramScreen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.AplyyBUSINESSAhramScreen,
        page: () => AplyyBUSINESSAhramScreen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.AplyyBUSINESSAhram2Screen,
        page: () => AplyyBUSINESSAhram2Screen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.AplyyBUSINESSAhram3Screen,
        page: () => AplyyBUSINESSAhram3Screen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.DENTISTRYAhramScreen,
        page: () => DENTISTRYAhramScreen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.AplyyDENTISTRYAhramScreen,
        page: () => AplyyDENTISTRYAhramScreen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.AplyyDENTISTRYAhram2Screen,
        page: () => AplyyDENTISTRYAhram2Screen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.AplyyDENTISTRYAhram3Screen,
        page: () => AplyyDENTISTRYAhram3Screen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.PHARMACYAhramScreen,
        page: () => PHARMACYAhramScreen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.AplyyPHARMACYAhramScreen,
        page: () => AplyyPHARMACYAhramScreen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.AplyyPHARMACYAhram2Screen,
        page: () => AplyyPHARMACYAhram2Screen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.AplyyPHARMACYAhram3Screen,
        page: () => AplyyPHARMACYAhram3Screen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.MediaScreen,
        page: () => MediaScreen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.AplyyMediaScreenShroukScreen,
        page: () => AplyyMediaScreenShroukScreen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.AplyyMediaScreenShrouk2Screen,
        page: () => AplyyMediaScreenShrouk2Screen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.AplyyMediaScreenShrouk3Screen,
        page: () => AplyyMediaScreenShrouk3Screen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.MISScreen,
        page: () => MISScreen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.AplyyMISShroukScreen,
        page: () => AplyyMISShroukScreen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.AplyyMISShrouk2Screen,
        page: () => AplyyMISShrouk2Screen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.AplyyMISShrouk3Screen,
        page: () => AplyyMISShrouk3Screen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.EngineeringShroukScreen,
        page: () => EngineeringShroukScreen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.AplyyENGShroukScreen,
        page: () => AplyyENGShroukScreen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.AplyyENGShrouk2Screen,
        page: () => AplyyENGShrouk2Screen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.AplyyENGShrouk3Screen,
        page: () => AplyyENGShrouk3Screen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.CSBHTIcreen,
        page: () => CSBHTIcreen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.AplyyCSBHTIcreen,
        page: () => AplyyCSBHTIcreen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.AplyyCSBHTI2creen,
        page: () => AplyyCSBHTI2creen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.AplyyCSBHTI3creen,
        page: () => AplyyCSBHTI3creen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.BusinessBHTIcreen,
        page: () => BusinessBHTIcreen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.AplyyBusinessBHTIcreen,
        page: () => AplyyBusinessBHTIcreen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.AplyyBusinessBHTI2creen,
        page: () => AplyyBusinessBHTI2creen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.AplyyBusinessBHTI3creen,
        page: () => AplyyBusinessBHTI3creen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.EngBHTIcreen,
        page: () => EngBHTIcreen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.AplyyEngBHTIcreen,
        page: () => AplyyEngBHTIcreen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.AplyyEngBHTI2creen,
        page: () => AplyyEngBHTI2creen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.AplyyEngBHTI3creen,
        page: () => AplyyEngBHTI3creen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.CsModernScreen,
        page: () => CsModernScreen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.AplyyCsModernScreen,
        page: () => AplyyCsModernScreen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.AplyyCsModern2Screen,
        page: () => AplyyCsModern2Screen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.AplyyCsModern3Screen,
        page: () => AplyyCsModern3Screen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.MISModernScreen,
        page: () => MISModernScreen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.AplyyMISModernScreen,
        page: () => AplyyMISModernScreen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.AplyyMISModern2Screen,
        page: () => AplyyMISModern2Screen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.AplyyMISModern3Screen,
        page: () => AplyyMISModern3Screen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.EcModernScreen,
        page: () => EcModernScreen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.AplyyEcModernScreen,
        page: () => AplyyEcModernScreen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.AplyyEcModern2Screen,
        page: () => AplyyEcModern2Screen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.AplyyEcModern3Screen,
        page: () => AplyyEcModern3Screen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.MISfutureScreen,
        page: () => MISfutureScreen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.AplyyMISfutureScreen,
        page: () => AplyyMISfutureScreen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.AplyyMISfuture2Screen,
        page: () => AplyyMISfuture2Screen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.AplyyMISfuture3Screen,
        page: () => AplyyMISfuture3Screen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.CSfutureScreen,
        page: () => CSfutureScreen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.AplyyCSfutureScreen,
        page: () => AplyyCSfutureScreen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.AplyyCSfuture2Screen,
        page: () => AplyyCSfuture2Screen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.AplyyCSfuture3Screen,
        page: () => AplyyCSfuture3Screen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.BISfutureScreen,
        page: () => BISfutureScreen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.AplyyBISfutureScreen,
        page: () => AplyyBISfutureScreen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.AplyyBISfuture2Screen,
        page: () => AplyyBISfuture2Screen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.AplyyBISfuture3Screen,
        page: () => AplyyBISfuture3Screen(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    // End Faculty//
    GetPage(
        name: Routes.MainUniversty,
        page: () => MainUniversty(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
  ];
}

class Routes {
  static const splash1 = '/Splash1Screen';
  static const splash2 = '/Splash2Screen';
  static const onboarding1 = '/Onboarding1';
  static const onboarding2 = '/onboarding2';
  static const signupScreen = '/SignupScreen';
  static const loginScreen = '/LoginScreen';
  static const forgetpasswordScreen = '/ForgetpasswordScreen';
  static const mainScreen = '/MainScreen';
  static const MainUniversty = '/MainUniversty';
  static const personalInformation = '/PersonalInformation';
  //
  static const universityScreen = '/UniversityScreen';
  // STart Uni
  static const bueScreen = '/BueScreen';
  static const busUniverstyScreen = '/BusUniverstyScreen';
  static const aucUniverstyScreen = '/AucUniverstyScreen';
  static const miuUniverstyScreen = '/MiuUniverstyScreen';
  static const acuUniverstyScreen = '/AcuUniverstyScreen';
  // End Uni
  static const institutes_Screen = '/Institutes_Screen';
  // Start Ins
  static const shroukacadmyScreen = '/ShroukacadmyScreen';
  static const higherTechnologicalInstituteScreen =
      '/HigherTechnologicalInstituteScreen';
  static const modernAcademyScreen = '/ModernAcademyScreen';
  static const futureAcademyegScreen = '/FutureAcademyegScreen';
  static const theHigherInstituteofAppliedArtsScreen =
      '/TheHigherInstituteofAppliedArtsScreen';
  // End Ins
  // Start Faculty//
  static const artdesingScreen = "/ArtdesingScreen";
  static const aplyyArtScreen = "/AplyyArtScreen";
  static const AplyyArt2Screen = "/AplyyArt2Screen";
  static const AplyyArt3Screen = "/AplyyArt3Screen";
  static const computerAplyyScreen = "/computerAplyyScreen";
  static const computerAplyy2Screen = "/computerAplyy2Screen";
  static const computerAplyy3Screen = "/computerAplyy3Screen";
  static const computerscienceScreen = "/computerscienceScreen";
  static const EngineeringScreen = "/EngineeringScreen";
  static const AplyyEngScreen = "/AplyyEngScreen";
  static const AplyyEng2Screen = "/AplyyEng2Screen";
  static const AplyyEng3Screen = "/AplyyEng3Screen";
  static const MedicineScreen = "/MedicineScreen";
  static const AplyyMedicineScreen = "/AplyyMedicineScreen";
  static const AplyyMedicine2Screen = "/AplyyMedicine2Screen";
  static const AplyyMedicine3Screen = "/AplyyMedicine3Screen";
  static const BusinessScreen = "/BusinessScreen";
  static const AplyyBusinessScreen = "/AplyyBusinessScreen";
  static const AplyyBusiness2Screen = "/AplyyBusiness2Screen";
  static const AplyyBusiness3Screen = "/AplyyBusiness3Screen";
  static const EngineeringTechnologyScreen = "/EngineeringTechnologyScreen";
  static const AplyyEngineeringTechnologyScreen =
      "/AplyyEngineeringTechnologyScreen";
  static const AplyyEngineeringTechnology2Screen =
      "/AplyyEngineeringTechnology2Screen";
  static const AplyyEngineeringTechnology3Screen =
      "/AplyyEngineeringTechnology3Screen";
  static const BusinessAuCScreen = "/BusinessAuCScreen";
  static const AplyyBusinessAuCScreen = "/AplyyBusinessAuCScreen";
  static const AplyyBusinessAuC2Screen = "/AplyyBusinessAuC2Screen";
  static const AplyyBusinessAuC3Screen = "/AplyyBusinessAuC3Screen";
  static const GlobalAffairsScreen = "/GlobalAffairsScreen";
  static const AplyyGlobalAffairsScreen = "/AplyyGlobalAffairsScreen";
  static const AplyyGlobalAffairs2Screen = "/AplyyGlobalAffairs2Screen";
  static const AplyyGlobalAffairs3Screen = "/AplyyGlobalAffairs3Screen";
  static const HssAucScreen = "/HssAucScreen";
  static const AplyyHssAucScreen = "/AplyyHssAucScreen";
  static const AplyyHssAuc2Screen = "/AplyyHssAuc2Screen";
  static const AplyyHssAuc3Screen = "/AplyyHssAuc3Screen";
  static const AlsunmiuScreen = "/AlsunmiuScreen";
  static const AplyyAlsunMIUScreen = "/AplyyAlsunMIUScreen";
  static const AplyyAlsunMIU2Screen = "/AplyyAlsunMIU2Screen";
  static const AplyyAlsunMIU3Screen = "/AplyyAlsunMIU3Screen";
  static const OralanddentalScreen = "/OralanddentalScreen";
  static const AplyyOralanddentalMIUScreen = "/AplyyOralanddentalMIUScreen";
  static const AplyyOralanddentalMIU2Screen = "/AplyyOralanddentalMIU2Screen";
  static const AplyyOralanddentalMIU3Screen = "/AplyyOralanddentalMIU3Screen";
  static const EngineeringMIUScreen = "/EngineeringMIUScreen";
  static const AplyyEngineeringMIUScreen = "/AplyyEngineeringMIUScreen";
  static const AplyyEngineeringMIU2Screen = "/AplyyEngineeringMIU2Screen";
  static const AplyyEngineeringMIU3Screen = "/AplyyEngineeringMIU3Screen";
  static const BUSINESSAhramScreen = "/BUSINESSAhramScreen";
  static const AplyyBUSINESSAhramScreen = "/AplyyBUSINESSAhramScreen";
  static const AplyyBUSINESSAhram2Screen = "/AplyyBUSINESSAhram2Screen";
  static const AplyyBUSINESSAhram3Screen = "/AplyyBUSINESSAhram3Screen";
  static const DENTISTRYAhramScreen = "/DENTISTRYAhramScreen";
  static const AplyyDENTISTRYAhramScreen = "/AplyyDENTISTRYAhramScreen";
  static const AplyyDENTISTRYAhram2Screen = "/AplyyDENTISTRYAhram2Screen";
  static const AplyyDENTISTRYAhram3Screen = "/AplyyDENTISTRYAhram3Screen";
  static const PHARMACYAhramScreen = "/PHARMACYAhramScreen";
  static const AplyyPHARMACYAhramScreen = "/AplyyPHARMACYAhramScreen";
  static const AplyyPHARMACYAhram2Screen = "/AplyyPHARMACYAhram2Screen";
  static const AplyyPHARMACYAhram3Screen = "/AplyyPHARMACYAhram3Screen";
  static const MediaScreen = "/MediaScreen";
  static const AplyyMediaScreenShroukScreen = "/AplyyMediaScreenShroukScreen";
  static const AplyyMediaScreenShrouk2Screen = "/AplyyMediaScreenShrouk2Screen";
  static const AplyyMediaScreenShrouk3Screen = "/AplyyMediaScreenShrouk3Screen";
  static const MISScreen = "/MISScreen";
  static const AplyyMISShroukScreen = "/AplyyMISShroukScreen";
  static const AplyyMISShrouk2Screen = "/AplyyMISShrouk2Screen";
  static const AplyyMISShrouk3Screen = "/AplyyMISShrouk3Screen";
  static const EngineeringShroukScreen = "/EngineeringShroukScreen";
  static const AplyyENGShroukScreen = "/AplyyENGShroukScreen";
  static const AplyyENGShrouk2Screen = "/AplyyENGShrouk2Screen";
  static const AplyyENGShrouk3Screen = "/AplyyENGShrouk3Screen";
  static const CSBHTIcreen = "/CSBHTIcreen";
  static const AplyyCSBHTIcreen = "/AplyyCSBHTIcreen";
  static const AplyyCSBHTI2creen = "/AplyyCSBHTI2creen";
  static const AplyyCSBHTI3creen = "/AplyyCSBHTI3creen";
  static const BusinessBHTIcreen = "/BusinessBHTIcreen";
  static const AplyyBusinessBHTIcreen = "/AplyyBusinessBHTIcreen";
  static const AplyyBusinessBHTI2creen = "/AplyyBusinessBHTI2creen";
  static const AplyyBusinessBHTI3creen = "/AplyyBusinessBHTI3creen";
  static const EngBHTIcreen = "/EngBHTIcreen";
  static const AplyyEngBHTIcreen = "/AplyyEngBHTIcreen";
  static const AplyyEngBHTI2creen = "/AplyyEngBHTI2creen";
  static const AplyyEngBHTI3creen = "/AplyyEngBHTI3creen";
  static const CsModernScreen = "/CsModernScreen";
  static const AplyyCsModernScreen = "/AplyyCsModernScreen";
  static const AplyyCsModern2Screen = "/AplyyCsModern2Screen";
  static const AplyyCsModern3Screen = "/AplyyCsModern3Screen";
  static const MISModernScreen = "/MISModernScreen";
  static const AplyyMISModernScreen = "/AplyyMISModernScreen";
  static const AplyyMISModern2Screen = "/AplyyMISModern2Screen";
  static const AplyyMISModern3Screen = "/AplyyMISModern3Screen";
  static const EcModernScreen = "/EcModernScreen";
  static const AplyyEcModernScreen = "/AplyyEcModernScreen";
  static const AplyyEcModern2Screen = "/AplyyEcModern2Screen";
  static const AplyyEcModern3Screen = "/AplyyEcModern3Screen";
  static const MISfutureScreen = "/MISfutureScreen";
  static const AplyyMISfutureScreen = "/AplyyMISfutureScreen";
  static const AplyyMISfuture2Screen = "/AplyyMISfuture2Screen";
  static const AplyyMISfuture3Screen = "/AplyyMISfuture3Screen";
  static const CSfutureScreen = "/CSfutureScreen";
  static const AplyyCSfutureScreen = "/AplyyCSfutureScreen";
  static const AplyyCSfuture2Screen = "/AplyyCSfuture2Screen";
  static const AplyyCSfuture3Screen = "/AplyyCSfuture3Screen";
  static const BISfutureScreen = "/BISfutureScreen";
  static const AplyyBISfutureScreen = "/AplyyBISfutureScreen";
  static const AplyyBISfuture2Screen = "/AplyyBISfuture2Screen";
  static const AplyyBISfuture3Screen = "/AplyyBISfuture3Screen";
  // end Faculty//
}
