
class ProfilesTodayList {
  int? statusCode;
  bool? apiStatus;
  int? totalCount;
  List<ResultToday>? result;

  ProfilesTodayList({this.statusCode, this.apiStatus, this.totalCount, this.result});

  ProfilesTodayList.fromJson(Map<String, dynamic> json) {
    statusCode = json['statusCode'];
    apiStatus = json['apiStatus'];
    totalCount = json['totalCount'];
    if (json['result'] != null) {
      result = <ResultToday>[];
      json['result'].forEach((v) {
        result!.add(ResultToday.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['statusCode'] = statusCode;
    data['apiStatus'] = apiStatus;
    data['totalCount'] = totalCount;
    if (result != null) {
      data['result'] = result!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ResultToday {
  String? displayStatus;
  List<TypeQuesDetails>? typeQuesDetails;
  int? isMultiLocation;
  EngagementType? engagementType;
  int? id;
  User? user;
  String? topic;
  String? startTime;
  Null? endTime;
  String? meetingId;
  Brand? brand;
  Product? product;
  Location? location;
  int? status;
  int? venueStatus;
  int? isStart;
  int? coHostUser;
  // List<Null>? multipleTopics;
  bool? isSkipStartAndJoin;
  bool? isSpeakerFromVirtual;
  String? collaborationMeeting;
  // List<Null>? speaker;
  String? timeZone;
  String? engagementTimeZone;
  // List<Null>? speakerData;

  ResultToday(
      {this.displayStatus,
        this.typeQuesDetails,
        this.isMultiLocation,
        this.engagementType,
        this.id,
        this.user,
        this.topic,
        this.startTime,
        this.endTime,
        this.meetingId,
        this.brand,
        this.product,
        this.location,
        this.status,
        this.venueStatus,
        this.isStart,
        this.coHostUser,
        // this.multipleTopics,
        this.isSkipStartAndJoin,
        this.isSpeakerFromVirtual,
        this.collaborationMeeting,
        // this.speaker,
        this.timeZone,
        this.engagementTimeZone,
        // this.speakerData,
      });

  ResultToday.fromJson(Map<String, dynamic> json) {
    displayStatus = json['displayStatus'];
    if (json['typeQuesDetails'] != null) {
      typeQuesDetails = <TypeQuesDetails>[];
      json['typeQuesDetails'].forEach((v) {
        typeQuesDetails!.add(TypeQuesDetails.fromJson(v));
      });
    }
    isMultiLocation = json['is_multi_location'];
    engagementType = json['engagementType'] != null
        ? EngagementType.fromJson(json['engagementType'])
        : null;
    id = json['id'];
    user = json['user'] != null ? User.fromJson(json['user']) : null;
    topic = json['topic'];
    startTime = json['start_time'];
    endTime = json['end_time'];
    meetingId = json['meeting_id'];
    brand = json['brand'] != null ? Brand.fromJson(json['brand']) : null;
    product =
    json['product'] != null ? Product.fromJson(json['product']) : null;
    location = json['location'] != null
        ? Location.fromJson(json['location'])
        : null;
    status = json['status'];
    venueStatus = json['venue_status'];
    isStart = json['is_start'];
    coHostUser = json['coHostUser'];
    // if (json['multiple_topics'] != null) {
    //   multipleTopics = <Null>[];
    //   json['multiple_topics'].forEach((v) {
    //     multipleTopics!.add(Null.fromJson(v));
    //   });
    // }
    isSkipStartAndJoin = json['isSkipStartAndJoin'];
    isSpeakerFromVirtual = json['isSpeakerFromVirtual'];
    collaborationMeeting = json['collaboration_meeting'];
    // if (json['speaker'] != null) {
    //   speaker = <Null>[];
    //   json['speaker'].forEach((v) {
    //     speaker!.add(Null.fromJson(v));
    //   });
    // }
    timeZone = json['timeZone'];
    engagementTimeZone = json['engagement_time_zone'];
    // if (json['speaker_data'] != null) {
    //   speakerData = <Null>[];
    //   json['speaker_data'].forEach((v) {
    //     speakerData!.add(Null.fromJson(v));
    //   });
    // }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['displayStatus'] = displayStatus;
    if (typeQuesDetails != null) {
      data['typeQuesDetails'] =
          typeQuesDetails!.map((v) => v.toJson()).toList();
    }
    data['is_multi_location'] = isMultiLocation;
    if (engagementType != null) {
      data['engagementType'] = engagementType!.toJson();
    }
    data['id'] = id;
    if (user != null) {
      data['user'] = user!.toJson();
    }
    data['topic'] = topic;
    data['start_time'] = startTime;
    data['end_time'] = endTime;
    data['meeting_id'] = meetingId;
    if (brand != null) {
      data['brand'] = brand!.toJson();
    }
    if (product != null) {
      data['product'] = product!.toJson();
    }
    if (location != null) {
      data['location'] = location!.toJson();
    }
    data['status'] = status;
    data['venue_status'] = venueStatus;
    data['is_start'] = isStart;
    data['coHostUser'] = coHostUser;
    // if (multipleTopics != null) {
    //   data['multiple_topics'] =
    //       multipleTopics!.map((v) => v.toJson()).toList();
    // }
    data['isSkipStartAndJoin'] = isSkipStartAndJoin;
    data['isSpeakerFromVirtual'] = isSpeakerFromVirtual;
    data['collaboration_meeting'] = collaborationMeeting;
    // if (speaker != null) {
    //   data['speaker'] = speaker!.map((v) => v.toJson()).toList();
    // }
    data['timeZone'] = timeZone;
    data['engagement_time_zone'] = engagementTimeZone;
    // if (speakerData != null) {
    //   data['speaker_data'] = speakerData!.map((v) => v.toJson()).toList();
    // }
    return data;
  }
}

class TypeQuesDetails {
  LabelQueId? labelQueId;
  OptionId? optionId;
  int? meeting;
  String? optionValue;
  int? activeStatus;
  int? id;
  String? createdAt;
  String? updatedAt;

  TypeQuesDetails(
      {this.labelQueId,
        this.optionId,
        this.meeting,
        this.optionValue,
        this.activeStatus,
        this.id,
        this.createdAt,
        this.updatedAt});

  TypeQuesDetails.fromJson(Map<String, dynamic> json) {
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

class EngagementType {
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

  EngagementType(
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

  EngagementType.fromJson(Map<String, dynamic> json) {
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