class Store {
  final String name;
  final List<Contact> contactList;
  final String description;
  final List<SocialLink> socialMediaLinks;

  const Store(
      {this.name, this.contactList, this.description, this.socialMediaLinks});
}

class Contact {
  final String address;
  final String phoneNumber;
  final Department department;

  const Contact({this.address, this.phoneNumber, this.department});
}

class SocialLink {
  final NetworkType network;
  final String data;

  const SocialLink({this.network, this.data});
}

enum Department { montevideo, maldonado, canelones }

enum NetworkType { instagram, web, facebook }
