class PostModel {
  int? postId;
  String? description;
  String? createdTime;
  int? noOfLikes;
  int? postUserId;

  PostModel(
      {this.postId,
        this.description,
        this.createdTime,
        this.noOfLikes,
        this.postUserId});



  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['post_id'] = this.postId;
    data['description'] = this.description;
    data['created_time'] = this.createdTime;
    data['no_of_likes'] = this.noOfLikes;
    data['post_user_id'] = this.postUserId;
    return data;
  }

   PostModel.fromJson(Map<dynamic, dynamic> json) {
    postId = json['post_id'];
    description = json['description'];
    createdTime = json['created_time'];
    noOfLikes = json['no_of_likes'];
    postUserId = json['post_user_id'];
  }
}