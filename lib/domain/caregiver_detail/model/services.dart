
class Services {
  String? id;
  String? clientName;
  String? service;
  String? location;
  String? dateTime;
  String? clientProfile;
  int? onBoardingStatus;

  Services(
      {this.id,
      this.clientName,
      this.service,
      this.location,
      this.dateTime,
      this.clientProfile,
      this.onBoardingStatus});

  Services copyWith({
    String? id,
    String? name,
    String? service,
    String? location,
    String? dateTime,
    int? status,
    String? clientProfile,
    int? onBoardingStatus,
  }

  ) =>
      Services(
          id: id ?? this.id,
          clientName: name ?? clientName,
          location: location ?? this.location,
          dateTime: dateTime ?? this.dateTime,
          clientProfile: clientProfile ?? this.clientProfile,
          onBoardingStatus: onBoardingStatus ?? this.onBoardingStatus,
          service: service ?? this.service,);

  Services.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    clientName = json['name'] ;
    service = json['service'];
    location = json['location'];
    dateTime = json['date_time'];
    clientProfile = json['client_profile'];
    onBoardingStatus = json['on_boarding_status']??0;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['service'] = service;
    data['location'] = location;
    data['date_time'] = dateTime;
    data['client_profile'] = clientProfile;
    data['on_boarding_status'] = onBoardingStatus;
    return data;
  }
}
