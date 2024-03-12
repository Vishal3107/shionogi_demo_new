class ListEngagementsToday {
  bool? apiStatus;
  int? statusCode;
  ResultTodayEngagement? result;
  String? message;
  List<GetBulkList>? getBulkList;

  ListEngagementsToday(
      {this.apiStatus,
        this.statusCode,
        this.result,
        this.message,
        this.getBulkList});

  ListEngagementsToday.fromJson(Map<String, dynamic> json) {
    apiStatus = json['apiStatus'];
    statusCode = json['statusCode'];
    result =
    json['result'] != null ? ResultTodayEngagement.fromJson(json['result']) : null;
    message = json['message'];
    if (json['getBulkList'] != null) {
      getBulkList = <GetBulkList>[];
      json['getBulkList'].forEach((v) {
        getBulkList!.add(GetBulkList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['apiStatus'] = apiStatus;
    data['statusCode'] = statusCode;
    if (result != null) {
      data['result'] = result!.toJson();
    }
    data['message'] = message;
    if (getBulkList != null) {
      data['getBulkList'] = getBulkList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ResultTodayEngagement {
  List<MeetingVenues>? meetingVenues;
  // List<Null>? details;
  // List<Null>? av;
  // List<Null>? caterer;
  // List<Null>? collaborateDetails;
  List<AcceptedParticipantDetails>? acceptedParticipantDetails;
  User? user;
  int? spkUser;
  TypeOfMeeting? typeOfMeeting;
  // List<Null>? primaryMeetingId;
  Brand? brand;
  Product? product;
  Location? location;
  DmApprovalBy? dmApprovalBy;
  int? meetingStartUser;
  int? division;
  int? team;
  int? region;
  int? district;
  int? territory;
  int? userType;
  String? meetingId;
  String? startTime;
  Null? endTime;
  int? status;
  Null? sessionId;
  Null? token;
  int? statusForRepHcl;
  int? statusForKol;
  int? meetingPaused;
  Null? canceledBy;
  Null? canceledByType;
  String? avcomments;
  String? meetingAdminStatus;
  int? insufficientFund;
  int? engagementAmount;
  int? avStatus;
  int? closeOutStatus;
  int? flag;
  int? foodAndBeverage;
  int? dmApproval;
  int? dmInStatus;
  String? approvedTime;
  Null? dmDeclineComment;
  int? venueStatus;
  int? isVenue;
  int? isSpk;
  int? isStart;
  int? speakerHour;
  String? jobCodeName;
  String? mealType;
  int? isSpeakerSkipped;
  int? marketingDivision;
  Null? eoEndMeeting;
  String? timeZone;
  String? engagementTimeZone;
  int? colConfirmEmail;
  int? isMultiLocation;
  int? cancelId;
  int? isRemote;
  Null? cancelReason;
  String? sessionVideoTool;
  Null? cancelledAt;
  int? shadowEoInStatus;
  int? vivaId;
  int? contentViewId;
  int? engagementLeadTime;
  Null? pollQrCode;
  int? docEvalCertify;
  String? corporateId;
  int? hcpMaxReachFlag;
  int? isClosedRegistration;
  int? meetingRoomCapacityStatus;
  int? id;
  String? createdAt;
  String? updatedAt;
  int? isFranchiseAvailable;
  String? catererTitle;
  String? avTitle;
  String? attendeeTitle;
  // List<Null>? multipleLocation;
  String? engagementRegUrlLink;
  String? engagementRegQRCode;
  int? modelCount;
  String? hcpLink;
  String? isSkipStartEngagemet;
  int? otherAttendeeTotal;
  int? duration;
  int? coHostUser;
  bool? paymentButton;
  int? collaborateInviteCount;
  int? cohostInviteCount;
  int? cohostConfirmCount;
  int? collaboratorConfirmCount;
  bool? isSkipStartAndJoin;
  bool? kickOutStatus;
  bool? isSpeakerFromVirtual;
  int? myAttendeeTotal;
  int? myConfirmedInvite;
  int? myEmployeeCount;
  int? myConfirmedEmployeeCount;
  int? myAttendeePrescriberTotal;
  int? myAttendeeNonPrescriberTotal;
  int? attendeesInviteCount;
  int? attendeesConfirmCount;
  int? attendeesPrescriberConfirmCount;
  int? attendeesNonPrescriberConfirmCount;
  int? collaboratorsEmployeeCount;
  int? collaboratorAttendeesCount;
  int? isMeal;
  bool? showFoodAndBeverage;
  int? eoJoinLocationId;
  bool? isAddCollaboratorEnable;
  int? hcpAwaitAcceptCount;
  // List<Null>? speaker;
  // List<Null>? confirmSpkData;
  List<Null>? hcp;
  // List<Null>? employee;
  String? isHcpFoodEligibilityMsg;
  int? tllMeeting;
  int? isRoundTableEngagement;
  // List<Null>? multipleContent;
  int? hideFoodAndBeverageCloseout;
  int? cancelledButtonEnabled;
  List<ApprovalDocumentDetails>? approvalDocumentDetails;
  bool? isCrcDocumentUpdate;
  List<TypeQuesDetailsToday>? typeQuesDetails;
  String? displayStatus;
  PayeeInfo? payeeInfo;
  W9FormInfo? w9FormInfo;
  String? signInQrUrl;

  ResultTodayEngagement(
      {this.meetingVenues,
        // this.details,
        // this.av,
        // this.caterer,
        // this.collaborateDetails,
        this.acceptedParticipantDetails,
        this.user,
        this.spkUser,
        this.typeOfMeeting,
        // this.primaryMeetingId,
        this.brand,
        this.product,
        this.location,
        this.dmApprovalBy,
        this.meetingStartUser,
        this.division,
        this.team,
        this.region,
        this.district,
        this.territory,
        this.userType,
        this.meetingId,
        this.startTime,
        this.endTime,
        this.status,
        this.sessionId,
        this.token,
        this.statusForRepHcl,
        this.statusForKol,
        this.meetingPaused,
        this.canceledBy,
        this.canceledByType,
        this.avcomments,
        this.meetingAdminStatus,
        this.insufficientFund,
        this.engagementAmount,
        this.avStatus,
        this.closeOutStatus,
        this.flag,
        this.foodAndBeverage,
        this.dmApproval,
        this.dmInStatus,
        this.approvedTime,
        this.dmDeclineComment,
        this.venueStatus,
        this.isVenue,
        this.isSpk,
        this.isStart,
        this.speakerHour,
        this.jobCodeName,
        this.mealType,
        this.isSpeakerSkipped,
        this.marketingDivision,
        this.eoEndMeeting,
        this.timeZone,
        this.engagementTimeZone,
        this.colConfirmEmail,
        this.isMultiLocation,
        this.cancelId,
        this.isRemote,
        this.cancelReason,
        this.sessionVideoTool,
        this.cancelledAt,
        this.shadowEoInStatus,
        this.vivaId,
        this.contentViewId,
        this.engagementLeadTime,
        this.pollQrCode,
        this.docEvalCertify,
        this.corporateId,
        this.hcpMaxReachFlag,
        this.isClosedRegistration,
        this.meetingRoomCapacityStatus,
        this.id,
        this.createdAt,
        this.updatedAt,
        this.isFranchiseAvailable,
        this.catererTitle,
        this.avTitle,
        this.attendeeTitle,
        // this.multipleLocation,
        this.engagementRegUrlLink,
        this.engagementRegQRCode,
        this.modelCount,
        this.hcpLink,
        this.isSkipStartEngagemet,
        this.otherAttendeeTotal,
        this.duration,
        this.coHostUser,
        this.paymentButton,
        this.collaborateInviteCount,
        this.cohostInviteCount,
        this.cohostConfirmCount,
        this.collaboratorConfirmCount,
        this.isSkipStartAndJoin,
        this.kickOutStatus,
        this.isSpeakerFromVirtual,
        this.myAttendeeTotal,
        this.myConfirmedInvite,
        this.myEmployeeCount,
        this.myConfirmedEmployeeCount,
        this.myAttendeePrescriberTotal,
        this.myAttendeeNonPrescriberTotal,
        this.attendeesInviteCount,
        this.attendeesConfirmCount,
        this.attendeesPrescriberConfirmCount,
        this.attendeesNonPrescriberConfirmCount,
        this.collaboratorsEmployeeCount,
        this.collaboratorAttendeesCount,
        this.isMeal,
        this.showFoodAndBeverage,
        this.eoJoinLocationId,
        this.isAddCollaboratorEnable,
        this.hcpAwaitAcceptCount,
        // this.speaker,
        // this.confirmSpkData,
        this.hcp,
        // this.employee,
        this.isHcpFoodEligibilityMsg,
        this.tllMeeting,
        this.isRoundTableEngagement,
        // this.multipleContent,
        this.hideFoodAndBeverageCloseout,
        this.cancelledButtonEnabled,
        this.approvalDocumentDetails,
        this.isCrcDocumentUpdate,
        this.typeQuesDetails,
        this.displayStatus,
        this.payeeInfo,
        this.w9FormInfo,
        this.signInQrUrl});

  ResultTodayEngagement.fromJson(Map<String, dynamic> json) {
    if (json['meetingVenues'] != null) {
      meetingVenues = <MeetingVenues>[];
      json['meetingVenues'].forEach((v) {
        meetingVenues!.add(MeetingVenues.fromJson(v));
      });
    }
    // if (json['details'] != null) {
    //   details = <Null>[];
    //   json['details'].forEach((v) {
    //     details!.add(Null.fromJson(v));
    //   });
    // }
    // if (json['av'] != null) {
    //   av = <Null>[];
    //   json['av'].forEach((v) {
    //     av!.add(Null.fromJson(v));
    //   });
    // }
    // if (json['caterer'] != null) {
    //   caterer = <Null>[];
    //   json['caterer'].forEach((v) {
    //     caterer!.add(Null.fromJson(v));
    //   });
    // }
    // if (json['collaborateDetails'] != null) {
    //   collaborateDetails = <Null>[];
    //   json['collaborateDetails'].forEach((v) {
    //     collaborateDetails!.add(Null.fromJson(v));
    //   });
    // }
    if (json['acceptedParticipantDetails'] != null) {
      acceptedParticipantDetails = <AcceptedParticipantDetails>[];
      json['acceptedParticipantDetails'].forEach((v) {
        acceptedParticipantDetails!
            .add(AcceptedParticipantDetails.fromJson(v));
      });
    }
    user = json['user'] != null ? User.fromJson(json['user']) : null;
    spkUser = json['spkUser'];
    typeOfMeeting = json['typeOfMeeting'] != null
        ? TypeOfMeeting.fromJson(json['typeOfMeeting'])
        : null;
    // if (json['primary_meeting_id'] != null) {
    //   primaryMeetingId = <Null>[];
    //   json['primary_meeting_id'].forEach((v) {
    //     primaryMeetingId!.add(Null.fromJson(v));
    //   });
    // }
    brand = json['brand'] != null ? Brand.fromJson(json['brand']) : null;
    product =
    json['product'] != null ? Product.fromJson(json['product']) : null;
    location = json['location'] != null
        ? Location.fromJson(json['location'])
        : null;
    dmApprovalBy = json['dmApprovalBy'] != null
        ? DmApprovalBy.fromJson(json['dmApprovalBy'])
        : null;
    meetingStartUser = json['meeting_start_user'];
    division = json['division'];
    team = json['team'];
    region = json['region'];
    district = json['district'];
    territory = json['territory'];
    userType = json['userType'];
    meetingId = json['meeting_id'];
    startTime = json['start_time'];
    endTime = json['end_time'];
    status = json['status'];
    sessionId = json['sessionId'];
    token = json['token'];
    statusForRepHcl = json['statusForRepHcl'];
    statusForKol = json['statusForKol'];
    meetingPaused = json['meeting_paused'];
    canceledBy = json['canceledBy'];
    canceledByType = json['canceledByType'];
    avcomments = json['avcomments'];
    meetingAdminStatus = json['meeting_admin_status'];
    insufficientFund = json['insufficient_fund'];
    engagementAmount = json['engagement_amount'];
    avStatus = json['av_status'];
    closeOutStatus = json['closeOutStatus'];
    flag = json['flag'];
    foodAndBeverage = json['foodAndBeverage'];
    dmApproval = json['dmApproval'];
    dmInStatus = json['dm_in_status'];
    approvedTime = json['approvedTime'];
    dmDeclineComment = json['dmDeclineComment'];
    venueStatus = json['venue_status'];
    isVenue = json['is_venue'];
    isSpk = json['is_spk'];
    isStart = json['is_start'];
    speakerHour = json['speaker_hour'];
    jobCodeName = json['jobCodeName'];
    mealType = json['meal_type'];
    isSpeakerSkipped = json['is_speaker_skipped'];
    marketingDivision = json['marketing_division'];
    eoEndMeeting = json['eo_end_meeting'];
    timeZone = json['timeZone'];
    engagementTimeZone = json['engagement_time_zone'];
    colConfirmEmail = json['colConfirmEmail'];
    isMultiLocation = json['is_multi_location'];
    cancelId = json['cancel_id'];
    isRemote = json['is_remote'];
    cancelReason = json['cancel_reason'];
    sessionVideoTool = json['session_video_tool'];
    cancelledAt = json['cancelledAt'];
    shadowEoInStatus = json['shadowEoInStatus'];
    vivaId = json['vivaId'];
    contentViewId = json['content_view_id'];
    engagementLeadTime = json['engagement_lead_time'];
    pollQrCode = json['poll_qr_code'];
    docEvalCertify = json['doc_eval_certify'];
    corporateId = json['corporate_id'];
    hcpMaxReachFlag = json['hcp_max_reach_flag'];
    isClosedRegistration = json['isClosedRegistration'];
    meetingRoomCapacityStatus = json['meeting_room_capacity_status'];
    id = json['id'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    isFranchiseAvailable = json['is_franchise_available'];
    catererTitle = json['caterer_title'];
    avTitle = json['av_title'];
    attendeeTitle = json['attendee_title'];
    // if (json['multipleLocation'] != null) {
    //   multipleLocation = <Null>[];
    //   json['multipleLocation'].forEach((v) {
    //     multipleLocation!.add(Null.fromJson(v));
    //   });
    // }
    engagementRegUrlLink = json['engagement_reg_url_link'];
    engagementRegQRCode = json['engagement_reg_QR_code'];
    modelCount = json['model_count'];
    hcpLink = json['hcp_link'];
    isSkipStartEngagemet = json['isSkipStartEngagemet'];
    otherAttendeeTotal = json['other_attendee_total'];
    duration = json['duration'];
    coHostUser = json['coHostUser'];
    paymentButton = json['payment_button'];
    collaborateInviteCount = json['collaborate_invite_count'];
    cohostInviteCount = json['cohost_invite_count'];
    cohostConfirmCount = json['cohost_confirm_count'];
    collaboratorConfirmCount = json['collaborator_confirm_count'];
    isSkipStartAndJoin = json['isSkipStartAndJoin'];
    kickOutStatus = json['kickOutStatus'];
    isSpeakerFromVirtual = json['isSpeakerFromVirtual'];
    myAttendeeTotal = json['my_attendee_total'];
    myConfirmedInvite = json['my_confirmed_invite'];
    myEmployeeCount = json['my_employee_count'];
    myConfirmedEmployeeCount = json['my_confirmed_employee_count'];
    myAttendeePrescriberTotal = json['my_attendee_prescriber_total'];
    myAttendeeNonPrescriberTotal = json['my_attendee_non_prescriber_total'];
    attendeesInviteCount = json['attendees_invite_count'];
    attendeesConfirmCount = json['attendees_confirm_count'];
    attendeesPrescriberConfirmCount =
    json['attendees_prescriber_confirm_count'];
    attendeesNonPrescriberConfirmCount =
    json['attendees_non_prescriber_confirm_count'];
    collaboratorsEmployeeCount = json['collaborators_employee_count'];
    collaboratorAttendeesCount = json['collaborator_attendees_count'];
    isMeal = json['is_meal'];
    showFoodAndBeverage = json['showFoodAndBeverage'];
    eoJoinLocationId = json['eo_join_location_id'];
    isAddCollaboratorEnable = json['is_add_collaborator_enable'];
    hcpAwaitAcceptCount = json['hcp_await_accept_count'];
    // if (json['speaker'] != null) {
    //   speaker = <Null>[];
    //   json['speaker'].forEach((v) {
    //     speaker!.add(Null.fromJson(v));
    //   });
    // }
    // if (json['confirm_spk_data'] != null) {
    //   confirmSpkData = <Null>[];
    //   json['confirm_spk_data'].forEach((v) {
    //     confirmSpkData!.add(Null.fromJson(v));
    //   });
    // }
    // if (json['hcp'] != null) {
    //   hcp = <Null>[];
    //   json['hcp'].forEach((v) {
    //     hcp!.add(Null.fromJson(v));
    //   });
    // }
    // if (json['employee'] != null) {
    //   employee = <Null>[];
    //   json['employee'].forEach((v) {
    //     employee!.add(Null.fromJson(v));
    //   });
    // }
    isHcpFoodEligibilityMsg = json['is_hcp_food_eligibility_msg'];
    tllMeeting = json['tll_meeting'];
    isRoundTableEngagement = json['is_round_table_engagement'];
    // if (json['multiple_content'] != null) {
    //   multipleContent = <Null>[];
    //   json['multiple_content'].forEach((v) {
    //     multipleContent!.add(Null.fromJson(v));
    //   });
    // }
    hideFoodAndBeverageCloseout = json['hide_food_and_beverage_closeout'];
    cancelledButtonEnabled = json['cancelled_button_enabled'];
    if (json['approvalDocumentDetails'] != null) {
      approvalDocumentDetails = <ApprovalDocumentDetails>[];
      json['approvalDocumentDetails'].forEach((v) {
        approvalDocumentDetails!.add(ApprovalDocumentDetails.fromJson(v));
      });
    }
    isCrcDocumentUpdate = json['is_Crc_Document_update'];
    if (json['typeQuesDetails'] != null) {
      typeQuesDetails = <TypeQuesDetailsToday>[];
      json['typeQuesDetails'].forEach((v) {
        typeQuesDetails!.add(TypeQuesDetailsToday.fromJson(v));
      });
    }
    displayStatus = json['displayStatus'];
    payeeInfo = json['payeeInfo'] != null
        ? PayeeInfo.fromJson(json['payeeInfo'])
        : null;
    w9FormInfo = json['w9FormInfo'] != null
        ? W9FormInfo.fromJson(json['w9FormInfo'])
        : null;
    signInQrUrl = json['sign_in_qr_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (meetingVenues != null) {
      data['meetingVenues'] =
          meetingVenues!.map((v) => v.toJson()).toList();
    }
    // if (details != null) {
    //   data['details'] = details!.map((v) => v.toJson()).toList();
    // }
    // if (av != null) {
    //   data['av'] = av!.map((v) => v.toJson()).toList();
    // }
    // if (caterer != null) {
    //   data['caterer'] = caterer!.map((v) => v.toJson()).toList();
    // }
    // if (collaborateDetails != null) {
    //   data['collaborateDetails'] =
    //       collaborateDetails!.map((v) => v.toJson()).toList();
    // }
    if (acceptedParticipantDetails != null) {
      data['acceptedParticipantDetails'] =
          acceptedParticipantDetails!.map((v) => v.toJson()).toList();
    }
    if (user != null) {
      data['user'] = user!.toJson();
    }
    data['spkUser'] = spkUser;
    if (typeOfMeeting != null) {
      data['typeOfMeeting'] = typeOfMeeting!.toJson();
    }
    // if (primaryMeetingId != null) {
    //   data['primary_meeting_id'] =
    //       primaryMeetingId!.map((v) => v.toJson()).toList();
    // }
    if (brand != null) {
      data['brand'] = brand!.toJson();
    }
    if (product != null) {
      data['product'] = product!.toJson();
    }
    if (location != null) {
      data['location'] = location!.toJson();
    }
    if (dmApprovalBy != null) {
      data['dmApprovalBy'] = dmApprovalBy!.toJson();
    }
    data['meeting_start_user'] = meetingStartUser;
    data['division'] = division;
    data['team'] = team;
    data['region'] = region;
    data['district'] = district;
    data['territory'] = territory;
    data['userType'] = userType;
    data['meeting_id'] = meetingId;
    data['start_time'] = startTime;
    data['end_time'] = endTime;
    data['status'] = status;
    data['sessionId'] = sessionId;
    data['token'] = token;
    data['statusForRepHcl'] = statusForRepHcl;
    data['statusForKol'] = statusForKol;
    data['meeting_paused'] = meetingPaused;
    data['canceledBy'] = canceledBy;
    data['canceledByType'] = canceledByType;
    data['avcomments'] = avcomments;
    data['meeting_admin_status'] = meetingAdminStatus;
    data['insufficient_fund'] = insufficientFund;
    data['engagement_amount'] = engagementAmount;
    data['av_status'] = avStatus;
    data['closeOutStatus'] = closeOutStatus;
    data['flag'] = flag;
    data['foodAndBeverage'] = foodAndBeverage;
    data['dmApproval'] = dmApproval;
    data['dm_in_status'] = dmInStatus;
    data['approvedTime'] = approvedTime;
    data['dmDeclineComment'] = dmDeclineComment;
    data['venue_status'] = venueStatus;
    data['is_venue'] = isVenue;
    data['is_spk'] = isSpk;
    data['is_start'] = isStart;
    data['speaker_hour'] = speakerHour;
    data['jobCodeName'] = jobCodeName;
    data['meal_type'] = mealType;
    data['is_speaker_skipped'] = isSpeakerSkipped;
    data['marketing_division'] = marketingDivision;
    data['eo_end_meeting'] = eoEndMeeting;
    data['timeZone'] = timeZone;
    data['engagement_time_zone'] = engagementTimeZone;
    data['colConfirmEmail'] = colConfirmEmail;
    data['is_multi_location'] = isMultiLocation;
    data['cancel_id'] = cancelId;
    data['is_remote'] = isRemote;
    data['cancel_reason'] = cancelReason;
    data['session_video_tool'] = sessionVideoTool;
    data['cancelledAt'] = cancelledAt;
    data['shadowEoInStatus'] = shadowEoInStatus;
    data['vivaId'] = vivaId;
    data['content_view_id'] = contentViewId;
    data['engagement_lead_time'] = engagementLeadTime;
    data['poll_qr_code'] = pollQrCode;
    data['doc_eval_certify'] = docEvalCertify;
    data['corporate_id'] = corporateId;
    data['hcp_max_reach_flag'] = hcpMaxReachFlag;
    data['isClosedRegistration'] = isClosedRegistration;
    data['meeting_room_capacity_status'] = meetingRoomCapacityStatus;
    data['id'] = id;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    data['is_franchise_available'] = isFranchiseAvailable;
    data['caterer_title'] = catererTitle;
    data['av_title'] = avTitle;
    data['attendee_title'] = attendeeTitle;
    // if (multipleLocation != null) {
    //   data['multipleLocation'] =
    //       multipleLocation!.map((v) => v.toJson()).toList();
    // }
    data['engagement_reg_url_link'] = engagementRegUrlLink;
    data['engagement_reg_QR_code'] = engagementRegQRCode;
    data['model_count'] = modelCount;
    data['hcp_link'] = hcpLink;
    data['isSkipStartEngagemet'] = isSkipStartEngagemet;
    data['other_attendee_total'] = otherAttendeeTotal;
    data['duration'] = duration;
    data['coHostUser'] = coHostUser;
    data['payment_button'] = paymentButton;
    data['collaborate_invite_count'] = collaborateInviteCount;
    data['cohost_invite_count'] = cohostInviteCount;
    data['cohost_confirm_count'] = cohostConfirmCount;
    data['collaborator_confirm_count'] = collaboratorConfirmCount;
    data['isSkipStartAndJoin'] = isSkipStartAndJoin;
    data['kickOutStatus'] = kickOutStatus;
    data['isSpeakerFromVirtual'] = isSpeakerFromVirtual;
    data['my_attendee_total'] = myAttendeeTotal;
    data['my_confirmed_invite'] = myConfirmedInvite;
    data['my_employee_count'] = myEmployeeCount;
    data['my_confirmed_employee_count'] = myConfirmedEmployeeCount;
    data['my_attendee_prescriber_total'] = myAttendeePrescriberTotal;
    data['my_attendee_non_prescriber_total'] =
        myAttendeeNonPrescriberTotal;
    data['attendees_invite_count'] = attendeesInviteCount;
    data['attendees_confirm_count'] = attendeesConfirmCount;
    data['attendees_prescriber_confirm_count'] =
        attendeesPrescriberConfirmCount;
    data['attendees_non_prescriber_confirm_count'] =
        attendeesNonPrescriberConfirmCount;
    data['collaborators_employee_count'] = collaboratorsEmployeeCount;
    data['collaborator_attendees_count'] = collaboratorAttendeesCount;
    data['is_meal'] = isMeal;
    data['showFoodAndBeverage'] = showFoodAndBeverage;
    data['eo_join_location_id'] = eoJoinLocationId;
    data['is_add_collaborator_enable'] = isAddCollaboratorEnable;
    data['hcp_await_accept_count'] = hcpAwaitAcceptCount;
    // if (speaker != null) {
    //   data['speaker'] = speaker!.map((v) => v.toJson()).toList();
    // }
    // if (confirmSpkData != null) {
    //   data['confirm_spk_data'] =
    //       confirmSpkData!.map((v) => v.toJson()).toList();
    // }
    // if (hcp != null) {
    //   data['hcp'] = hcp!.map((v) => v.toJson()).toList();
    // }
    // if (employee != null) {
    //   data['employee'] = employee!.map((v) => v.toJson()).toList();
    // }
    data['is_hcp_food_eligibility_msg'] = isHcpFoodEligibilityMsg;
    data['tll_meeting'] = tllMeeting;
    data['is_round_table_engagement'] = isRoundTableEngagement;
    // if (multipleContent != null) {
    //   data['multiple_content'] =
    //       multipleContent!.map((v) => v.toJson()).toList();
    // }
    data['hide_food_and_beverage_closeout'] = hideFoodAndBeverageCloseout;
    data['cancelled_button_enabled'] = cancelledButtonEnabled;
    if (approvalDocumentDetails != null) {
      data['approvalDocumentDetails'] =
          approvalDocumentDetails!.map((v) => v.toJson()).toList();
    }
    data['is_Crc_Document_update'] = isCrcDocumentUpdate;
    if (typeQuesDetails != null) {
      data['typeQuesDetails'] =
          typeQuesDetails!.map((v) => v.toJson()).toList();
    }
    data['displayStatus'] = displayStatus;
    if (payeeInfo != null) {
      data['payeeInfo'] = payeeInfo!.toJson();
    }
    if (w9FormInfo != null) {
      data['w9FormInfo'] = w9FormInfo!.toJson();
    }
    data['sign_in_qr_url'] = signInQrUrl;
    return data;
  }
}

class MeetingVenues {
  int? id;
  Location? location;
  int? status;
  String? comment;
  int? meeting;
  String? officeManagerName;
  String? officeEmail;
  String? officePhone;
  String? eoJoinOnStatus;
  String? updatedAt;
  String? createdAt;
  VenuestatusLive? venuestatusLive;
  int? eoFoodStatus;
  int? isPrimaryVenue;
  int? orderNo;

  MeetingVenues(
      {this.id,
        this.location,
        this.status,
        this.comment,
        this.meeting,
        this.officeManagerName,
        this.officeEmail,
        this.officePhone,
        this.eoJoinOnStatus,
        this.updatedAt,
        this.createdAt,
        this.venuestatusLive,
        this.eoFoodStatus,
        this.isPrimaryVenue,
        this.orderNo});

  MeetingVenues.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    location = json['location'] != null
        ? Location.fromJson(json['location'])
        : null;
    status = json['status'];
    comment = json['comment'];
    meeting = json['meeting'];
    officeManagerName = json['office_manager_name'];
    officeEmail = json['office_email'];
    officePhone = json['office_phone'];
    eoJoinOnStatus = json['eo_join_on_status'];
    updatedAt = json['updatedAt'];
    createdAt = json['createdAt'];
    venuestatusLive = json['venuestatus_live'] != null
        ? VenuestatusLive.fromJson(json['venuestatus_live'])
        : null;
    eoFoodStatus = json['eo_food_status'];
    isPrimaryVenue = json['is_primary_venue'];
    orderNo = json['order_no'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    if (location != null) {
      data['location'] = location!.toJson();
    }
    data['status'] = status;
    data['comment'] = comment;
    data['meeting'] = meeting;
    data['office_manager_name'] = officeManagerName;
    data['office_email'] = officeEmail;
    data['office_phone'] = officePhone;
    data['eo_join_on_status'] = eoJoinOnStatus;
    data['updatedAt'] = updatedAt;
    data['createdAt'] = createdAt;
    if (venuestatusLive != null) {
      data['venuestatus_live'] = venuestatusLive!.toJson();
    }
    data['eo_food_status'] = eoFoodStatus;
    data['is_primary_venue'] = isPrimaryVenue;
    data['order_no'] = orderNo;
    return data;
  }
}

class Location {
  String? locationName;
  String? locationAddress;
  String? locationCity;
  String? locationState;
  String? locationZip;
  String? locationPhone;
  int? locationAmount;
  String? officeManagerName;
  String? officeEmail;
  String? officePhone;
  Null? contactName;
  int? addressType;
  int? isCustomerMaster;
  String? veevaId;
  int? deleteStatus;
  String? timeZone;
  String? timeZoneAbbreviation;
  String? locationLat;
  String? locationLon;
  String? hcoTypeCode;
  int? hcoId;
  int? isTarget;
  int? id;
  String? createdAt;
  String? updatedAt;
  int? engagementType;

  Location(
      {this.locationName,
        this.locationAddress,
        this.locationCity,
        this.locationState,
        this.locationZip,
        this.locationPhone,
        this.locationAmount,
        this.officeManagerName,
        this.officeEmail,
        this.officePhone,
        this.contactName,
        this.addressType,
        this.isCustomerMaster,
        this.veevaId,
        this.deleteStatus,
        this.timeZone,
        this.timeZoneAbbreviation,
        this.locationLat,
        this.locationLon,
        this.hcoTypeCode,
        this.hcoId,
        this.isTarget,
        this.id,
        this.createdAt,
        this.updatedAt,
        this.engagementType});

  Location.fromJson(Map<String, dynamic> json) {
    locationName = json['location_name'];
    locationAddress = json['location_address'];
    locationCity = json['location_city'];
    locationState = json['location_state'];
    locationZip = json['location_zip'];
    locationPhone = json['location_phone'];
    locationAmount = json['location_amount'];
    officeManagerName = json['office_manager_name'];
    officeEmail = json['office_email'];
    officePhone = json['office_phone'];
    contactName = json['contact_name'];
    addressType = json['address_type'];
    isCustomerMaster = json['is_customer_master'];
    veevaId = json['veeva_id'];
    deleteStatus = json['delete_status'];
    timeZone = json['timeZone'];
    timeZoneAbbreviation = json['time_zone_abbreviation'];
    locationLat = json['location_lat'];
    locationLon = json['location_lon'];
    hcoTypeCode = json['hco_type_code'];
    hcoId = json['hco_id'];
    isTarget = json['is_target'];
    id = json['id'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    engagementType = json['engagementType'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['location_name'] = locationName;
    data['location_address'] = locationAddress;
    data['location_city'] = locationCity;
    data['location_state'] = locationState;
    data['location_zip'] = locationZip;
    data['location_phone'] = locationPhone;
    data['location_amount'] = locationAmount;
    data['office_manager_name'] = officeManagerName;
    data['office_email'] = officeEmail;
    data['office_phone'] = officePhone;
    data['contact_name'] = contactName;
    data['address_type'] = addressType;
    data['is_customer_master'] = isCustomerMaster;
    data['veeva_id'] = veevaId;
    data['delete_status'] = deleteStatus;
    data['timeZone'] = timeZone;
    data['time_zone_abbreviation'] = timeZoneAbbreviation;
    data['location_lat'] = locationLat;
    data['location_lon'] = locationLon;
    data['hco_type_code'] = hcoTypeCode;
    data['hco_id'] = hcoId;
    data['is_target'] = isTarget;
    data['id'] = id;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    data['engagementType'] = engagementType;
    return data;
  }
}

class VenuestatusLive {
  String? status;
  String? colorCode;
  int? lockStatus;
  int? deleteStatus;
  int? unavaStatus;
  int? id;
  String? createdAt;
  String? updatedAt;

  VenuestatusLive(
      {this.status,
        this.colorCode,
        this.lockStatus,
        this.deleteStatus,
        this.unavaStatus,
        this.id,
        this.createdAt,
        this.updatedAt});

  VenuestatusLive.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    colorCode = json['color_code'];
    lockStatus = json['lock_status'];
    deleteStatus = json['delete_status'];
    unavaStatus = json['unava_status'];
    id = json['id'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['color_code'] = colorCode;
    data['lock_status'] = lockStatus;
    data['delete_status'] = deleteStatus;
    data['unava_status'] = unavaStatus;
    data['id'] = id;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    return data;
  }
}

class AcceptedParticipantDetails {
  int? participant;
  int? userType;
  int? status;
  int? meeting;
  int? waitingStatus;
  int? pauseStatus;
  int? leaveStatus;
  int? sessionStatus;
  int? prescriber;
  int? location;
  Null? sessionId;
  Null? token;
  Null? closeOutBy;
  int? attendeesCloseOutMethod;
  int? signInStatus;
  Null? noShowComments;
  Null? signInImage;
  Null? signInImagePath;
  int? signOnSheet;
  int? optOutMeal;
  Null? optLicState;
  int? ffs;
  String? sessionMins;
  int? id;
  String? createdAt;
  String? updatedAt;
  int? statusType;
  int? muteStatus;
  int? kickOutStatus;
  int? muteStatusForDial;
  int? kickOutStatusForDial;
  int? reconciled;
  int? isFoodEligibilty;
  int? isNoFood;
  int? isExclusionUser;
  int? isStealthMode;
  int? autospkOpt;
  int? fbNotEligiblity;
  Null? confirmedDate;
  int? userMetMaxAttendance;
  Null? rdmsUserSignedIn;
  Null? approvalComment;

  AcceptedParticipantDetails(
      {this.participant,
        this.userType,
        this.status,
        this.meeting,
        this.waitingStatus,
        this.pauseStatus,
        this.leaveStatus,
        this.sessionStatus,
        this.prescriber,
        this.location,
        this.sessionId,
        this.token,
        this.closeOutBy,
        this.attendeesCloseOutMethod,
        this.signInStatus,
        this.noShowComments,
        this.signInImage,
        this.signInImagePath,
        this.signOnSheet,
        this.optOutMeal,
        this.optLicState,
        this.ffs,
        this.sessionMins,
        this.id,
        this.createdAt,
        this.updatedAt,
        this.statusType,
        this.muteStatus,
        this.kickOutStatus,
        this.muteStatusForDial,
        this.kickOutStatusForDial,
        this.reconciled,
        this.isFoodEligibilty,
        this.isNoFood,
        this.isExclusionUser,
        this.isStealthMode,
        this.autospkOpt,
        this.fbNotEligiblity,
        this.confirmedDate,
        this.userMetMaxAttendance,
        this.rdmsUserSignedIn,
        this.approvalComment});

  AcceptedParticipantDetails.fromJson(Map<String, dynamic> json) {
    participant = json['participant'];
    userType = json['userType'];
    status = json['status'];
    meeting = json['meeting'];
    waitingStatus = json['waiting_status'];
    pauseStatus = json['pause_status'];
    leaveStatus = json['leave_status'];
    sessionStatus = json['session_status'];
    prescriber = json['prescriber'];
    location = json['location'];
    sessionId = json['sessionId'];
    token = json['token'];
    closeOutBy = json['closeOutBy'];
    attendeesCloseOutMethod = json['attendees_close_out_method'];
    signInStatus = json['sign_in_status'];
    noShowComments = json['no_show_comments'];
    signInImage = json['sign_in_image'];
    signInImagePath = json['sign_in_image_path'];
    signOnSheet = json['sign_on_sheet'];
    optOutMeal = json['opt_out_meal'];
    optLicState = json['opt_lic_state'];
    ffs = json['ffs'];
    sessionMins = json['session_mins'];
    id = json['id'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    statusType = json['status_type'];
    muteStatus = json['muteStatus'];
    kickOutStatus = json['kickOutStatus'];
    muteStatusForDial = json['muteStatus_for_dial'];
    kickOutStatusForDial = json['kickOutStatus_for_dial'];
    reconciled = json['reconciled'];
    isFoodEligibilty = json['is_food_eligibilty'];
    isNoFood = json['is_no_food'];
    isExclusionUser = json['is_exclusion_user'];
    isStealthMode = json['isStealthMode'];
    autospkOpt = json['autospk_opt'];
    fbNotEligiblity = json['fb_not_eligiblity'];
    confirmedDate = json['confirmed_date'];
    userMetMaxAttendance = json['user_met_max_attendance'];
    rdmsUserSignedIn = json['rdms_user_signed_in'];
    approvalComment = json['approval_comment'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['participant'] = participant;
    data['userType'] = userType;
    data['status'] = status;
    data['meeting'] = meeting;
    data['waiting_status'] = waitingStatus;
    data['pause_status'] = pauseStatus;
    data['leave_status'] = leaveStatus;
    data['session_status'] = sessionStatus;
    data['prescriber'] = prescriber;
    data['location'] = location;
    data['sessionId'] = sessionId;
    data['token'] = token;
    data['closeOutBy'] = closeOutBy;
    data['attendees_close_out_method'] = attendeesCloseOutMethod;
    data['sign_in_status'] = signInStatus;
    data['no_show_comments'] = noShowComments;
    data['sign_in_image'] = signInImage;
    data['sign_in_image_path'] = signInImagePath;
    data['sign_on_sheet'] = signOnSheet;
    data['opt_out_meal'] = optOutMeal;
    data['opt_lic_state'] = optLicState;
    data['ffs'] = ffs;
    data['session_mins'] = sessionMins;
    data['id'] = id;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    data['status_type'] = statusType;
    data['muteStatus'] = muteStatus;
    data['kickOutStatus'] = kickOutStatus;
    data['muteStatus_for_dial'] = muteStatusForDial;
    data['kickOutStatus_for_dial'] = kickOutStatusForDial;
    data['reconciled'] = reconciled;
    data['is_food_eligibilty'] = isFoodEligibilty;
    data['is_no_food'] = isNoFood;
    data['is_exclusion_user'] = isExclusionUser;
    data['isStealthMode'] = isStealthMode;
    data['autospk_opt'] = autospkOpt;
    data['fb_not_eligiblity'] = fbNotEligiblity;
    data['confirmed_date'] = confirmedDate;
    data['user_met_max_attendance'] = userMetMaxAttendance;
    data['rdms_user_signed_in'] = rdmsUserSignedIn;
    data['approval_comment'] = approvalComment;
    return data;
  }
}

class User {
  String? firstName;
  String? lastName;
  String? midName;
  Null? address2;
  Null? affiliation;
  Null? govtEmployee;
  String? fullName;
  Null? preferredName;
  String? email;
  String? homeNumber;
  String? telephone;
  Null? degree;
  Null? speciality;
  Null? institution;
  String? address;
  String? city;
  String? state;
  String? zip;
  int? prescriber;
  Null? biography;
  Null? biographyPath;
  Null? cv;
  Null? cvPath;
  String? photo;
  Null? photoPath;
  Null? primaryEmail;
  Null? npi;
  String? userType;
  int? attendeeType;
  int? capAmount;
  int? capMaxLimit;
  int? capMaxEngagement;
  int? activeStatus;
  int? deleteStatus;
  int? termsCondition;
  int? resetPasswordFlag;
  int? subscribeToNewsletter;
  int? introVideo;
  int? tier;
  int? vaFlag;
  String? title;
  int? isCloned;
  int? foodAndBeverageEligiblity;
  int? nationalSpeaker;
  int? reconciled;
  int? inExternalStatus;
  int? id;
  String? createdAt;
  String? updatedAt;
  int? rep;
  int? dm;
  int? role;
  int? addedBy;

  User(
      {this.firstName,
        this.lastName,
        this.midName,
        this.address2,
        this.affiliation,
        this.govtEmployee,
        this.fullName,
        this.preferredName,
        this.email,
        this.homeNumber,
        this.telephone,
        this.degree,
        this.speciality,
        this.institution,
        this.address,
        this.city,
        this.state,
        this.zip,
        this.prescriber,
        this.biography,
        this.biographyPath,
        this.cv,
        this.cvPath,
        this.photo,
        this.photoPath,
        this.primaryEmail,
        this.npi,
        this.userType,
        this.attendeeType,
        this.capAmount,
        this.capMaxLimit,
        this.capMaxEngagement,
        this.activeStatus,
        this.deleteStatus,
        this.termsCondition,
        this.resetPasswordFlag,
        this.subscribeToNewsletter,
        this.introVideo,
        this.tier,
        this.vaFlag,
        this.title,
        this.isCloned,
        this.foodAndBeverageEligiblity,
        this.nationalSpeaker,
        this.reconciled,
        this.inExternalStatus,
        this.id,
        this.createdAt,
        this.updatedAt,
        this.rep,
        this.dm,
        this.role,
        this.addedBy});

  User.fromJson(Map<String, dynamic> json) {
    firstName = json['firstName'];
    lastName = json['lastName'];
    midName = json['midName'];
    address2 = json['address2'];
    affiliation = json['affiliation'];
    govtEmployee = json['govt_employee'];
    fullName = json['fullName'];
    preferredName = json['preferred_name'];
    email = json['email'];
    homeNumber = json['home_number'];
    telephone = json['telephone'];
    degree = json['degree'];
    speciality = json['speciality'];
    institution = json['institution'];
    address = json['address'];
    city = json['city'];
    state = json['state'];
    zip = json['zip'];
    prescriber = json['prescriber'];
    biography = json['biography'];
    biographyPath = json['biography_path'];
    cv = json['cv'];
    cvPath = json['cv_path'];
    photo = json['photo'];
    photoPath = json['photo_path'];
    primaryEmail = json['primary_email'];
    npi = json['npi'];
    userType = json['userType'];
    attendeeType = json['attendeeType'];
    capAmount = json['cap_amount'];
    capMaxLimit = json['cap_max_limit'];
    capMaxEngagement = json['cap_max_engagement'];
    activeStatus = json['active_status'];
    deleteStatus = json['delete_status'];
    termsCondition = json['terms_condition'];
    resetPasswordFlag = json['reset_password_flag'];
    subscribeToNewsletter = json['subscribe_to_newsletter'];
    introVideo = json['intro_video'];
    tier = json['tier'];
    vaFlag = json['va_flag'];
    title = json['title'];
    isCloned = json['isCloned'];
    foodAndBeverageEligiblity = json['foodAndBeverageEligiblity'];
    nationalSpeaker = json['nationalSpeaker'];
    reconciled = json['reconciled'];
    inExternalStatus = json['in_external_status'];
    id = json['id'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    rep = json['rep'];
    dm = json['dm'];
    role = json['role'];
    addedBy = json['addedBy'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['firstName'] = firstName;
    data['lastName'] = lastName;
    data['midName'] = midName;
    data['address2'] = address2;
    data['affiliation'] = affiliation;
    data['govt_employee'] = govtEmployee;
    data['fullName'] = fullName;
    data['preferred_name'] = preferredName;
    data['email'] = email;
    data['home_number'] = homeNumber;
    data['telephone'] = telephone;
    data['degree'] = degree;
    data['speciality'] = speciality;
    data['institution'] = institution;
    data['address'] = address;
    data['city'] = city;
    data['state'] = state;
    data['zip'] = zip;
    data['prescriber'] = prescriber;
    data['biography'] = biography;
    data['biography_path'] = biographyPath;
    data['cv'] = cv;
    data['cv_path'] = cvPath;
    data['photo'] = photo;
    data['photo_path'] = photoPath;
    data['primary_email'] = primaryEmail;
    data['npi'] = npi;
    data['userType'] = userType;
    data['attendeeType'] = attendeeType;
    data['cap_amount'] = capAmount;
    data['cap_max_limit'] = capMaxLimit;
    data['cap_max_engagement'] = capMaxEngagement;
    data['active_status'] = activeStatus;
    data['delete_status'] = deleteStatus;
    data['terms_condition'] = termsCondition;
    data['reset_password_flag'] = resetPasswordFlag;
    data['subscribe_to_newsletter'] = subscribeToNewsletter;
    data['intro_video'] = introVideo;
    data['tier'] = tier;
    data['va_flag'] = vaFlag;
    data['title'] = title;
    data['isCloned'] = isCloned;
    data['foodAndBeverageEligiblity'] = foodAndBeverageEligiblity;
    data['nationalSpeaker'] = nationalSpeaker;
    data['reconciled'] = reconciled;
    data['in_external_status'] = inExternalStatus;
    data['id'] = id;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    data['rep'] = rep;
    data['dm'] = dm;
    data['role'] = role;
    data['addedBy'] = addedBy;
    return data;
  }
}

class TypeOfMeeting {
  String? maxNumberSpk;
  String? isUploadDocument;
  String? isAddTimezoneAtCreate;
  String? isUploadDocumentEnabled;
  String? isExihibitDetails;
  String? displayAndExhibiWorkflow;
  String? isSurveyMinimumAnswer;
  String? isMinimumOneSurvey;
  String? isEoPaidMealCheck;
  String? type;
  String? description;
  int? orderNo;
  int? isStart;
  int? minimumHcp;
  int? prescriberHcp;
  int? isCollaborator;
  int? isSkipCollaborator;
  int? isCohost;
  int? isDetail;
  int? isContentNote;
  int? isQuestion;
  int? isRemote;
  int? amount;
  int? hcpAmount;
  String? startDate;
  String? endDate;
  String? defaultStartTime;
  String? defaultEndTime;
  int? activeStatus;
  int? deleteStatus;
  int? isCollType;
  int? isVenueCheck;
  int? isHcpSignInPriorToSession;
  int? isPiLinkEnabled;
  int? isQrcodeEnabled;
  int? isDidNotAttendEnabled;
  int? isEmailFlagEnabled;
  int? isCollaboratorInviteEmail;
  int? isRmlEnabled;
  String? speakerListLabel;
  int? isLocationStatusEnabled;
  String? createPopup;
  int? isGpo;
  int? priorMinutes;
  int? signedOnPaperRestriction;
  int? hideCancelEngagementBtn;
  int? isFoodCheck;
  int? isOnlyRDMS;
  String? selectionType;
  String? hcpEndMeetingPop;
  int? speakerType;
  int? isOptOutCheckboxEnable;
  int? engagementExecutionWithoutSpeaker;
  int? isEmailRequired;
  int? isSpeakerSkipped;
  int? isHcpSkipped;
  int? isTopicDisabled;
  String? createListLable;
  int? isHcpAvailable;
  int? speakerSpecialApproval;
  int? isCloseoutHide;
  int? isCatererHide;
  int? isManagerApprovalSkip;
  int? isSpkHoursEnabled;
  int? showAllDate;
  int? timeDiffDuration;
  int? showEvents;
  int? modestMeal;
  int? spkAutocheck;
  int? isRdmsKol;
  int? id;
  String? createdAt;
  String? updatedAt;
  int? venueType;

  TypeOfMeeting(
      {this.maxNumberSpk,
        this.isUploadDocument,
        this.isAddTimezoneAtCreate,
        this.isUploadDocumentEnabled,
        this.isExihibitDetails,
        this.displayAndExhibiWorkflow,
        this.isSurveyMinimumAnswer,
        this.isMinimumOneSurvey,
        this.isEoPaidMealCheck,
        this.type,
        this.description,
        this.orderNo,
        this.isStart,
        this.minimumHcp,
        this.prescriberHcp,
        this.isCollaborator,
        this.isSkipCollaborator,
        this.isCohost,
        this.isDetail,
        this.isContentNote,
        this.isQuestion,
        this.isRemote,
        this.amount,
        this.hcpAmount,
        this.startDate,
        this.endDate,
        this.defaultStartTime,
        this.defaultEndTime,
        this.activeStatus,
        this.deleteStatus,
        this.isCollType,
        this.isVenueCheck,
        this.isHcpSignInPriorToSession,
        this.isPiLinkEnabled,
        this.isQrcodeEnabled,
        this.isDidNotAttendEnabled,
        this.isEmailFlagEnabled,
        this.isCollaboratorInviteEmail,
        this.isRmlEnabled,
        this.speakerListLabel,
        this.isLocationStatusEnabled,
        this.createPopup,
        this.isGpo,
        this.priorMinutes,
        this.signedOnPaperRestriction,
        this.hideCancelEngagementBtn,
        this.isFoodCheck,
        this.isOnlyRDMS,
        this.selectionType,
        this.hcpEndMeetingPop,
        this.speakerType,
        this.isOptOutCheckboxEnable,
        this.engagementExecutionWithoutSpeaker,
        this.isEmailRequired,
        this.isSpeakerSkipped,
        this.isHcpSkipped,
        this.isTopicDisabled,
        this.createListLable,
        this.isHcpAvailable,
        this.speakerSpecialApproval,
        this.isCloseoutHide,
        this.isCatererHide,
        this.isManagerApprovalSkip,
        this.isSpkHoursEnabled,
        this.showAllDate,
        this.timeDiffDuration,
        this.showEvents,
        this.modestMeal,
        this.spkAutocheck,
        this.isRdmsKol,
        this.id,
        this.createdAt,
        this.updatedAt,
        this.venueType});

  TypeOfMeeting.fromJson(Map<String, dynamic> json) {
    maxNumberSpk = json['max_number_spk'];
    isUploadDocument = json['is_upload_document'];
    isAddTimezoneAtCreate = json['is_add_timezone_at_create'];
    isUploadDocumentEnabled = json['is_upload_document_enabled'];
    isExihibitDetails = json['is_exihibit_details'];
    displayAndExhibiWorkflow = json['display_and_exhibi_workflow'];
    isSurveyMinimumAnswer = json['is_survey_minimum_answer'];
    isMinimumOneSurvey = json['is_minimum_one_survey'];
    isEoPaidMealCheck = json['is_eo_paid_meal_check'];
    type = json['type'];
    description = json['description'];
    orderNo = json['order_no'];
    isStart = json['is_start'];
    minimumHcp = json['minimum_hcp'];
    prescriberHcp = json['prescriber_hcp'];
    isCollaborator = json['is_collaborator'];
    isSkipCollaborator = json['is_skip_collaborator'];
    isCohost = json['is_cohost'];
    isDetail = json['is_detail'];
    isContentNote = json['is_content_note'];
    isQuestion = json['is_question'];
    isRemote = json['is_remote'];
    amount = json['amount'];
    hcpAmount = json['hcp_amount'];
    startDate = json['start_date'];
    endDate = json['end_date'];
    defaultStartTime = json['default_start_time'];
    defaultEndTime = json['default_end_time'];
    activeStatus = json['active_status'];
    deleteStatus = json['delete_status'];
    isCollType = json['is_coll_type'];
    isVenueCheck = json['is_venue_check'];
    isHcpSignInPriorToSession = json['isHcpSignInPriorToSession'];
    isPiLinkEnabled = json['is_pi_link_enabled'];
    isQrcodeEnabled = json['is_qrcode_enabled'];
    isDidNotAttendEnabled = json['is_did_not_attend_enabled'];
    isEmailFlagEnabled = json['is_email_flag_enabled'];
    isCollaboratorInviteEmail = json['is_collaborator_invite_email'];
    isRmlEnabled = json['is_rml_enabled'];
    speakerListLabel = json['speaker_list_label'];
    isLocationStatusEnabled = json['is_location_status_enabled'];
    createPopup = json['create_popup'];
    isGpo = json['is_gpo'];
    priorMinutes = json['priorMinutes'];
    signedOnPaperRestriction = json['signedOnPaperRestriction'];
    hideCancelEngagementBtn = json['hideCancelEngagementBtn'];
    isFoodCheck = json['is_food_check'];
    isOnlyRDMS = json['isOnlyRDMS'];
    selectionType = json['selectionType'];
    hcpEndMeetingPop = json['hcpEndMeetingPop'];
    speakerType = json['speakerType'];
    isOptOutCheckboxEnable = json['is_opt_out_checkbox_enable'];
    engagementExecutionWithoutSpeaker =
    json['engagement_execution_without_speaker'];
    isEmailRequired = json['is_email_required'];
    isSpeakerSkipped = json['is_speaker_skipped'];
    isHcpSkipped = json['is_hcp_skipped'];
    isTopicDisabled = json['is_topic_disabled'];
    createListLable = json['create_list_lable'];
    isHcpAvailable = json['is_hcp_available'];
    speakerSpecialApproval = json['speakerSpecialApproval'];
    isCloseoutHide = json['is_closeout_hide'];
    isCatererHide = json['is_caterer_hide'];
    isManagerApprovalSkip = json['is_manager_approval_skip'];
    isSpkHoursEnabled = json['is_spk_hours_enabled'];
    showAllDate = json['show_all_date'];
    timeDiffDuration = json['time_diff_duration'];
    showEvents = json['show_events'];
    modestMeal = json['modest_meal'];
    spkAutocheck = json['spk_autocheck'];
    isRdmsKol = json['is_rdms_kol'];
    id = json['id'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    venueType = json['venueType'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['max_number_spk'] = maxNumberSpk;
    data['is_upload_document'] = isUploadDocument;
    data['is_add_timezone_at_create'] = isAddTimezoneAtCreate;
    data['is_upload_document_enabled'] = isUploadDocumentEnabled;
    data['is_exihibit_details'] = isExihibitDetails;
    data['display_and_exhibi_workflow'] = displayAndExhibiWorkflow;
    data['is_survey_minimum_answer'] = isSurveyMinimumAnswer;
    data['is_minimum_one_survey'] = isMinimumOneSurvey;
    data['is_eo_paid_meal_check'] = isEoPaidMealCheck;
    data['type'] = type;
    data['description'] = description;
    data['order_no'] = orderNo;
    data['is_start'] = isStart;
    data['minimum_hcp'] = minimumHcp;
    data['prescriber_hcp'] = prescriberHcp;
    data['is_collaborator'] = isCollaborator;
    data['is_skip_collaborator'] = isSkipCollaborator;
    data['is_cohost'] = isCohost;
    data['is_detail'] = isDetail;
    data['is_content_note'] = isContentNote;
    data['is_question'] = isQuestion;
    data['is_remote'] = isRemote;
    data['amount'] = amount;
    data['hcp_amount'] = hcpAmount;
    data['start_date'] = startDate;
    data['end_date'] = endDate;
    data['default_start_time'] = defaultStartTime;
    data['default_end_time'] = defaultEndTime;
    data['active_status'] = activeStatus;
    data['delete_status'] = deleteStatus;
    data['is_coll_type'] = isCollType;
    data['is_venue_check'] = isVenueCheck;
    data['isHcpSignInPriorToSession'] = isHcpSignInPriorToSession;
    data['is_pi_link_enabled'] = isPiLinkEnabled;
    data['is_qrcode_enabled'] = isQrcodeEnabled;
    data['is_did_not_attend_enabled'] = isDidNotAttendEnabled;
    data['is_email_flag_enabled'] = isEmailFlagEnabled;
    data['is_collaborator_invite_email'] = isCollaboratorInviteEmail;
    data['is_rml_enabled'] = isRmlEnabled;
    data['speaker_list_label'] = speakerListLabel;
    data['is_location_status_enabled'] = isLocationStatusEnabled;
    data['create_popup'] = createPopup;
    data['is_gpo'] = isGpo;
    data['priorMinutes'] = priorMinutes;
    data['signedOnPaperRestriction'] = signedOnPaperRestriction;
    data['hideCancelEngagementBtn'] = hideCancelEngagementBtn;
    data['is_food_check'] = isFoodCheck;
    data['isOnlyRDMS'] = isOnlyRDMS;
    data['selectionType'] = selectionType;
    data['hcpEndMeetingPop'] = hcpEndMeetingPop;
    data['speakerType'] = speakerType;
    data['is_opt_out_checkbox_enable'] = isOptOutCheckboxEnable;
    data['engagement_execution_without_speaker'] =
        engagementExecutionWithoutSpeaker;
    data['is_email_required'] = isEmailRequired;
    data['is_speaker_skipped'] = isSpeakerSkipped;
    data['is_hcp_skipped'] = isHcpSkipped;
    data['is_topic_disabled'] = isTopicDisabled;
    data['create_list_lable'] = createListLable;
    data['is_hcp_available'] = isHcpAvailable;
    data['speakerSpecialApproval'] = speakerSpecialApproval;
    data['is_closeout_hide'] = isCloseoutHide;
    data['is_caterer_hide'] = isCatererHide;
    data['is_manager_approval_skip'] = isManagerApprovalSkip;
    data['is_spk_hours_enabled'] = isSpkHoursEnabled;
    data['show_all_date'] = showAllDate;
    data['time_diff_duration'] = timeDiffDuration;
    data['show_events'] = showEvents;
    data['modest_meal'] = modestMeal;
    data['spk_autocheck'] = spkAutocheck;
    data['is_rdms_kol'] = isRdmsKol;
    data['id'] = id;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    data['venueType'] = venueType;
    return data;
  }
}

class Brand {
  String? brandName;
  String? brandImage;
  String? uploadPath;
  int? isBudgetCheck;
  String? originalBrandImage;
  String? dialNumber;
  int? isDialIn;
  int? activeStatus;
  int? deleteStatus;
  int? createdBy;
  int? updatedBy;
  int? id;
  String? createdAt;
  String? updatedAt;
  int? company;

  Brand(
      {this.brandName,
        this.brandImage,
        this.uploadPath,
        this.isBudgetCheck,
        this.originalBrandImage,
        this.dialNumber,
        this.isDialIn,
        this.activeStatus,
        this.deleteStatus,
        this.createdBy,
        this.updatedBy,
        this.id,
        this.createdAt,
        this.updatedAt,
        this.company});

  Brand.fromJson(Map<String, dynamic> json) {
    brandName = json['brand_name'];
    brandImage = json['brand_image'];
    uploadPath = json['upload_path'];
    isBudgetCheck = json['is_budget_check'];
    originalBrandImage = json['original_brand_image'];
    dialNumber = json['dial_number'];
    isDialIn = json['is_dial_in'];
    activeStatus = json['active_status'];
    deleteStatus = json['delete_status'];
    createdBy = json['created_by'];
    updatedBy = json['updated_by'];
    id = json['id'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    company = json['company'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['brand_name'] = brandName;
    data['brand_image'] = brandImage;
    data['upload_path'] = uploadPath;
    data['is_budget_check'] = isBudgetCheck;
    data['original_brand_image'] = originalBrandImage;
    data['dial_number'] = dialNumber;
    data['is_dial_in'] = isDialIn;
    data['active_status'] = activeStatus;
    data['delete_status'] = deleteStatus;
    data['created_by'] = createdBy;
    data['updated_by'] = updatedBy;
    data['id'] = id;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    data['company'] = company;
    return data;
  }
}

class Product {
  String? productName;
  String? product;
  String? jobcode;
  String? productDesc;
  String? productIsi;
  String? productDisplayLabel;
  int? hcpMaxAttendeeRule;
  int? activeStatus;
  int? deleteStatus;
  Null? createdBy;
  Null? updatedBy;
  int? skipMaxAttendeeRule;
  int? isPiLinkDisabled;
  int? showEngagementFilter;
  String? afterHour;
  String? productWithoutHtmlTag;
  String? startDate;
  String? endDate;
  int? id;
  String? createdAt;
  String? updatedAt;
  int? brand;
  int? company;

  Product(
      {this.productName,
        this.product,
        this.jobcode,
        this.productDesc,
        this.productIsi,
        this.productDisplayLabel,
        this.hcpMaxAttendeeRule,
        this.activeStatus,
        this.deleteStatus,
        this.createdBy,
        this.updatedBy,
        this.skipMaxAttendeeRule,
        this.isPiLinkDisabled,
        this.showEngagementFilter,
        this.afterHour,
        this.productWithoutHtmlTag,
        this.startDate,
        this.endDate,
        this.id,
        this.createdAt,
        this.updatedAt,
        this.brand,
        this.company});

  Product.fromJson(Map<String, dynamic> json) {
    productName = json['product_name'];
    product = json['product'];
    jobcode = json['jobcode'];
    productDesc = json['product_desc'];
    productIsi = json['product_isi'];
    productDisplayLabel = json['product_display_label'];
    hcpMaxAttendeeRule = json['hcp_max_attendee_rule'];
    activeStatus = json['active_status'];
    deleteStatus = json['delete_status'];
    createdBy = json['created_by'];
    updatedBy = json['updated_by'];
    skipMaxAttendeeRule = json['skip_max_attendee_rule'];
    isPiLinkDisabled = json['is_pi_link_disabled'];
    showEngagementFilter = json['showEngagementFilter'];
    afterHour = json['after_hour'];
    productWithoutHtmlTag = json['product_without_html_tag'];
    startDate = json['start_date'];
    endDate = json['end_date'];
    id = json['id'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    brand = json['brand'];
    company = json['company'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['product_name'] = productName;
    data['product'] = product;
    data['jobcode'] = jobcode;
    data['product_desc'] = productDesc;
    data['product_isi'] = productIsi;
    data['product_display_label'] = productDisplayLabel;
    data['hcp_max_attendee_rule'] = hcpMaxAttendeeRule;
    data['active_status'] = activeStatus;
    data['delete_status'] = deleteStatus;
    data['created_by'] = createdBy;
    data['updated_by'] = updatedBy;
    data['skip_max_attendee_rule'] = skipMaxAttendeeRule;
    data['is_pi_link_disabled'] = isPiLinkDisabled;
    data['showEngagementFilter'] = showEngagementFilter;
    data['after_hour'] = afterHour;
    data['product_without_html_tag'] = productWithoutHtmlTag;
    data['start_date'] = startDate;
    data['end_date'] = endDate;
    data['id'] = id;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    data['brand'] = brand;
    data['company'] = company;
    return data;
  }
}

class DmApprovalBy {
  String? firstName;
  String? lastName;
  String? midName;
  Null? address2;
  Null? affiliation;
  Null? govtEmployee;
  String? fullName;
  Null? preferredName;
  String? email;
  String? homeNumber;
  String? telephone;
  Null? degree;
  Null? speciality;
  Null? institution;
  String? address;
  String? city;
  String? state;
  String? zip;
  int? prescriber;
  Null? biography;
  Null? biographyPath;
  Null? cv;
  Null? cvPath;
  Null? photo;
  Null? photoPath;
  Null? primaryEmail;
  Null? npi;
  String? userType;
  int? attendeeType;
  int? capAmount;
  int? capMaxLimit;
  int? capMaxEngagement;
  int? activeStatus;
  int? deleteStatus;
  int? termsCondition;
  int? resetPasswordFlag;
  int? subscribeToNewsletter;
  int? introVideo;
  int? tier;
  int? vaFlag;
  String? title;
  int? isCloned;
  int? foodAndBeverageEligiblity;
  int? nationalSpeaker;
  int? reconciled;
  int? inExternalStatus;
  int? id;
  String? createdAt;
  String? updatedAt;
  int? rep;
  int? dm;
  int? role;
  int? addedBy;

  DmApprovalBy(
      {this.firstName,
        this.lastName,
        this.midName,
        this.address2,
        this.affiliation,
        this.govtEmployee,
        this.fullName,
        this.preferredName,
        this.email,
        this.homeNumber,
        this.telephone,
        this.degree,
        this.speciality,
        this.institution,
        this.address,
        this.city,
        this.state,
        this.zip,
        this.prescriber,
        this.biography,
        this.biographyPath,
        this.cv,
        this.cvPath,
        this.photo,
        this.photoPath,
        this.primaryEmail,
        this.npi,
        this.userType,
        this.attendeeType,
        this.capAmount,
        this.capMaxLimit,
        this.capMaxEngagement,
        this.activeStatus,
        this.deleteStatus,
        this.termsCondition,
        this.resetPasswordFlag,
        this.subscribeToNewsletter,
        this.introVideo,
        this.tier,
        this.vaFlag,
        this.title,
        this.isCloned,
        this.foodAndBeverageEligiblity,
        this.nationalSpeaker,
        this.reconciled,
        this.inExternalStatus,
        this.id,
        this.createdAt,
        this.updatedAt,
        this.rep,
        this.dm,
        this.role,
        this.addedBy});

  DmApprovalBy.fromJson(Map<String, dynamic> json) {
    firstName = json['firstName'];
    lastName = json['lastName'];
    midName = json['midName'];
    address2 = json['address2'];
    affiliation = json['affiliation'];
    govtEmployee = json['govt_employee'];
    fullName = json['fullName'];
    preferredName = json['preferred_name'];
    email = json['email'];
    homeNumber = json['home_number'];
    telephone = json['telephone'];
    degree = json['degree'];
    speciality = json['speciality'];
    institution = json['institution'];
    address = json['address'];
    city = json['city'];
    state = json['state'];
    zip = json['zip'];
    prescriber = json['prescriber'];
    biography = json['biography'];
    biographyPath = json['biography_path'];
    cv = json['cv'];
    cvPath = json['cv_path'];
    photo = json['photo'];
    photoPath = json['photo_path'];
    primaryEmail = json['primary_email'];
    npi = json['npi'];
    userType = json['userType'];
    attendeeType = json['attendeeType'];
    capAmount = json['cap_amount'];
    capMaxLimit = json['cap_max_limit'];
    capMaxEngagement = json['cap_max_engagement'];
    activeStatus = json['active_status'];
    deleteStatus = json['delete_status'];
    termsCondition = json['terms_condition'];
    resetPasswordFlag = json['reset_password_flag'];
    subscribeToNewsletter = json['subscribe_to_newsletter'];
    introVideo = json['intro_video'];
    tier = json['tier'];
    vaFlag = json['va_flag'];
    title = json['title'];
    isCloned = json['isCloned'];
    foodAndBeverageEligiblity = json['foodAndBeverageEligiblity'];
    nationalSpeaker = json['nationalSpeaker'];
    reconciled = json['reconciled'];
    inExternalStatus = json['in_external_status'];
    id = json['id'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    rep = json['rep'];
    dm = json['dm'];
    role = json['role'];
    addedBy = json['addedBy'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['firstName'] = firstName;
    data['lastName'] = lastName;
    data['midName'] = midName;
    data['address2'] = address2;
    data['affiliation'] = affiliation;
    data['govt_employee'] = govtEmployee;
    data['fullName'] = fullName;
    data['preferred_name'] = preferredName;
    data['email'] = email;
    data['home_number'] = homeNumber;
    data['telephone'] = telephone;
    data['degree'] = degree;
    data['speciality'] = speciality;
    data['institution'] = institution;
    data['address'] = address;
    data['city'] = city;
    data['state'] = state;
    data['zip'] = zip;
    data['prescriber'] = prescriber;
    data['biography'] = biography;
    data['biography_path'] = biographyPath;
    data['cv'] = cv;
    data['cv_path'] = cvPath;
    data['photo'] = photo;
    data['photo_path'] = photoPath;
    data['primary_email'] = primaryEmail;
    data['npi'] = npi;
    data['userType'] = userType;
    data['attendeeType'] = attendeeType;
    data['cap_amount'] = capAmount;
    data['cap_max_limit'] = capMaxLimit;
    data['cap_max_engagement'] = capMaxEngagement;
    data['active_status'] = activeStatus;
    data['delete_status'] = deleteStatus;
    data['terms_condition'] = termsCondition;
    data['reset_password_flag'] = resetPasswordFlag;
    data['subscribe_to_newsletter'] = subscribeToNewsletter;
    data['intro_video'] = introVideo;
    data['tier'] = tier;
    data['va_flag'] = vaFlag;
    data['title'] = title;
    data['isCloned'] = isCloned;
    data['foodAndBeverageEligiblity'] = foodAndBeverageEligiblity;
    data['nationalSpeaker'] = nationalSpeaker;
    data['reconciled'] = reconciled;
    data['in_external_status'] = inExternalStatus;
    data['id'] = id;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    data['rep'] = rep;
    data['dm'] = dm;
    data['role'] = role;
    data['addedBy'] = addedBy;
    return data;
  }
}

class ApprovalDocumentDetails {
  int? meeting;
  int? userId;
  Null? locationId;
  String? docName;
  String? docType;
  Null? docDescription;
  String? docPath;
  int? activeStatus;
  int? deleteStatus;
  String? uploadFor;
  int? id;
  String? createdAt;
  String? updatedAt;

  ApprovalDocumentDetails(
      {this.meeting,
        this.userId,
        this.locationId,
        this.docName,
        this.docType,
        this.docDescription,
        this.docPath,
        this.activeStatus,
        this.deleteStatus,
        this.uploadFor,
        this.id,
        this.createdAt,
        this.updatedAt});

  ApprovalDocumentDetails.fromJson(Map<String, dynamic> json) {
    meeting = json['meeting'];
    userId = json['userId'];
    locationId = json['location_id'];
    docName = json['doc_name'];
    docType = json['doc_type'];
    docDescription = json['doc_description'];
    docPath = json['doc_path'];
    activeStatus = json['active_status'];
    deleteStatus = json['delete_status'];
    uploadFor = json['upload_for'];
    id = json['id'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['meeting'] = meeting;
    data['userId'] = userId;
    data['location_id'] = locationId;
    data['doc_name'] = docName;
    data['doc_type'] = docType;
    data['doc_description'] = docDescription;
    data['doc_path'] = docPath;
    data['active_status'] = activeStatus;
    data['delete_status'] = deleteStatus;
    data['upload_for'] = uploadFor;
    data['id'] = id;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    return data;
  }
}

class TypeQuesDetailsToday {
  LabelQueId? labelQueId;
  OptionId? optionId;
  int? meeting;
  String? optionValue;
  int? activeStatus;
  int? id;
  String? createdAt;
  String? updatedAt;

  TypeQuesDetailsToday(
      {this.labelQueId,
        this.optionId,
        this.meeting,
        this.optionValue,
        this.activeStatus,
        this.id,
        this.createdAt,
        this.updatedAt});

  TypeQuesDetailsToday.fromJson(Map<String, dynamic> json) {
    labelQueId = json['label_que_id'] != null
        ? LabelQueId.fromJson(json['label_que_id'])
        : null;
    optionId = json['option_id'] != null
        ? OptionId.fromJson(json['option_id'])
        : null;
    meeting = json['meeting'];
    optionValue = json['option_value'];
    activeStatus = json['active_status'];
    id = json['id'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (labelQueId != null) {
      data['label_que_id'] = labelQueId!.toJson();
    }
    if (optionId != null) {
      data['option_id'] = optionId!.toJson();
    }
    data['meeting'] = meeting;
    data['option_value'] = optionValue;
    data['active_status'] = activeStatus;
    data['id'] = id;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    return data;
  }
}

class LabelQueId {
  String? keyName;
  String? question;
  String? questionDescription;
  int? activeStatus;
  int? isAvailForCollaboration;
  int? isOnlyForCollaboration;
  int? isGpo;
  int? divisionId;
  int? orderId;
  int? parentId;
  int? parentOptionId;
  String? questionType;
  int? id;
  String? createdAt;
  String? updatedAt;

  LabelQueId(
      {this.keyName,
        this.question,
        this.questionDescription,
        this.activeStatus,
        this.isAvailForCollaboration,
        this.isOnlyForCollaboration,
        this.isGpo,
        this.divisionId,
        this.orderId,
        this.parentId,
        this.parentOptionId,
        this.questionType,
        this.id,
        this.createdAt,
        this.updatedAt});

  LabelQueId.fromJson(Map<String, dynamic> json) {
    keyName = json['keyName'];
    question = json['question'];
    questionDescription = json['question_description'];
    activeStatus = json['activeStatus'];
    isAvailForCollaboration = json['isAvailForCollaboration'];
    isOnlyForCollaboration = json['isOnlyForCollaboration'];
    isGpo = json['is_gpo'];
    divisionId = json['division_id'];
    orderId = json['order_id'];
    parentId = json['parent_id'];
    parentOptionId = json['parent_option_id'];
    questionType = json['question_type'];
    id = json['id'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['keyName'] = keyName;
    data['question'] = question;
    data['question_description'] = questionDescription;
    data['activeStatus'] = activeStatus;
    data['isAvailForCollaboration'] = isAvailForCollaboration;
    data['isOnlyForCollaboration'] = isOnlyForCollaboration;
    data['is_gpo'] = isGpo;
    data['division_id'] = divisionId;
    data['order_id'] = orderId;
    data['parent_id'] = parentId;
    data['parent_option_id'] = parentOptionId;
    data['question_type'] = questionType;
    data['id'] = id;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    return data;
  }
}

class OptionId {
  int? typeId;
  String? selectionKey;
  String? selectionDescription;
  int? isDefaultSelect;
  int? activeStatus;
  int? deleteStatus;
  int? id;
  String? createdAt;
  String? updatedAt;
  int? selectionType;

  OptionId(
      {this.typeId,
        this.selectionKey,
        this.selectionDescription,
        this.isDefaultSelect,
        this.activeStatus,
        this.deleteStatus,
        this.id,
        this.createdAt,
        this.updatedAt,
        this.selectionType});

  OptionId.fromJson(Map<String, dynamic> json) {
    typeId = json['type_id'];
    selectionKey = json['selectionKey'];
    selectionDescription = json['selectionDescription'];
    isDefaultSelect = json['isDefaultSelect'];
    activeStatus = json['active_status'];
    deleteStatus = json['delete_status'];
    id = json['id'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    selectionType = json['selectionType'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['type_id'] = typeId;
    data['selectionKey'] = selectionKey;
    data['selectionDescription'] = selectionDescription;
    data['isDefaultSelect'] = isDefaultSelect;
    data['active_status'] = activeStatus;
    data['delete_status'] = deleteStatus;
    data['id'] = id;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    data['selectionType'] = selectionType;
    return data;
  }
}

class PayeeInfo {
  int? meetingId;
  String? payeeName;
  String? payeeAddress;
  String? payeeAddress1;
  String? payeeCity;
  String? payeeState;
  String? payeeZipCode;
  String? paymentMethod;
  int? activeStatus;
  int? id;
  String? createdAt;
  String? updatedAt;

  PayeeInfo(
      {this.meetingId,
        this.payeeName,
        this.payeeAddress,
        this.payeeAddress1,
        this.payeeCity,
        this.payeeState,
        this.payeeZipCode,
        this.paymentMethod,
        this.activeStatus,
        this.id,
        this.createdAt,
        this.updatedAt});

  PayeeInfo.fromJson(Map<String, dynamic> json) {
    meetingId = json['meeting_id'];
    payeeName = json['payee_name'];
    payeeAddress = json['payee_address'];
    payeeAddress1 = json['payee_address1'];
    payeeCity = json['payee_city'];
    payeeState = json['payee_state'];
    payeeZipCode = json['payee_zip_code'];
    paymentMethod = json['payment_method'];
    activeStatus = json['active_status'];
    id = json['id'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['meeting_id'] = meetingId;
    data['payee_name'] = payeeName;
    data['payee_address'] = payeeAddress;
    data['payee_address1'] = payeeAddress1;
    data['payee_city'] = payeeCity;
    data['payee_state'] = payeeState;
    data['payee_zip_code'] = payeeZipCode;
    data['payment_method'] = paymentMethod;
    data['active_status'] = activeStatus;
    data['id'] = id;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    return data;
  }
}

class W9FormInfo {
  int? meeting;
  int? documentType;
  int? modifiedBy;
  String? fileName;
  String? filePath;
  String? file;
  String? fileType;
  int? checkId;
  String? createdAt;
  String? updatedAt;
  int? activeStatus;
  int? deleteStatus;
  int? isFromDocMerge;
  int? id;

  W9FormInfo(
      {this.meeting,
        this.documentType,
        this.modifiedBy,
        this.fileName,
        this.filePath,
        this.file,
        this.fileType,
        this.checkId,
        this.createdAt,
        this.updatedAt,
        this.activeStatus,
        this.deleteStatus,
        this.isFromDocMerge,
        this.id});

  W9FormInfo.fromJson(Map<String, dynamic> json) {
    meeting = json['meeting'];
    documentType = json['documentType'];
    modifiedBy = json['modifiedBy'];
    fileName = json['file_name'];
    filePath = json['file_path'];
    file = json['file'];
    fileType = json['file_type'];
    checkId = json['check_id'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    activeStatus = json['active_status'];
    deleteStatus = json['delete_status'];
    isFromDocMerge = json['is_from_doc_merge'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['meeting'] = meeting;
    data['documentType'] = documentType;
    data['modifiedBy'] = modifiedBy;
    data['file_name'] = fileName;
    data['file_path'] = filePath;
    data['file'] = file;
    data['file_type'] = fileType;
    data['check_id'] = checkId;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    data['active_status'] = activeStatus;
    data['delete_status'] = deleteStatus;
    data['is_from_doc_merge'] = isFromDocMerge;
    data['id'] = id;
    return data;
  }
}

class GetBulkList {
  int? id;
  String? lable;

  GetBulkList({this.id, this.lable});

  GetBulkList.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    lable = json['lable'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['lable'] = lable;
    return data;
  }
}
