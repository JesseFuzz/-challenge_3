import '../../models/contact_model.dart';

class ContactModelMock {
  static List<ContactModel> getContacts() {
    return [
      ContactModel(
        name: 'Russel Hue',
        message: 'Good! Send you their visual',
        phoneNumber: '+(1) 345 123 5467',
        isOnline: true,
        unreadMessages: '2',
        skills: {
          'UI/UX Designer': '0xFF6963DB',
          'Project Manager  ': '0xFF454084',
          'QA': '0xFFA5A899',
          'SEO': '0xFF89A3AA',
          'JavasCriptDeveloper': '0xFF8568AA',
        },
      ),
      ContactModel(
        name: 'Russel Hue',
        message: 'Good! Send you their visual',
        phoneNumber: '+(1) 345 123 5467',
        isOnline: true,
        unreadMessages: '2',
        skills: {
          'UI/UX Designer': '0xFF6963DB',
          'Project Manager  ': '0xFF454084',
          'QA': '0xFFA5A899',
          'SEO': '0xFF89A3AA',
          'JavasCriptDeveloper': '0xFF8568AA',
        },
      )
    ];
  }
}
