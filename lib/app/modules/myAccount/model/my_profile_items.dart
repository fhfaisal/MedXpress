import 'package:medxpress/app/utils/constants/icon_strings.dart';

class ProfileItems{
  String icon,name;
  ProfileItems({required this.icon,required this.name});
}
List <ProfileItems> profileItems=[
  ProfileItems(icon: AppIconStrings.myProfile, name: 'My Profile'),
  ProfileItems(icon: AppIconStrings.changePassword, name: 'Change Password'),
  ProfileItems(icon: AppIconStrings.notifications, name: 'Notifications'),
  ProfileItems(icon: AppIconStrings.wishList, name: 'Wish-list'),
  ProfileItems(icon: AppIconStrings.transactionHistory, name: 'Transaction History'),
  ProfileItems(icon: AppIconStrings.specialOffer, name: 'Special Offers'),
  ProfileItems(icon: AppIconStrings.FAQ, name: 'FAQ'),
];
List <ProfileItems> appSettings=[
  ProfileItems(icon: AppIconStrings.aboutUs, name: 'About Us'),
  ProfileItems(icon: AppIconStrings.contactUs, name: 'Contact Us'),
  ProfileItems(icon: AppIconStrings.rateOurApp, name: 'Rate Our App'),
  ProfileItems(icon: AppIconStrings.termsAndConditions, name: 'Terms & Conditions'),
  ProfileItems(icon: AppIconStrings.appPermission, name: 'App Permissions'),
  ProfileItems(icon: AppIconStrings.appVersion, name: 'App Version'),
  ProfileItems(icon: AppIconStrings.logOut, name: 'Log Out'),
];