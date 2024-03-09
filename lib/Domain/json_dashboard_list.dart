class DashboardList {
  int statusCode;
  bool apiStatus;
  UserData user;
  // SiteData site;
  // String token;
  // String waitingScreenMSG;
  // String networkMedium;
  // String networkNotEnough;
  // String networkGood;

  DashboardList({
    required this.statusCode,
    required this.apiStatus,
    required this.user,
    // required this.site,
    // required this.token,
    // required this.waitingScreenMSG,
    // required this.networkMedium,
    // required this.networkNotEnough,
    // required this.networkGood,
  });

  factory DashboardList.fromJson(Map<String, dynamic> json) {
    return DashboardList(
      statusCode: json['statusCode'],
      apiStatus: json['apiStatus'],
      user: UserData.fromJson(json['user']),
      // site: SiteData.fromJson(json['site']),
      // token: json['token'],
      // waitingScreenMSG: json['waitingScreenMSG'],
      // networkMedium: json['network_medium'],
      // networkNotEnough: json['network_not_enough'],
      // networkGood: json['network_good'],
    );
  }
}

class UserData {
  String firstName;
  String lastName;
  String midName;
  String address2;
  String affiliation;
  String govtEmployee;
  String fullName;
  String preferredName;
  String email;
  String homeNumber;
  String telephone;
  String degree;
  String speciality;
  String institution;
  String address;
  String city;
  String state;
  String zip;
  int prescriber;
  String biography;
  String biographyPath;
  String cv;
  String cvPath;
  String photo;
  String photoPath;
  String primaryEmail;
  String npi;
  String userType;
  int attendeeType;
  int capAmount;
  int capMaxLimit;
  int capMaxEngagement;
  int activeStatus;
  int deleteStatus;
  int termsCondition;
  int resetPasswordFlag;
  int subscribeToNewsletter;
  int introVideo;
  int tier;
  int vaFlag;
  String title;
  int isCloned;
  int foodAndBeverageEligibility;
  int nationalSpeaker;
  int reconciled;
  int inExternalStatus;
  int id;
  String createdAt;
  String updatedAt;
  int rep;
  int dm;
  int role;
  int addedBy;
  int isContentSorter;
  int isCreateEngagementDisable;
  int nationalUser;
  int marketingUser;
  String isMaUser;
  String videoPlayPauseUrl;
  String videoUpdateSecondsUrl;
  String isCohostHierarchyDisabled;
  int globalUser;
  SingleBrand singleBrand;
  String singleProduct;

  UserData({
    required this.firstName,
    required this.lastName,
    required this.midName,
    required this.address2,
    required this.affiliation,
    required this.govtEmployee,
    required this.fullName,
    required this.preferredName,
    required this.email,
    required this.homeNumber,
    required this.telephone,
    required this.degree,
    required this.speciality,
    required this.institution,
    required this.address,
    required this.city,
    required this.state,
    required this.zip,
    required this.prescriber,
    required this.biography,
    required this.biographyPath,
    required this.cv,
    required this.cvPath,
    required this.photo,
    required this.photoPath,
    required this.primaryEmail,
    required this.npi,
    required this.userType,
    required this.attendeeType,
    required this.capAmount,
    required this.capMaxLimit,
    required this.capMaxEngagement,
    required this.activeStatus,
    required this.deleteStatus,
    required this.termsCondition,
    required this.resetPasswordFlag,
    required this.subscribeToNewsletter,
    required this.introVideo,
    required this.tier,
    required this.vaFlag,
    required this.title,
    required this.isCloned,
    required this.foodAndBeverageEligibility,
    required this.nationalSpeaker,
    required this.reconciled,
    required this.inExternalStatus,
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.rep,
    required this.dm,
    required this.role,
    required this.addedBy,
    required this.isContentSorter,
    required this.isCreateEngagementDisable,
    required this.nationalUser,
    required this.marketingUser,
    required this.isMaUser,
    required this.videoPlayPauseUrl,
    required this.videoUpdateSecondsUrl,
    required this.isCohostHierarchyDisabled,
    required this.globalUser,
    required this.singleBrand,
    required this.singleProduct,
  });

