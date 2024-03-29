import 'package:hive_flutter/hive_flutter.dart';

part 'channal_model.g.dart';

@HiveType(typeId: 0)
class ChannalModel extends HiveObject {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final String? imageUrl;
  @HiveField(2)
  final int number;
  @HiveField(3)
  final int streamId;
  @HiveField(4)
  final String streamType;
  ChannalModel({
    required this.name,
    required this.imageUrl,
    required this.number,
    required this.streamId,
    required this.streamType,
  });
  factory ChannalModel.fromJson(Map<String, dynamic> data) {
    return ChannalModel(
      name: data['name'].toLowerCase(),
      imageUrl: data['stream_icon'],
      number: data['num'],
      streamId: data['stream_id'],
      streamType: data['stream_type'],
    );
  }
}
