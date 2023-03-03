class ContactModel {
  final String name;
  final String message;
  final String phoneNumber;
  final bool isOnline;
  final String unreadMessages;
  final Map<String, String> skills;

  ContactModel({
    required this.name,
    required this.message,
    required this.phoneNumber,
    required this.isOnline,
    required this.unreadMessages,
    required this.skills,
  });
}
