// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:vidyaveechi_website/view/colors/colors.dart';


// class PrivacyPolicy extends StatefulWidget {
//   const PrivacyPolicy({super.key});
//   static const String route = '/privacypolicy';

//   @override
//   State<PrivacyPolicy> createState() => _PrivacyPolicyState();
// }

// class _PrivacyPolicyState extends State<PrivacyPolicy> {
//   @override
//   Widget build(BuildContext context) {
//     var screenSize = MediaQuery.of(context).size;
//     return Scaffold(
//       backgroundColor: adminePrimayColor,
//       appBar: AppBar(
//           iconTheme: const IconThemeData(color: cWhite),
//           backgroundColor: adminePrimayColor,
//           title: Wrap(
//             children: [
//               // GoogleMonstserratWidgets(
//               //   text: "Privacy Policy",
//               //   fontsize: 15.w,
//               // ),
//               Text(
//                 "Privacy Policy",
//                 maxLines: 2,
//                 // overflow: TextOverflow.clip,
//                 style: GoogleFonts.montserrat(
//                   // letterSpacing: letterSpacing,
//                   fontSize: 15,
//                   fontWeight: FontWeight.w500,
//                   color: Colors.white70,
//                 ),
//               )
//             ],
//           )),
//       body: SingleChildScrollView(
//         child: Center(
//           child: SizedBox(
//             width: screenSize.width * .9,
//             child: Column(
//               children: [
//                 Image.network(
//                   "https://firebasestorage.googleapis.com/v0/b/dujo-kerala-schools-1a6c5.appspot.com/o/files%2Fprivacy%20and%20policy%2Fprivacy%201.jpg?alt=media&token=557841f6-357b-467b-83e3-a89c2d5a631b",
//                 ),

//                 ////////////1
//                 Image.network(
//                   "https://firebasestorage.googleapis.com/v0/b/dujo-kerala-schools-1a6c5.appspot.com/o/files%2Fprivacy%20and%20policy%2Fprivacy%202.jpg?alt=media&token=c0169af7-77fe-44b5-97df-c0a65b97b476",
//                 ),
//                 /////////////2
//                 Image.network(
//                   "https://firebasestorage.googleapis.com/v0/b/dujo-kerala-schools-1a6c5.appspot.com/o/files%2Fprivacy%20and%20policy%2Fprivacy%203.jpg?alt=media&token=49baf70d-346d-42ef-aa58-8ebbe665ca09",
//                 ),
//                 //////////////3
//                 Image.network(
//                   "https://firebasestorage.googleapis.com/v0/b/dujo-kerala-schools-1a6c5.appspot.com/o/files%2Fprivacy%20and%20policy%2Fprivacy%204.jpg?alt=media&token=1deb3826-4397-4ffa-93ce-b887d44104f4",
//                 ),
//                 /////////////////4
//                 Image.network(
//                   "https://firebasestorage.googleapis.com/v0/b/dujo-kerala-schools-1a6c5.appspot.com/o/files%2Fprivacy%20and%20policy%2Fprivacy%205.jpg?alt=media&token=b3913f7e-9d62-44c8-b0e5-4ebe3edc9cb3",
//                 ),
//                 //////////////5
//                 Image.network(
//                   "https://firebasestorage.googleapis.com/v0/b/dujo-kerala-schools-1a6c5.appspot.com/o/files%2Fprivacy%20and%20policy%2Fprivacy%206%20to%20edit.jpg?alt=media&token=abaaeace-1e80-404e-97e0-a84e539f93cb",
//                 ),
//                 /////////////////6
//                 Image.network(
//                   "https://firebasestorage.googleapis.com/v0/b/dujo-kerala-schools-1a6c5.appspot.com/o/files%2Fprivacy%20and%20policy%2Fprivacy%207.jpg?alt=media&token=c08fa12d-ffa4-4f27-9f2d-46f3c2f060d1",
//                 ),
//                 ////////////////7
//                 Image.network(
//                   "https://firebasestorage.googleapis.com/v0/b/dujo-kerala-schools-1a6c5.appspot.com/o/files%2Fprivacy%20and%20policy%2Fchild%20policy%201.jpg?alt=media&token=5d3a5ddb-6006-4817-9b8e-0af697f00cb2",
//                 ),
//                 //////////////8
//                 Image.network(
//                   "https://firebasestorage.googleapis.com/v0/b/dujo-kerala-schools-1a6c5.appspot.com/o/files%2Fprivacy%20and%20policy%2Fchild%20policy%202.jpg?alt=media&token=76204174-3c2a-4c17-b8d3-144f03aab3df",
//                 ),
//                 /////////////9
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:little_flower/view/colors/colors.dart';
import 'package:little_flower/view/widgets/fonts/google_poppins.dart';