  factory UserData.fromJson(Map<String, dynamic> json) {
    return UserData(
      firstName: json['firstName'],
      lastName: json['lastName'],
      midName: json['midName'] ?? "",
      address2: json['address2'] ?? "",
      affiliation: json['affiliation'] ?? "",
      govtEmployee: json['govt_employee'] ?? "",
      fullName: json['fullName'] ?? "",
      preferredName: json['preferred_name'] ?? "",
      email: json['email'] ?? "",
      homeNumber: json['home_number'] ?? "",
      telephone: json['telephone'] ?? "",
      degree: json['degree'] ?? "",
      speciality: json['speciality'] ?? "",
      institution: json['institution'] ?? "",
      address: json['address'] ?? "",
      city: json['city'] ?? "",
      state: json['state'] ?? "",
      zip: json['zip'] ?? "",
      prescriber: json['prescriber'] ?? 0,
      biography: json['biography'] ?? "",
      biographyPath: json['biography_path'] ?? "",
      cv: json['cv'] ?? "",
      cvPath: json['cv_path'] ?? "",
      photo: json['photo'] ?? "",
      photoPath: json['photo_path'] ?? "",
      primaryEmail: json['primary_email'] ?? "",
      npi: json['npi'] ?? "",
      userType: json['userType'] ?? "",
      attendeeType: json['attendeeType'] ?? 0,
      capAmount: json['cap_amount'] ?? 0,
      capMaxLimit: json['cap_max_limit'] ?? 0,
      capMaxEngagement: json['cap_max_engagement'] ?? 0,
      activeStatus: json['active_status'] ?? 0,
      deleteStatus: json['delete_status'] ?? 0,
      termsCondition: json['terms_condition'] ?? 0,
      resetPasswordFlag: json['reset_password_flag'] ?? 0,
      subscribeToNewsletter: json['subscribe_to_newsletter'] ?? 0,
      introVideo: json['intro_video'] ?? 0,
      tier: json['tier'] ?? 0,
      vaFlag: json['va_flag'] ?? 0,
      title: json['title'] ?? "",
      isCloned: json['isCloned'] ?? 0,
      foodAndBeverageEligibility: json['foodAndBeverageEligiblity'] ?? 0,
      nationalSpeaker: json['nationalSpeaker'] ?? 0,
      reconciled: json['reconciled'] ?? 0,
      inExternalStatus: json['in_external_status'] ?? 0,
      id: json['id'] ?? 0,
      createdAt: json['createdAt'] ?? "",
      updatedAt: json['updatedAt'] ?? "",
      rep: json['rep'] ?? 0,
      dm: json['dm'] ?? 0,
      role: json['role'] ?? 0,
      addedBy: json['addedBy'] ?? 0,
      isContentSorter: json['is_content_sorter'] ?? 0,
      isCreateEngagementDisable: json['is_create_engagement_disable'] ?? 0,
      nationalUser: json['national_user'] ?? 0,
      marketingUser: json['marketing_user'] ?? 0,
      isMaUser: json['is_ma_user'] ?? "No",
      videoPlayPauseUrl: json['video_play_pause_url'] ?? "",
      videoUpdateSecondsUrl: json['video_update_seconds_url'] ?? "",
      isCohostHierarchyDisabled: json['is_cohost_hierarchy_disabled'] ?? "No",
      globalUser: json['global_user'] ?? 0,
      singleBrand: SingleBrand.fromJson(json['singleBrand']),
      singleProduct: json['singleProduct'] ?? "All",
    );
  }
}

class SiteData {
  String apiUrl;
  FirebaseData firebase;
  TokboxData tokbox;
  WebUrl weburl;
  ConfigData config;

  SiteData({
    required this.apiUrl,
    required this.firebase,
    required this.tokbox,
    required this.weburl,
    required this.config,
  });

  factory SiteData.fromJson(Map<String, dynamic> json) {
    return SiteData(
      apiUrl: json['apiUrl'],
      firebase: FirebaseData.fromJson(json['firebase']),
      tokbox: TokboxData.fromJson(json['tokbox']),
      weburl: WebUrl.fromJson(json['weburl']),
      config: ConfigData.fromJson(json['config']),
    );
  }
}

class FirebaseData {
  String apiKey;
  String authDomain;
  String databaseURL;
  String projectId;
  String firebaseAccess;
  String messagingSenderId;
  String gcmPusherKey;

  FirebaseData({
    required this.apiKey,
    required this.authDomain,
    required this.databaseURL,
    required this.projectId,
    required this.firebaseAccess,
    required this.messagingSenderId,
    required this.gcmPusherKey,
  });

  factory FirebaseData.fromJson(Map<String, dynamic> json) {
    return FirebaseData(
      apiKey: json['apiKey'],
      authDomain: json['authDomain'],
      databaseURL: json['databaseURL'],
      projectId: json['projectId'],
      firebaseAccess: json['firebaseAccess'],
      messagingSenderId: json['messagingSenderId'],
      gcmPusherKey: json['gcmPusherKey'],
    );
  }
}

class TokboxData {
  String apiKey;
  String extId;

  TokboxData({
    required this.apiKey,
    required this.extId,
  });

  factory TokboxData.fromJson(Map<String, dynamic> json) {
    return TokboxData(
      apiKey: json['apikey'],
      extId: json['extid'],
    );
  }
}

