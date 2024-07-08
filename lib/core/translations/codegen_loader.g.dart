import 'dart:ui';
import 'package:easy_localization/easy_localization.dart';
import 'package:globaladvice_new/core/resource_manger/locale_keys.g.dart';

class CodegenLoader extends AssetLoader {
  const CodegenLoader();

  @override
  // ignore: avoid_renaming_method_parameters
  Future<Map<String, dynamic>> load(String fullPath, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String, dynamic> ar = {
    StringManager.phone: 'رقم الهاتف',
    StringManager.password: 'كلمه المرور',
    StringManager.login: 'تسجيل الدخول',
    StringManager.createAccount: 'إنشاء حساب',
    StringManager.dontHaveAccount: 'ليس لديك حساب؟',
    StringManager.alreadyHaveAnAccount: 'عندي حساب',
    StringManager.forgetPassword: 'نسيت كلمة المرور الخاصة بك؟',
    StringManager.signUpWithUs: 'سجل معنا الان',
    StringManager.firstName: 'الاسم الأول',
    StringManager.lastName: 'اسم العائلة',
    StringManager.gander: 'النوع',
    StringManager.city: 'مدينة',
    StringManager.next: 'التالي',
    StringManager.age: 'السن',
    StringManager.gender: 'جنس',
    StringManager.color: 'لون',
    StringManager.confirm: 'تاكيد',
    StringManager.temperament: 'طبع',
    StringManager.verify: 'تحقق',
    StringManager.resendCode: 'أعد إرسال الرمز',
    StringManager.youCanSendCodeAfter: 'يمكنك إعادة إرسال رمز التحقق بعد',
    StringManager.pleaseEnterTheCode: 'الرجاء إدخال الرمز الذي أرسل إلى',
    StringManager.enterYourEmail: 'أدخل البريد الالكتروني.',
    StringManager.sendCode: 'ارسل الرمز',
    StringManager.forgetPasswordHint:
        'سنرسل رمزا إلى بريدك الالكتروني للتحقق من بريدك الالكتروني لتعيين كلمة المرور الجديدة',
    StringManager.forgetPassword2: 'نسيت كلمة المرور',
    StringManager.weight: 'الوزن',
    StringManager.change: 'تغيير',
    StringManager.match: 'مطابق',
    StringManager.uploadProfileImage: 'تحميل صورة الملف الشخصي',
    StringManager.changeProfileImage: 'تغيير صورة الملف الشخصي',
    StringManager.dogInfo: 'معلومات كلبك',
    StringManager.dogType: 'نوع الكلب',
    StringManager.addMinimumThreeImages: 'أضف 3 صور كحد أدنى لكلبك',
    StringManager.uploadImage: 'تحميل الصورة',
    StringManager.selectGender: 'اختر الجنس',
    StringManager.medicalHistory: 'التاريخ الطبي',
    StringManager.specialNeeds: 'ذوي الاحتياجات الخاصة',
    StringManager.registrationNumber: 'رقم التسجيل',
    StringManager.selectCity: 'اختر المدينة',
    StringManager.selectCountry: 'إختر الدولة',
    StringManager.matchingDogs: 'مطابقة الكلاب',
    StringManager.matchingRequests: 'طلبات المطابقه',
    StringManager.seeWhoMatchesYourDog: 'معرفة من يطابق كلبك',
    StringManager.messages: 'رسائل',
    StringManager.notifications: 'الاشعارات',
    StringManager.myProfile: 'ملفي الشخصي',
    StringManager.editMyProfile: 'تعديل معلوماتي الشخصية',
    StringManager.editDogProfile: 'تعديل معلومات كلبي',
    StringManager.logOut: 'تسجيل خروج',
    StringManager.changePassword: 'تغيير كلمة المرور',
    StringManager.close: 'اغلاق',
  };

  static const Map<String, dynamic> en = {
    "hello": "hello",
  };

  static const Map<String, Map<String, dynamic>> mapLocales = {
    "ar": ar,
    "en": en,
  };
}
