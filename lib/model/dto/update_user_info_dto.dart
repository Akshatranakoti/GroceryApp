class UpdateUserInfoDto {
  String? idToken;
  String? displayName;
  String? photoUrl;
  bool? returnSecureToken;

  UpdateUserInfoDto(
      {this.idToken, this.displayName, this.photoUrl, this.returnSecureToken});

  UpdateUserInfoDto.fromJson(Map<String, dynamic> json) {
    idToken = json['idToken'];
    displayName = json['displayName'];
    photoUrl = json['photoUrl'];
    returnSecureToken = json['returnSecureToken'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['idToken'] = idToken;
    data['displayName'] = displayName;
    data['photoUrl'] = photoUrl;
    data['returnSecureToken'] = returnSecureToken;
    return data;
  }
}
