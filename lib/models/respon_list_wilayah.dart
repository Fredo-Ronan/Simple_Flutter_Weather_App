
class ResponListWilayah {
  final String author;
  final List<String> message;

  ResponListWilayah({
    required this.author,
    required this.message
  });

  factory ResponListWilayah.fromJson(Map<String, dynamic> json){
    final message = json['message'];
    
    List<String> listMessage = [];

    for(final element in message){
      listMessage.add(element);
    }

    final author = json['author'] as String;
    return ResponListWilayah(author: author, message: listMessage);
  }
}