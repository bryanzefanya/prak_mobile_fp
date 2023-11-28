class HeroDetail {
  int? code;
  String? message;
  Detail? data;

  HeroDetail({
    this.code,
    this.message,
    this.data,
  });

  HeroDetail.fromJson(Map<String, dynamic> json) {
    code = json['code'] as int?;
    message = json['message'] as String?;
    data = (json['data'] as Map<String,dynamic>?) != null ? Detail.fromJson(json['data'] as Map<String,dynamic>) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['code'] = code;
    json['message'] = message;
    json['data'] = data?.toJson();
    return json;
  }
}

class Detail {
  String? coverPicture;
  String? galleryPicture;
  String? junling;
  String? cost;
  String? des;
  String? mag;
  String? phy;
  String? alive;
  String? diff;
  String? name;
  String? type;
  Skill1? skill1;
  Gear? gear;
  Counters1? counters;

  Detail({
    this.coverPicture,
    this.galleryPicture,
    this.junling,
    this.cost,
    this.des,
    this.mag,
    this.phy,
    this.alive,
    this.diff,
    this.name,
    this.type,
    this.skill1,
    this.gear,
    this.counters,
  });

  Detail.fromJson(Map<String, dynamic> json) {
    coverPicture = json['cover_picture'] as String?;
    galleryPicture = json['gallery_picture'] as String?;
    junling = json['junling'] as String?;
    cost = json['cost'] as String?;
    des = json['des'] as String?;
    mag = json['mag'] as String?;
    phy = json['phy'] as String?;
    alive = json['alive'] as String?;
    diff = json['diff'] as String?;
    name = json['name'] as String?;
    type = json['type'] as String?;
    skill1 = (json['skill'] as Map<String,dynamic>?) != null ? Skill1.fromJson(json['skill'] as Map<String,dynamic>) : null;
    gear = (json['gear'] as Map<String,dynamic>?) != null ? Gear.fromJson(json['gear'] as Map<String,dynamic>) : null;
    counters = (json['counters'] as Map<String,dynamic>?) != null ? Counters1.fromJson(json['counters'] as Map<String,dynamic>) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['cover_picture'] = coverPicture;
    json['gallery_picture'] = galleryPicture;
    json['junling'] = junling;
    json['cost'] = cost;
    json['des'] = des;
    json['mag'] = mag;
    json['phy'] = phy;
    json['alive'] = alive;
    json['diff'] = diff;
    json['name'] = name;
    json['type'] = type;
    json['skill'] = skill1?.toJson();
    json['gear'] = gear?.toJson();
    json['counters'] = counters?.toJson();
    return json;
  }
}

class Skill1 {
  List<Skill>? skill;
  Item? item;

  Skill1({
    this.skill,
    this.item,
  });

  Skill1.fromJson(Map<String, dynamic> json) {
    skill = (json['skill'] as List?)?.map((dynamic e) => Skill.fromJson(e as Map<String,dynamic>)).toList();
    item = (json['item'] as Map<String,dynamic>?) != null ? Item.fromJson(json['item'] as Map<String,dynamic>) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['skill'] = skill?.map((e) => e.toJson()).toList();
    json['item'] = item?.toJson();
    return json;
  }
}

class Skill {
  String? name;
  String? icon;
  String? des;
  String? tips;

  Skill({
    this.name,
    this.icon,
    this.des,
    this.tips,
  });

  Skill.fromJson(Map<String, dynamic> json) {
    name = json['name'] as String?;
    icon = json['icon'] as String?;
    des = json['des'] as String?;
    tips = json['tips'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['name'] = name;
    json['icon'] = icon;
    json['des'] = des;
    json['tips'] = tips;
    return json;
  }
}

class Item {
  Main? main;
  Secondary? secondary;
  BattleFirst? battleFirst;
  BattleSecond? battleSecond;
  String? tips;

  Item({
    this.main,
    this.secondary,
    this.battleFirst,
    this.battleSecond,
    this.tips,
  });

  Item.fromJson(Map<String, dynamic> json) {
    main = (json['main'] as Map<String,dynamic>?) != null ? Main.fromJson(json['main'] as Map<String,dynamic>) : null;
    secondary = (json['secondary'] as Map<String,dynamic>?) != null ? Secondary.fromJson(json['secondary'] as Map<String,dynamic>) : null;
    battleFirst = (json['battle_first'] as Map<String,dynamic>?) != null ? BattleFirst.fromJson(json['battle_first'] as Map<String,dynamic>) : null;
    battleSecond = (json['battle_second'] as Map<String,dynamic>?) != null ? BattleSecond.fromJson(json['battle_second'] as Map<String,dynamic>) : null;
    tips = json['tips'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['main'] = main?.toJson();
    json['secondary'] = secondary?.toJson();
    json['battle_first'] = battleFirst?.toJson();
    json['battle_second'] = battleSecond?.toJson();
    json['tips'] = tips;
    return json;
  }
}

class Main {
  String? icon;

  Main({
    this.icon,
  });