class PrivacyPolicy extends StatefulWidget {
  const PrivacyPolicy({super.key});

  @override
  State<PrivacyPolicy> createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: adminePrimayColor,
      appBar: AppBar(
          iconTheme: const IconThemeData(color: cWhite),
          backgroundColor: adminePrimayColor,
          title: Wrap(
            children: [
              // GoogleMonstserratWidgets(
              //   text: "Privacy Policy",
              //   fontsize: 15.w,
              // ),
              Text(
                "Privacy Policy",
                maxLines: 2,
                // overflow: TextOverflow.clip,
                style: GoogleFonts.montserrat(
                  // letterSpacing: letterSpacing,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.white70,
                ),
              )
            ],
          )),
      body:SingleChildScrollView(
        child: Center(
          child: SizedBox(
            width: screenSize.width * .9,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GooglePoppinsWidgets(
                  text: 'Privacy Policy\n\nLast updated: February 14, 2023',
                  fontsize: 14,
                  color: cWhite,
                ),
                const SizedBox(
                  height: 10,
                ),
                GooglePoppinsWidgets(
                  text:
                      'This Privacy Policy describes Our policies and procedures on the collection, use and disclosure of Your information when You use the Service and tells You about Your privacy rights and how the law protects You.\n\nWe use Your Personal data to provide and improve the Service. By using the Service, You agree to the collection and use of information in accordance with this Privacy Policy. This Privacy Policy has been created with the help of the Terms Feed Privacy Policy Generator.\n',
                  fontsize: 14,
                  color: cWhite,
                ),

                GooglePoppinsWidgets(
                  text: 'Interpretation and Definitions',
                  fontsize: 20,
                  color: cWhite,
                  fontWeight: FontWeight.bold,
                ),
                const SizedBox(
                  height: 10,
                ),
                GooglePoppinsWidgets(
                  text:
                      'Interpretation\nThe words of which the initial letter is capitalized have meanings defined under the following conditions. The following definitions shall have the same meaning regardless of whether they appear in singular or in plural.',
                  fontsize: 14,
                  color: cWhite,
                ),
                const SizedBox(
                  height: 10,
                ),
                GooglePoppinsWidgets(
                  text:
                      'Definitions \nFor the purposes of this Privacy Policy:\n\nAccount-means a unique account created for You to access our Service or parts ofour Service.\n\nCompany-(referred to as either "the Company", "We", "Us" or "Our" in this Agreement) refers to 📌 Little Flower English Medium L P School Mananthavady \nWayanad - 670 645, Kerala,India\n📞 	04935 243881\n ✉️ lfemlpmananthavady@gmail.com\n\n Cookies -are small files that are placed on Your computer, mobile device or any other device by a website, containing the details of Your browsing history on that website among its many uses. \n\nCountry-refers to: Kerala, India\n\n Device- means any device that can access the Service- such as a computer, a cellphone or a digital tablet. \n\nPersonal Data-is any information that relates to an identified or identifiable individual.\n\n Service- refers to the Website. \n\nService Provider-means any natural or legal person who processes the data on behalf of the Company. It refers to third-party companies or individuals employed by the Company to facilitate the Service, to provide the Service on behalf of the Company, to perform services related to the Service or to assist the Company in analyzing how the Service is used.\n\nUsage Data refers to data collected automatically, either generated by the use of the Service or from the Service infrastructure itself (for example, the duration of a page visit).\n\nWebsite refers to Little Flower, accessible from https://littleflower.com/\nYou means the individual accessing or using the Service, or the company, or other legal entity on behalf of which such individual is accessing or using the Service, as applicable.',
                  fontsize: 14,
                  color: cWhite,
                ),
                 const SizedBox(
                  height: 10,
                ),
                GooglePoppinsWidgets(
                  text: 'Collecting and Using Your Personal Data',
                  fontsize: 20,
                  color: cWhite,
                  fontWeight: FontWeight.bold,
                ),  const SizedBox(
                  height: 10,
                ),
                 GooglePoppinsWidgets(
                  text: 'Types of Data Collected',
                  fontsize: 16,
                  color: cWhite,
                  fontWeight: FontWeight.bold,
                ),  const SizedBox(
                  height: 10,
                ),
                  GooglePoppinsWidgets(
                  text: 'Personal Data\n While using Our Service, We may ask You to provide Us with certain personally identifiable information that can be used to contact or identify You. Personally identifiable information may include, but is not limited to:\n\nEmail address \nFirst name and last name \nPhone number \nAddress, State, Province, ZIP/Postal code, City \nUsage Data',
                  fontsize: 14,
                  color: cWhite,
                
                ),  const SizedBox(
                  height: 10,
                ),
                   GooglePoppinsWidgets(
                  text: 'Usage Data\n Usage Data is collected automatically when using the Service.\n\nUsage Data may include information such as Your Device&#39;s Internet Protocol address (e.g. IP address), browser type, browser version, the pages of our Service that You visit, the time and date of Your visit, the time spent on those pages, unique device identifiers and other diagnostic data.\n\nWhen You access the Service by or through a mobile device, We may collect certain information automatically, including, but not limited to, the type of mobile device You use, Your mobile device unique ID, the IP address of Your mobile device, Your mobile operating system, the type of mobile Internet browser You use, unique device identifiers and other diagnostic data.\n\nWe may also collect information that Your browser sends whenever You visit our Service or when You access the Service by or through a mobile device.\n\nTracking Technologies and Cookies\nWe use Cookies and similar tracking technologies to track the activity on Our Service andstore certain information. Tracking technologies used are beacons, tags, and scripts to collect and track information and to improve and analyze Our Service. The technologies We use may include:',
                  fontsize: 14,
                  color: cWhite,
                
                ),  const SizedBox(
                  height: 10,
                ),   GooglePoppinsWidgets(
                  text: '* Cookies or Browser Cookies. A cookie is a small file placed on Your Device. You can instruct Your browser to refuse all Cookies or to indicate when a Cookie is being sent. However, if You do not accept Cookies, You may not be able to use some parts of our Service. Unless you have adjusted Your browser setting so that it will refuse Cookies, our Service may use Cookies.\n*Web Beacons. Certain sections of our Service and our emails may contain small electronic files known as web beacons (also referred to as clear gifs, pixel tags, and single-pixel gifs) that permit the Company, for example, to count users who have visited those pages or opened an email and for other related website statistics (for example, recording the popularity of a certain section and verifying system and server integrity).\n\nCookies can be "Persistent" or" Session" Cookies. Persistent Cookies remain on Yourpersonal computer or mobile device when You go offline, while Session Cookies are deleted as soon as You close Your web browser. You can learn more about cookies on Terms Feed website article.\nWe use both Session and Persistent Cookies for the purposes set out below:\n\n',
                  fontsize: 14,
                  color: cWhite,
                
                ),  const SizedBox(
                  height: 10,
                ),GooglePoppinsWidgets(
                  text: 'Necessary / Essential Cookies',
                  fontsize: 16,
                  color: cWhite,
                  fontWeight: FontWeight.bold,
                ),const SizedBox(
                  height: 10,
                ),
                GooglePoppinsWidgets(
                  text: 'Type: Session Cookies\nAdministered by: Us\nPurpose: These Cookies are essential to provide You with services available through the Website and to enable You to use some of its features. They help to authenticate users and prevent fraudulent use of user accounts. Without these Cookies, the services that You have asked for cannot be provided, and We only use these Cookies to provide You with those services.',
                  fontsize: 14,
                  color: cWhite,
                
                ),
                 const SizedBox(
                  height: 10,
                ),GooglePoppinsWidgets(
                  text: 'Cookies Policy / Notice Acceptance Cookies',
                  fontsize: 16,
                  color: cWhite,
                  fontWeight: FontWeight.bold,
                ),const SizedBox(
                  height: 10,
                ),
                GooglePoppinsWidgets(
                  text: 'Type: Persistent Cookies\nAdministered by: Us\nPurpose: These Cookies identify if users have accepted the use of cookies on the Website.',
                  fontsize: 14,
                  color: cWhite,
                  
                ),const SizedBox(
                  height: 10,
                ),GooglePoppinsWidgets(
                  text: 'Functionality Cookies',
                  fontsize: 16,
                  color: cWhite,
                  fontWeight: FontWeight.bold,
                ),const SizedBox(
                  height: 10,
                ),
                GooglePoppinsWidgets(
                  text: 'Type: Persistent Cookies\nAdministered by: Us\nPurpose: These Cookies allow us to remember choices You make when You use the Website, such as remembering your login details or language preference. The purpose of these Cookies is to provide You with a more personal experience and to avoid You having to re-enter your preferences every time You use the Website.\n\nFor more information about the cookies we use and your choices regarding cookies, please visit our Cookies Policy or the Cookies section of our Privacy Policy.',
                  fontsize: 14,
                  color: cWhite,
                  
                ),const SizedBox(
                  height: 10,
                ),
                GooglePoppinsWidgets(
                  text: 'Use of Your Personal Data',
                  fontsize: 16,
                  color: cWhite,
                  fontWeight: FontWeight.bold,
                ),const SizedBox(
                  height: 10,
                ),
                GooglePoppinsWidgets(
                  text: 'The Company may use Personal Data for the following purposes:\n\nTo provide and maintain our Service, including to monitor the usage of our Service.\n\nTo manage Your Account: to manage Your registration as a user of the Service. The Personal Data You provide can give You access to different functionalities of the Service that are available to You as a registered user.\n\nFor the performance of a contract: the development, compliance and undertaking of the purchase contract for the products, items or services You have purchased or of any other contract with Us through the Service.\n\nTo contact You: To contact You by email, telephone calls, SMS, or other equivalent forms of electronic communication, such as a mobile application&#39;s push notifications regarding updates or informative communications related to the functionalities, products or contracted services, including the security updates, when necessary or reasonable for their implementation.\n\nTo provide You with news, special offers and general information about other goods, services and events which we offer that are similar to those that you have already purchased or enquired about unless You have opted not to receive such information.\n\nTo manage Your requests: To attend and manage Your requests to Us.\n\nFor business transfers: We may use Your information to evaluate or conduct a merger, divestiture, restructuring, reorganization, dissolution, or other sale or transfer of some or all of Our assets, whether as a going concern or as part of bankruptcy, liquidation, or similar proceeding, in which Personal Data held by Us about our Service users is among the assets transferred.\n\nFor other purposes: We may use Your information for other purposes, such as data analysis, identifying usage trends, determining the effectiveness of our promotional campaigns and to evaluate and improve our Service, products, services, marketing and your experience.\n\nWe may share Your personal information in the following situations:\n\n*With Service Providers: We may share Your personal information with Service Providers to monitor and analyze the use of our Service, to contact You. \n\n*For business transfers: We may share or transfer Your personal information in connection with, or during negotiations of, any merger, sale of Company assets, financing, or acquisition of all or a portion of Our business to another company.\n\n* With Affiliates: We may share Your information with Our affiliates, in which case we will require those affiliates to honor this Privacy Policy. Affiliates include Our parent company and any other subsidiaries, joint venture partners or other companies that We control or that are under common control with Us.\n\n*With business partners: We may share Your information with Our business partners to offer You certain products, services or promotions. \n\n* With other users: when You share personal information or otherwise interact in the public areas with other users, such information may be viewed by all users and may be publicly distributed outside.\n\n* With Your consent: We may disclose Your personal information for any other purposewith Your consent.',
                  fontsize: 14,
                  color: cWhite,
                  
                ),const SizedBox(
                  height: 10,
                ),
                GooglePoppinsWidgets(
                  text: 'Retention of Your Personal Data',
                  fontsize: 16,
                  color: cWhite,
                  fontWeight: FontWeight.bold,
                ),const SizedBox(
                  height: 10,
                ),
                GooglePoppinsWidgets(
                  text: 'The Company will retain Your Personal Data only for as long as is necessary for the purposes set out in this Privacy Policy. We will retain and use Your Personal Data to the extent necessary to comply with our legal obligations (for example, if we are required to retain your data to comply with applicable laws), resolve disputes, and enforce our legal agreements and policies.\n\nThe Company will also retain Usage Data for internal analysis purposes. Usage Data is generally retained for a shorter period of time, except when this data is used to strengthen the security or to improve the functionality of Our Service, or We are legally obligated to retain this data for longer time periods.',
                  fontsize: 14,
                  color: cWhite,
                  
                ),const SizedBox(
                  height: 10,
                ),
                 GooglePoppinsWidgets(
                  text: 'Transfer of Your Personal Data',
                  fontsize: 16,
                  color: cWhite,
                  fontWeight: FontWeight.bold,
                ),const SizedBox(
                  height: 10,
                ),
                GooglePoppinsWidgets(
                  text: 'Your information, including Personal Data, is processed at the Company&#39;s operating offices and in any other places where the parties involved in the processing are located. It means that this information may be transferred to — and maintained on — computers located outside of Your state, province, country or other governmental jurisdiction where the data protection laws may differ than those from Your jurisdiction.\n\nYour consent to this Privacy Policy followed by Your submission of such information represents Your agreement to that transfer.\n\nThe Company will take all steps reasonably necessary to ensure that Your data is treatedsecurely and in accordance with this Privacy Policy and no transfer of Your Personal Data will take place to an organization or a country unless there are adequate controls in place including the security of Your data and other personal information.',
                  fontsize: 14,
                  color: cWhite,
                  
                ),const SizedBox(
                  height: 10,
                ),
                 GooglePoppinsWidgets(
                  text: 'Delete Your Personal Data',
                  fontsize: 16,
                  color: cWhite,
                  fontWeight: FontWeight.bold,
                ),const SizedBox(
                  height: 10,
                ),
                GooglePoppinsWidgets(
                  text: 'You have the right to delete or request that We assist in deleting the Personal Data that We have collected about You.\n\nOur Service may give You the ability to delete certain information about You from within the Service.\n\nYou may update, amend, or delete Your information at any time by signing in to Your Account, if you have one, and visiting the account settings section that allows you to manage Your personal information. You may also contact Us to request access to, correct, or delete any personal information that You have provided to Us. Please note, however, that We may need to retain certain information when we have a legal obligation or lawful basis to do so.',
                  fontsize: 14,
                  color: cWhite,
                  
                ),const SizedBox(
                  height: 10,
                ),
                GooglePoppinsWidgets(
                  text: 'Disclosure of Your Personal Data',
                  fontsize: 16,
                  color: cWhite,
                  fontWeight: FontWeight.bold,
                ),const SizedBox(
                  height: 10,
                ),
                  GooglePoppinsWidgets(
                  text: 'Business Transactions',
                  fontsize: 14,
                  color: cWhite,
                  fontWeight: FontWeight.bold,
                ),const SizedBox(
                  height: 10,
                ),
                GooglePoppinsWidgets(
                  text: 'If the Company is involved in a merger, acquisition or asset sale, Your Personal Data may be transferred. We will provide notice before Your Personal Data is transferred and becomes subject to a different Privacy Policy.',
                  fontsize: 14,
                  color: cWhite,
                  
                ),const SizedBox(
                  height: 10,
                ),
               
                  GooglePoppinsWidgets(
                  text: 'Law enforcement',
                  fontsize: 14,
                  color: cWhite,
                  fontWeight: FontWeight.bold,
                ),const SizedBox(
                  height: 10,
                ),
                GooglePoppinsWidgets(
                  text: 'Under certain circumstances, the Company may be required to disclose Your Personal Data if required to do so by law or in response to valid requests by public authorities (e.g. a court or a government agency).',
                  fontsize: 14,
                  color: cWhite,
                  
                ),const SizedBox(
                  height: 10,
                ),
                GooglePoppinsWidgets(
                  text: 'Other legal requirements',
                  fontsize: 14,
                  color: cWhite,
                  fontWeight: FontWeight.bold,
                ),const SizedBox(
                  height: 10,
                ),
                GooglePoppinsWidgets(
                  text: 'The Company may disclose Your Personal Data in the good faith belief that such action is necessary to:\n\n* Comply with a legal obligation\n\n* Protect and defend the rights or property of the Company\n\n* Prevent or investigate possible wrongdoing in connection with the Service\n\n*Protect the personal safety of Users of the Service or the public\n\n*Protect against legal liability   ',
                  fontsize: 14,
                  color: cWhite,
                  
                ),const SizedBox(
                  height: 10,
                ),
                 GooglePoppinsWidgets(
                  text: 'Security of Your Personal Data',
                  fontsize: 14,
                  color: cWhite,
                  fontWeight: FontWeight.bold,
                ),const SizedBox(
                  height: 10,
                ),
                GooglePoppinsWidgets(
                  text: 'The security of Your Personal Data is important to Us, but remember that no method oftransmission over the Internet, or method of electronic storage is 100% secure. While We strive to use commercially acceptable m eans to protect Your Personal Data, We cannot guarantee its absolute security.',
                  fontsize: 14,
                  color: cWhite,
                  
                ),const SizedBox(
                  height: 10,
                ), GooglePoppinsWidgets(
                  text: "Children's Privacy",
                  fontsize: 16,
                  color: cWhite,
                  fontWeight: FontWeight.bold,
                ),const SizedBox(
                  height: 10,
                ),
                GooglePoppinsWidgets(
                  text: 'Our Service does not address anyone under the age of 13. We do not knowingly collect personally identifiable information from anyone under the age of 13. If You are a parent or guardian and You are aware that Your child has provided Us with Personal Data, please contact Us. If We become aware that We have collected Personal Data from anyone under the age of 13 without verification of parental consent, We take steps to remove that information from Our servers.\n\nIf We need to rely on consent as a legal basis for processing Your information and Your country requires consent from a parent, We may require Your parent&#39;s consent before We collect and use that information.',
                  fontsize: 14,
                  color: cWhite,
                  
                ),const SizedBox(
                  height: 10,
                ),
                GooglePoppinsWidgets(
                  text: "Changes to this Privacy Policy",
                  fontsize: 16,
                  color: cWhite,
                  fontWeight: FontWeight.bold,
                ),const SizedBox(
                  height: 10,
                ),
                GooglePoppinsWidgets(
                  text: 'We may update Our Privacy Policy from time to time. We will notify You of any changes by posting the new Privacy Policy on this page.\n\nWe will let You know via email and/or a prominent notice on Our Service, prior to the change becoming effective and update the &quot;Last updated&quot; date at the top of this Privacy Policy.\n\nYou are advised to review this Privacy Policy periodically for any changes. Changes to this Privacy Policy are effective when they are posted on this page.',
                  fontsize: 14,
                  color: cWhite,
                  
                ),const SizedBox(
                  height: 10,
                ),
                GooglePoppinsWidgets(
                  text: "Contact Us",
                  fontsize: 16,
                  color: cWhite,
                  fontWeight: FontWeight.bold,
                ),const SizedBox(
                  height: 10,
                ),
                GooglePoppinsWidgets(
                  text: 'If you have any questions about this Privacy Policy, You can contact us:\n\nBy email: lfemlpmananthavady@gmail.com\n\nBy visiting this page on our website:  https://littleflower.com/\n\nBy phone number: 	04935 243881\n\nBy mail:\n\n📌 Little Flower English Medium L P School Mananthavady \nWayanad - 670 645, Kerala,India\n📞 	04935 243881\n ✉️ lfemlpmananthavady@gmail.com',
                  fontsize: 14,
                  color: cWhite,
                 
                ),const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
