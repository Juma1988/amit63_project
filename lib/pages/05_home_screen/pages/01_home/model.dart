class SuggestionData {
  late final bool status;
  late final Data data;

  SuggestionData.fromJson(Map<String, dynamic> json) {
    status = json['status'] ?? '';
    data = Data.fromJson(json['data'] ?? {});
  }
}

class Data {
  late final int id, favorites, expired;
  late final String name,
      image, jobTimeType, jobType, jobLevel, jobDescription, jobSkill, compName,
      compEmail, compWebsite, aboutComp, location, salary, createdAt, updatedAt;

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
    jobTimeType = json['job_time_type'];
    jobType = json['job_type'];
    jobLevel = json['job_level'];
    jobDescription = json['job_description'];
    jobSkill = json['job_skill'];
    compName = json['comp_name'];
    compEmail = json['comp_email'];
    compWebsite = json['comp_website'];
    aboutComp = json['about_comp'];
    location = json['location'];
    salary = json['salary'];
    favorites = json['favorites'];
    expired = json['expired'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }
}