  Main.fromJson(Map<String, dynamic> json) {
    icon = json['icon'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['icon'] = icon;
    return json;
  }
}

class Secondary {
  String? icon;

  Secondary({
    this.icon,
  });

  Secondary.fromJson(Map<String, dynamic> json) {
    icon = json['icon'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['icon'] = icon;
    return json;
  }
}

class BattleFirst {
  String? icon;

  BattleFirst({
    this.icon,
  });

  BattleFirst.fromJson(Map<String, dynamic> json) {
    icon = json['icon'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['icon'] = icon;
    return json;
  }
}

class BattleSecond {
  String? icon;

  BattleSecond({
    this.icon,
  });

  BattleSecond.fromJson(Map<String, dynamic> json) {
    icon = json['icon'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['icon'] = icon;
    return json;
  }
}

class Gear {
  List<OutPack>? outPack;
  String? outPackTips;
  List<dynamic>? verysix;

  Gear({
    this.outPack,
    this.outPackTips,
    this.verysix,
  });

  Gear.fromJson(Map<String, dynamic> json) {
    outPack = (json['out_pack'] as List?)?.map((dynamic e) => OutPack.fromJson(e as Map<String,dynamic>)).toList();
    outPackTips = json['out_pack_tips'] as String?;
    verysix = json['verysix'] as List?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['out_pack'] = outPack?.map((e) => e.toJson()).toList();
    json['out_pack_tips'] = outPackTips;
    json['verysix'] = verysix;
    return json;
  }
}

class OutPack {
  int? equipmentId;
  Equip? equip;

  OutPack({
    this.equipmentId,
    this.equip,
  });

  OutPack.fromJson(Map<String, dynamic> json) {
    equipmentId = json['equipment_id'] as int?;
    equip = (json['equip'] as Map<String,dynamic>?) != null ? Equip.fromJson(json['equip'] as Map<String,dynamic>) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['equipment_id'] = equipmentId;
    json['equip'] = equip?.toJson();
    return json;
  }
}

class Equip {
  String? icon;
  String? name;
  List<String>? des;

  Equip({
    this.icon,
    this.name,
    this.des,
  });

  Equip.fromJson(Map<String, dynamic> json) {
    icon = json['icon'] as String?;
    name = json['name'] as String?;
    des = (json['des'] as List?)?.map((dynamic e) => e as String).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['icon'] = icon;
    json['name'] = name;
    json['des'] = des;
    return json;
  }
}

class Counters1 {
  Best? best;
  Counters? counters;
  Countered? countered;

  Counters1({
    this.best,
    this.counters,
    this.countered,
  });

  Counters1.fromJson(Map<String, dynamic> json) {
    best = (json['best'] as Map<String,dynamic>?) != null ? Best.fromJson(json['best'] as Map<String,dynamic>) : null;
    counters = (json['counters'] as Map<String,dynamic>?) != null ? Counters.fromJson(json['counters'] as Map<String,dynamic>) : null;
    countered = (json['countered'] as Map<String,dynamic>?) != null ? Countered.fromJson(json['countered'] as Map<String,dynamic>) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['best'] = best?.toJson();
    json['counters'] = counters?.toJson();
    json['countered'] = countered?.toJson();
    return json;
  }
}

class Best {
  String? heroid;
  String? bestMateTips;
  String? name;
  String? icon;

  Best({
    this.heroid,
    this.bestMateTips,
    this.name,
    this.icon,
  });

  Best.fromJson(Map<String, dynamic> json) {
    heroid = json['heroid'] as String?;
    bestMateTips = json['best_mate_tips'] as String?;
    name = json['name'] as String?;
    icon = json['icon'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['heroid'] = heroid;
    json['best_mate_tips'] = bestMateTips;
    json['name'] = name;
    json['icon'] = icon;
    return json;
  }
}

class Counters {
  String? heroid;
  String? restrainHeroTips;
  String? name;
  String? icon;

  Counters({
    this.heroid,
    this.restrainHeroTips,
    this.name,
    this.icon,
  });

  Counters.fromJson(Map<String, dynamic> json) {
    heroid = json['heroid'] as String?;
    restrainHeroTips = json['restrain_hero_tips'] as String?;
    name = json['name'] as String?;
    icon = json['icon'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['heroid'] = heroid;
    json['restrain_hero_tips'] = restrainHeroTips;
    json['name'] = name;
    json['icon'] = icon;
    return json;
  }
}

class Countered {
  String? heroid;
  String? byRestrainTips;
  String? name;
  String? icon;

  Countered({
    this.heroid,
    this.byRestrainTips,
    this.name,
    this.icon,
  });

  Countered.fromJson(Map<String, dynamic> json) {
    heroid = json['heroid'] as String?;
    byRestrainTips = json['by_restrain_tips'] as String?;
    name = json['name'] as String?;
    icon = json['icon'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['heroid'] = heroid;
    json['by_restrain_tips'] = byRestrainTips;
    json['name'] = name;
    json['icon'] = icon;
    return json;
  }
}