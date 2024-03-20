import 'package:iptv/features/home/home/model/category_model.dart';
import 'package:iptv/features/home/home/model/channal_model.dart';

class IPTVModel {
  final CategoryModel category;
  final List<ChannalModel> allChannel;

  IPTVModel._({required this.category, required this.allChannel});
  factory IPTVModel.fromData(
      {required CategoryModel category,
      required List<ChannalModel> allChannal}) {
    return IPTVModel._(allChannel: allChannal, category: category);
  }
}
