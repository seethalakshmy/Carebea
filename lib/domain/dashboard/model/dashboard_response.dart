import 'dart:convert';

DashboardResponse dashboardResponseFromJson(String str) =>
    DashboardResponse.fromJson(json.decode(str));
String dashboardResponseToJson(DashboardResponse data) =>
    json.encode(data.toJson());

class DashboardResponse {
  DashboardResponse({
    bool? status,
    String? message,
    Data? data,
  }) {
    _status = status;
    _message = message;
    _data = data;
  }

  DashboardResponse.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  bool? _status;
  String? _message;
  Data? _data;
  DashboardResponse copyWith({
    bool? status,
    String? message,
    Data? data,
  }) =>
      DashboardResponse(
        status: status ?? _status,
        message: message ?? _message,
        data: data ?? _data,
      );
  bool? get status => _status;
  String? get message => _message;
  Data? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['message'] = _message;
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    return map;
  }
}

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());

class Data {
  Data({
    int? clientCount,
    int? careGiverCount,
    int? totalNewCareGiver,
    int? totalNewClient,
    int? totalRepeatedCareGiver,
    int? totalRepeatedClient,
    double? totalHours,
    int? totalServiceCompleted,
    int? totalSales,
    String? monthlyIncome,
    MonthlyServiceCounts? monthlyServiceCounts,
    List<DailyCounts>? dailyCounts,
  }) {
    _clientCount = clientCount;
    _careGiverCount = careGiverCount;
    _totalNewCareGiver = totalNewCareGiver;
    _totalNewClient = totalNewClient;
    _totalRepeatedCareGiver = totalRepeatedCareGiver;
    _totalRepeatedClient = totalRepeatedClient;
    _totalHours = totalHours;
    _totalServiceCompleted = totalServiceCompleted;
    _totalSales = totalSales;
    _monthlyIncome = monthlyIncome;
    _monthlyServiceCounts = monthlyServiceCounts;
    _dailyCounts = dailyCounts;
  }

  Data.fromJson(dynamic json) {
    _clientCount = json['clientCount'];
    _careGiverCount = json['careGiverCount'];
    _totalNewCareGiver = json['totalNewCareGiver'];
    _totalNewClient = json['totalNewClient'];
    _totalRepeatedCareGiver = json['totalRepeatedCareGiver'];
    _totalRepeatedClient = json['totalRepeatedClient'];
    _totalHours = json['totalHours'];
    _totalServiceCompleted = json['totalServiceCompleted'];
    _totalSales = json['totalSales'];
    _monthlyIncome = json['monthlyIncome'];
    _monthlyServiceCounts = json['monthlyServiceCounts'] != null
        ? MonthlyServiceCounts.fromJson(json['monthlyServiceCounts'])
        : null;
    if (json['dailyCounts'] != null) {
      _dailyCounts = [];
      json['dailyCounts'].forEach((v) {
        _dailyCounts?.add(DailyCounts.fromJson(v));
      });
    }
  }
  int? _clientCount;
  int? _careGiverCount;
  int? _totalNewCareGiver;
  int? _totalNewClient;
  int? _totalRepeatedCareGiver;
  int? _totalRepeatedClient;
  double? _totalHours;
  int? _totalServiceCompleted;
  int? _totalSales;
  String? _monthlyIncome;
  MonthlyServiceCounts? _monthlyServiceCounts;
  List<DailyCounts>? _dailyCounts;
  Data copyWith({
    int? clientCount,
    int? careGiverCount,
    int? totalNewCareGiver,
    int? totalNewClient,
    int? totalRepeatedCareGiver,
    int? totalRepeatedClient,
    double? totalHours,
    int? totalServiceCompleted,
    int? totalSales,
    String? monthlyIncome,
    MonthlyServiceCounts? monthlyServiceCounts,
    List<DailyCounts>? dailyCounts,
  }) =>
      Data(
        clientCount: clientCount ?? _clientCount,
        careGiverCount: careGiverCount ?? _careGiverCount,
        totalNewCareGiver: totalNewCareGiver ?? _totalNewCareGiver,
        totalNewClient: totalNewClient ?? _totalNewClient,
        totalRepeatedCareGiver:
            totalRepeatedCareGiver ?? _totalRepeatedCareGiver,
        totalRepeatedClient: totalRepeatedClient ?? _totalRepeatedClient,
        totalHours: totalHours ?? _totalHours,
        totalServiceCompleted: totalServiceCompleted ?? _totalServiceCompleted,
        totalSales: totalSales ?? _totalSales,
        monthlyIncome: monthlyIncome ?? _monthlyIncome,
        monthlyServiceCounts: monthlyServiceCounts ?? _monthlyServiceCounts,
        dailyCounts: dailyCounts ?? _dailyCounts,
      );
  int? get clientCount => _clientCount;
  int? get careGiverCount => _careGiverCount;
  int? get totalNewCareGiver => _totalNewCareGiver;
  int? get totalNewClient => _totalNewClient;
  int? get totalRepeatedCareGiver => _totalRepeatedCareGiver;
  int? get totalRepeatedClient => _totalRepeatedClient;
  double? get totalHours => _totalHours;
  int? get totalServiceCompleted => _totalServiceCompleted;
  int? get totalSales => _totalSales;
  String? get monthlyIncome => _monthlyIncome;
  MonthlyServiceCounts? get monthlyServiceCounts => _monthlyServiceCounts;
  List<DailyCounts>? get dailyCounts => _dailyCounts;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['clientCount'] = _clientCount;
    map['careGiverCount'] = _careGiverCount;
    map['totalNewCareGiver'] = _totalNewCareGiver;
    map['totalNewClient'] = _totalNewClient;
    map['totalRepeatedCareGiver'] = _totalRepeatedCareGiver;
    map['totalRepeatedClient'] = _totalRepeatedClient;
    map['totalHours'] = _totalHours;
    map['totalServiceCompleted'] = _totalServiceCompleted;
    map['totalSales'] = _totalSales;
    map['monthlyIncome'] = _monthlyIncome;
    if (_monthlyServiceCounts != null) {
      map['monthlyServiceCounts'] = _monthlyServiceCounts?.toJson();
    }
    if (_dailyCounts != null) {
      map['dailyCounts'] = _dailyCounts?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

DailyCounts dailyCountsFromJson(String str) =>
    DailyCounts.fromJson(json.decode(str));
String dailyCountsToJson(DailyCounts data) => json.encode(data.toJson());

class DailyCounts {
  DailyCounts({
    String? date,
    int? count,
  }) {
    _date = date;
    _count = count;
  }

  DailyCounts.fromJson(dynamic json) {
    _date = json['date'];
    _count = json['count'];
  }
  String? _date;
  int? _count;
  DailyCounts copyWith({
    String? date,
    int? count,
  }) =>
      DailyCounts(
        date: date ?? _date,
        count: count ?? _count,
      );
  String? get date => _date;
  int? get count => _count;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['date'] = _date;
    map['count'] = _count;
    return map;
  }
}

MonthlyServiceCounts monthlyServiceCountsFromJson(String str) =>
    MonthlyServiceCounts.fromJson(json.decode(str));
String monthlyServiceCountsToJson(MonthlyServiceCounts data) =>
    json.encode(data.toJson());

class MonthlyServiceCounts {
  MonthlyServiceCounts({
    int? jan,
    int? feb,
    int? mar,
    int? apr,
    int? may,
    int? jun,
    int? jul,
    int? aug,
    int? sept,
    int? oct,
    int? nov,
    int? dec,
  }) {
    _jan = jan;
    _feb = feb;
    _mar = mar;
    _apr = apr;
    _may = may;
    _jun = jun;
    _jul = jul;
    _aug = aug;
    _sept = sept;
    _oct = oct;
    _nov = nov;
    _dec = dec;
  }

