class Activity {
  final String organiserID, activityId, activityType, docid;

  Activity({
    this.organiserID,
    this.activityId,
    this.activityType,
    this.docid,
  });
}

class ActivityDetails {
  final String activityTitle,
      description,
      activityType,
      organiserID,
      aid,
      rules,
      disclaimer;
  final double lat, long;
  List<String> tags;

  int tagsCount;
  int noOfPlayers;

  ActivityDetails(
      {this.activityTitle,
      this.disclaimer,
      this.rules,
      this.tagsCount,
      this.tags,
      this.description,
      this.activityType,
      this.noOfPlayers,
      this.lat,
      this.long,
      this.organiserID,
      this.aid});
}

class ActRequest {
  final String uid;
  final int accepted;

  ActRequest({this.uid, this.accepted});
}
