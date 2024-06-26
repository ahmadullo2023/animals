class Autogenerated {
  String? name;
  Taxonomy? taxonomy;
  List<String>? locations;
  Characteristics? characteristics;

  Autogenerated({this.name, this.taxonomy, this.locations, this.characteristics});

  Autogenerated.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    taxonomy = json['taxonomy'] != null ? Taxonomy.fromJson(json['taxonomy']) : null;
    locations = json['locations'].cast<String>();
    characteristics = json['characteristics'] != null ? Characteristics.fromJson(json['characteristics']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['name'] = name;
    if (taxonomy != null) {
      data['taxonomy'] = taxonomy!.toJson();
    }
    data['locations'] = locations;
    if (characteristics != null) {
      data['characteristics'] = characteristics!.toJson();
    }
    return data;
  }
}

class Taxonomy {
  String? kingdom;
  String? phylum;
  String? order;
  String? family;
  String? genus;
  String? scientificName;

  Taxonomy({this.kingdom, this.phylum, this.order, this.family, this.genus, this.scientificName});

  Taxonomy.fromJson(Map<String, dynamic> json) {
  kingdom = json['kingdom'];
  phylum = json['phylum'];
  order = json['order'];
  family = json['family'];
  genus = json['genus'];
  scientificName = json['scientific_name'];
  }

  Map<String, dynamic> toJson() {
  final Map<String, dynamic> data = Map<String, dynamic>();
  data['kingdom'] = kingdom;
  data['phylum'] = phylum;
  data['order'] = order;
  data['family'] = family;
  data['genus'] = genus;
  data['scientific_name'] = scientificName;
  return data;
  }
}

class Characteristics {
  String? prey;
  String? nameOfYoung;
  String? groupBehavior;
  String? estimatedPopulationSize;
  String? biggestThreat;
  String? mostDistinctiveFeature;
  String? gestationPeriod;
  String? habitat;
  String? diet;
  String? averageLitterSize;
  String? lifestyle;
  String? commonName;
  String? numberOfSpecies;
  String? location;
  String? slogan;
  String? group;
  String? color;
  String? skinType;
  String? topSpeed;
  String? lifespan;
  String? weight;
  String? height;
  String? ageOfSexualMaturity;
  String? ageOfWeaning;

  Characteristics({this.prey, this.nameOfYoung, this.groupBehavior, this.estimatedPopulationSize, this.biggestThreat, this.mostDistinctiveFeature, this.gestationPeriod, this.habitat, this.diet, this.averageLitterSize, this.lifestyle, this.commonName, this.numberOfSpecies, this.location, this.slogan, this.group, this.color, this.skinType, this.topSpeed, this.lifespan, this.weight, this.height, this.ageOfSexualMaturity, this.ageOfWeaning});

  Characteristics.fromJson(Map<String, dynamic> json) {
    prey = json['prey'];
    nameOfYoung = json['name_of_young'];
    groupBehavior = json['group_behavior'];
    estimatedPopulationSize = json['estimated_population_size'];
    biggestThreat = json['biggest_threat'];
    mostDistinctiveFeature = json['most_distinctive_feature'];
    gestationPeriod = json['gestation_period'];
    habitat = json['habitat'];
    diet = json['diet'];
    averageLitterSize = json['average_litter_size'];
    lifestyle = json['lifestyle'];
    commonName = json['common_name'];
    numberOfSpecies = json['number_of_species'];
    location = json['location'];
    slogan = json['slogan'];
    group = json['group'];
    color = json['color'];
    skinType = json['skin_type'];
    topSpeed = json['top_speed'];
    lifespan = json['lifespan'];
    weight = json['weight'];
    height = json['height'];
    ageOfSexualMaturity = json['age_of_sexual_maturity'];
    ageOfWeaning = json['age_of_weaning'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['prey'] = prey;
    data['name_of_young'] = nameOfYoung;
    data['group_behavior'] = groupBehavior;
    data['estimated_population_size'] = estimatedPopulationSize;
    data['biggest_threat'] = biggestThreat;
    data['most_distinctive_feature'] = mostDistinctiveFeature;
    data['gestation_period'] = gestationPeriod;
    data['habitat'] = habitat;
    data['diet'] = diet;
    data['average_litter_size'] = averageLitterSize;
    data['lifestyle'] = lifestyle;
    data['common_name'] = commonName;
    data['number_of_species'] = numberOfSpecies;
    data['location'] = location;
    data['slogan'] = slogan;
    data['group'] = group;
    data['color'] = color;
    data['skin_type'] = skinType;
    data['top_speed'] = topSpeed;
    data['lifespan'] = lifespan;
    data['weight'] = weight;
    data['height'] = height;
    data['age_of_sexual_maturity'] = ageOfSexualMaturity;
    data['age_of_weaning'] = ageOfWeaning;
    return data;
  }
}