class WebUrl {
  String content;
  String prevuew;
  String faq;
  String introvideo;

  WebUrl({
    required this.content,
    required this.prevuew,
    required this.faq,
    required this.introvideo,
  });

  factory WebUrl.fromJson(Map<String, dynamic> json) {
    return WebUrl(
      content: json['content'],
      prevuew: json['prevuew'],
      faq: json['faq'],
      introvideo: json['introvideo'],
    );
  }
}
class ConfigData {
  List<MenuItem> leftmenu;
  List<BottomMenuItem> bottommenu;

  ConfigData({
    required this.leftmenu,
    required this.bottommenu,
  });

  factory ConfigData.fromJson(Map<String, dynamic> json) {
    List<MenuItem> leftMenuList = [];
    for (var item in json['leftmenu']) {
      leftMenuList.add(MenuItem.fromJson(item));
    }

    List<BottomMenuItem> bottomMenuList = [];
    for (var item in json['bottommenu']) {
      bottomMenuList.add(BottomMenuItem.fromJson(item));
    }

    return ConfigData(
      leftmenu: leftMenuList,
      bottommenu: bottomMenuList,
    );
  }
}

class MenuItem {
  String labelName;
  String iconSelected;
  String iconUnselected;
  String clickAction;
  String? link;

  MenuItem({
    required this.labelName,
    required this.iconSelected,
    required this.iconUnselected,
    required this.clickAction,
    this.link,
  });

  factory MenuItem.fromJson(Map<String, dynamic> json) {
    return MenuItem(
      labelName: json['label_name'],
      iconSelected: json['icon_selected'],
      iconUnselected: json['icon_unselected'],
      clickAction: json['click_action'],
      link: json['link'],
    );
  }
}


//
// class MenuItem {
//   String labelName;
//   String iconSelected;
//   String iconUnselected;
//   String clickAction;
//   String? link;
//
//   MenuItem({
//     required this.labelName,
//     required this.iconSelected,
//     required this.iconUnselected,
//     required this.clickAction,
//     this.link,
//   });
//
//   factory MenuItem.fromJson(Map<String, dynamic> json) {
//     return MenuItem(
//       labelName: json['label_name'],
//       iconSelected: json['icon_selected'],
//       iconUnselected: json['icon_unselected'],
//       clickAction: json['click_action'],
//       link: json['link'],
//     );
//   }
// }

class BottomMenuItem {
  String labelName;
  String clickAction;
  String iconSelected;
  String iconUnselected;
  String selectedTextColor;
  String unselectedTextColor;

  BottomMenuItem({
    required this.labelName,
    required this.clickAction,
    required this.iconSelected,
    required this.iconUnselected,
    required this.selectedTextColor,
    required this.unselectedTextColor,
  });

  factory BottomMenuItem.fromJson(Map<String, dynamic> json) {
    return BottomMenuItem(
      labelName: json['label_name'],
      clickAction: json['click_action'],
      iconSelected: json['icon_selected'],
      iconUnselected: json['icon_unselected'],
      selectedTextColor: json['selected_textcolor'],
      unselectedTextColor: json['unselected_textcolor'],
    );
  }
}

class SingleBrand {
  List<String> brandProduct;
  String brandName;
  String brandImage;
  String uploadPath;
  int isBudgetCheck;
  String originalBrandImage;
  String dialNumber;
  int isDialIn;
  int activeStatus;
  int deleteStatus;
  int createdBy;
  int updatedBy;
  int id;
  String createdAt;
  String updatedAt;
  int company;

  SingleBrand({
    required this.brandProduct,
    required this.brandName,
    required this.brandImage,
    required this.uploadPath,
    required this.isBudgetCheck,
    required this.originalBrandImage,
    required this.dialNumber,
    required this.isDialIn,
    required this.activeStatus,
    required this.deleteStatus,
    required this.createdBy,
    required this.updatedBy,
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.company,
  });

  factory SingleBrand.fromJson(Map<String, dynamic> json) {
    List<String> brandProductList = [];
    for (var item in json['brandProduct']) {
      brandProductList.add(item);
    }

    return SingleBrand(
      brandProduct: brandProductList,
      brandName: json['brand_name'],
      brandImage: json['brand_image'],
      uploadPath: json['upload_path'],
      isBudgetCheck: json['is_budget_check'],
      originalBrandImage: json['original_brand_image'],
      dialNumber: json['dial_number'],
      isDialIn: json['is_dial_in'],
      activeStatus: json['active_status'],
      deleteStatus: json['delete_status'],
      createdBy: json['created_by'],
      updatedBy: json['updated_by'],
      id: json['id'],
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
      company: json['company'],
    );
  }
}
