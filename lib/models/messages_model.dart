

class ChatMessage {
  final String text;
  final ChatMessageType messageType;
  final MessageStatus messageStatus;
  final bool isSender;

  ChatMessage({
    this.text = '',
    required this.messageType,
    required this.messageStatus,
    required this.isSender,
  });
}
enum ChatMessageType { text, image, video }
enum MessageStatus { not_sent, not_view, viewed }
List chatMessages = [
  ChatMessage(
    text: "Hi Deepa 😀",
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.viewed,
    isSender: false,
  ),
  ChatMessage(
    text: "Did you prepare the report??",
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.viewed,
    isSender: false,
  ),
  ChatMessage(
    text: "yea,just bit of docs left😅",
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.viewed,
    isSender: true,
  ),
  ChatMessage(
    text: "oh great👍 ",
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.not_sent,
    isSender: false,
  ),
  ChatMessage(
    text: "arrange a meet asap pls",
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.not_sent,
    isSender: false,
  ),
  ChatMessage(
    text: "wat bout 6'30 PM today🤔",
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.viewed,
    isSender: true,
  ),
  ChatMessage(
    text: "sounds cool",
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.viewed,
    isSender: false,
  ),
  ChatMessage(
    text: "Hope u'll like it 😌",
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.viewed,
    isSender: true,
  ),
  ChatMessage(
    text: "haha!sure😁",
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.viewed,
    isSender: false,
  ),
  ChatMessage(
    text: "And check this too",
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.not_view,
    isSender: true,
  ),
  ChatMessage(
    text: "And check this too",
    messageType: ChatMessageType.video,
    messageStatus: MessageStatus.not_view,
    isSender: true,
  ),
];