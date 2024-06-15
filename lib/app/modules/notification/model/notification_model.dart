
class NotificationItem {
  final String icon;
  final String title;
  final String date;
  bool open;

  NotificationItem({
    required this.icon,
    required this.title,
    required this.date,
    this.open = false,
  });

  NotificationItem copyWith({bool? open}) {
    return NotificationItem(
      icon: icon,
      title: title,
      date: date,
      open: open ?? this.open,
    );
  }
}


