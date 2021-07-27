import 'package:flutter/material.dart';

/// the basic country item -> direct relation to land in database
enum ChildCountStatus {
  empty,
  update_in_progress,
}

class Baseitem {
  String name;
  String? nameCZ;
  double nr;
  int childCountInt;
  int? commentCountInt;
  String? commentCount;
  Baseitem({
    this.name = 'Root-Baseitem',
    this.nr = 0,
    // ignore: invalid_required_named_param
    @required this.childCountInt = 0,
    this.commentCountInt,
  });

  /// 2nd Language stuff
  bool get hasSecondLanguageName => nameCZ != null;
  String get secondLanguageName => nameCZ ?? '';

  // Child element Getter + Update functions
  String get childCount {
    // state -1 == update in progress
    if (childCountInt == -1) {
      return 'updating';
    }
    if (childCountInt == 0) {
      return 'N/A';
    }
    return childCountInt.toString();
  }

  void updateChildCount(int newValue) {
    childCountInt = newValue;
  }

  void setChildCountStatus(ChildCountStatus status) {
    if (status == ChildCountStatus.empty) childCountInt = 0;
    if (status == ChildCountStatus.update_in_progress) childCountInt = -1;
  }
}

abstract class Baseitems {
  /// parent of current item
  Baseitem parent;
  Baseitems(this.parent);

  /// the actual data for presentation
  List<Baseitem> _baseitem_list = [];

  /// currently configured filter
  String _filterValue = '';

  /// type of sorting
  bool sortAlpha = true;

  set currentFilterValue(String newValue) {
    _filterValue = newValue;
  }

  /// sorting method Name ASC
  int sortByName(Baseitem item_a, Baseitem item_b) {
    return item_a.name.compareTo(item_b.name);
  }

  /// sorting method Count DESC
  int sortByChildsDesc(Baseitem item_a, Baseitem item_b) {
    // explicitely use private integer!
    /// if nr is not empty, use this instead for sorting
    if (item_a.nr == 0 && item_b.nr == 0) {
      return item_b.childCountInt.compareTo(item_a.childCountInt);
    } else {
      return ((item_a.nr - item_b.nr) * 10).round();
    }
  }

  set baseitem_list(List<Baseitem> new_list) {
    _baseitem_list = new_list;
  }

  List<Baseitem> get baseitem_list {
    if (sortAlpha) {
      _baseitem_list.sort(sortByName);
    } else {
      _baseitem_list.sort(sortByChildsDesc);
    }
    // checking the search
    if (_filterValue.isEmpty) {
      return _baseitem_list;
    } else {
      return _baseitem_list
          .where((element) =>
              element.name.toLowerCase().contains(_filterValue.toLowerCase()))
          .toList();
    }
  }

  Future<int> updateFromRemote();
}
