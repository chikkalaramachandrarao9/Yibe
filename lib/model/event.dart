class EventDetails {
  final String eventName,
      address,
      description,
      disclaimer,
      eventType,
      termsAndConditions,
      timeOfEvent,
      posterUrl,
      dateOfEvent,
      duration,
      noOfParticipants,
      eid;

  final double lat, long;
  List<String> tags;

  int tagsCount;

  EventDetails(
      {this.eventName,
      this.eid,
      this.address,
      this.description,
      this.disclaimer,
      this.eventType,
      this.termsAndConditions,
      this.timeOfEvent,
      this.lat,
      this.long,
      this.posterUrl,
      this.dateOfEvent,
      this.tags,
      this.duration,
      this.noOfParticipants,
      this.tagsCount});
}

class Event {
  final String organiserID, eventId, eventType, docid;
  final double lat, long;

  Event(
      {this.organiserID,
      this.lat,
      this.long,
      this.eventId,
      this.eventType,
      this.docid});
}