  MonthlyServiceCounts.fromJson(dynamic json) {
    _jan = json['Jan'];
    _feb = json['Feb'];
    _mar = json['Mar'];
    _apr = json['Apr'];
    _may = json['May'];
    _jun = json['Jun'];
    _jul = json['Jul'];
    _aug = json['Aug'];
    _sept = json['Sept'];
    _oct = json['Oct'];
    _nov = json['Nov'];
    _dec = json['Dec'];
  }
  int? _jan;
  int? _feb;
  int? _mar;
  int? _apr;
  int? _may;
  int? _jun;
  int? _jul;
  int? _aug;
  int? _sept;
  int? _oct;
  int? _nov;
  int? _dec;
  MonthlyServiceCounts copyWith({
    int? jan,
    int? feb,
    int? mar,
    int? apr,
    int? may,
    int? jun,
    int? jul,
    int? aug,
    int? sept,
    int? oct,
    int? nov,
    int? dec,
  }) =>
      MonthlyServiceCounts(
        jan: jan ?? _jan,
        feb: feb ?? _feb,
        mar: mar ?? _mar,
        apr: apr ?? _apr,
        may: may ?? _may,
        jun: jun ?? _jun,
        jul: jul ?? _jul,
        aug: aug ?? _aug,
        sept: sept ?? _sept,
        oct: oct ?? _oct,
        nov: nov ?? _nov,
        dec: dec ?? _dec,
      );
  int? get jan => _jan;
  int? get feb => _feb;
  int? get mar => _mar;
  int? get apr => _apr;
  int? get may => _may;
  int? get jun => _jun;
  int? get jul => _jul;
  int? get aug => _aug;
  int? get sept => _sept;
  int? get oct => _oct;
  int? get nov => _nov;
  int? get dec => _dec;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Jan'] = _jan;
    map['Feb'] = _feb;
    map['Mar'] = _mar;
    map['Apr'] = _apr;
    map['May'] = _may;
    map['Jun'] = _jun;
    map['Jul'] = _jul;
    map['Aug'] = _aug;
    map['Sept'] = _sept;
    map['Oct'] = _oct;
    map['Nov'] = _nov;
    map['Dec'] = _dec;
    return map;
  }
}
