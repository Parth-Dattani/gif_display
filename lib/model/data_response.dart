/*
class DataResponse {
  List<Results>? results;
  String? next;

  DataResponse({this.results, this.next});

  DataResponse.fromJson(Map<String, dynamic> json) {
    if (json['results'] != null) {
      results = <Results>[];
      json['results'].forEach((v) {
        results!.add(Results.fromJson(v));
      });
    }
    next = json['next'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (results != null) {
      data['results'] = results!.map((v) => v.toJson()).toList();
    }
    data['next'] = next;
    return data;
  }
}

class Results {
  String? id;
  String? title;
  String? contentDescription;
  String? contentRating;
  String? h1Title;
  List<Media>? media;
  String? bgColor;
  double? created;
  String? itemurl;
  String? url;
  List<Results>? tags;
  List<Results>? flags;
  int? shares;
  bool? hasaudio;
  bool? hascaption;
  String? sourceId;
  String? composite;

  Results(
      {this.id,
        this.title,
        this.contentDescription,
        this.contentRating,
        this.h1Title,
        this.media,
        this.bgColor,
        this.created,
        this.itemurl,
        this.url,
        this.tags,
        this.flags,
        this.shares,
        this.hasaudio,
        this.hascaption,
        this.sourceId,
        this.composite});

  Results.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    contentDescription = json['content_description'];
    contentRating = json['content_rating'];
    h1Title = json['h1_title'];
    if (json['media'] != null) {
      media = <Media>[];
      json['media'].forEach((v) {
        media!.add(Media.fromJson(v));
      });
    }
    bgColor = json['bg_color'];
    created = json['created'];
    itemurl = json['itemurl'];
    url = json['url'];
    if (json['tags'] != null) {
      tags = <Results>[];
      json['tags'].forEach((v) {
        tags!.add(Results.fromJson(v));
      });
    }
    if (json['flags'] != null) {
      flags = <Results>[];
      json['flags'].forEach((v) {
        flags!.add(Results.fromJson(v));
      });
    }
    shares = json['shares'];
    hasaudio = json['hasaudio'];
    hascaption = json['hascaption'];
    sourceId = json['source_id'];
    composite = json['composite'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['title'] = title;
    data['content_description'] = contentDescription;
    data['content_rating'] = contentRating;
    data['h1_title'] = h1Title;
    if (media != null) {
      data['media'] = media!.map((v) => v.toJson()).toList();
    }
    data['bg_color'] = bgColor;
    data['created'] = created;
    data['itemurl'] = itemurl;
    data['url'] = url;
    if (tags != null) {
      data['tags'] = tags!.map((v) => v.toJson()).toList();
    }
    if (flags != null) {
      data['flags'] = flags!.map((v) => v.toJson()).toList();
    }
    data['shares'] = shares;
    data['hasaudio'] = hasaudio;
    data['hascaption'] = hascaption;
    data['source_id'] = sourceId;
    data['composite'] = composite;
    return data;
  }
}

class Media {
  Nanogif? nanogif;
  Nanogif? mediumgif;
  Nanogif? tinywebm;
  Nanogif? webm;
  Nanogif? gif;
  Nanomp4? nanomp4;
  Nanomp4? mp4;
  Nanomp4? loopedmp4;
  Nanogif? tinygif;
  Nanomp4? tinymp4;
  Nanogif? nanowebm;

  Media(
      {this.nanogif,
        this.mediumgif,
        this.tinywebm,
        this.webm,
        this.gif,
        this.nanomp4,
        this.mp4,
        this.loopedmp4,
        this.tinygif,
        this.tinymp4,
        this.nanowebm});

  Media.fromJson(Map<String, dynamic> json) {
    nanogif =
    json['nanogif'] != null ? Nanogif.fromJson(json['nanogif']) : null;
    mediumgif = json['mediumgif'] != null
        ? Nanogif.fromJson(json['mediumgif'])
        : null;
    tinywebm = json['tinywebm'] != null
        ? Nanogif.fromJson(json['tinywebm'])
        : null;
    webm = json['webm'] != null ? Nanogif.fromJson(json['webm']) : null;
    gif = json['gif'] != null ? Nanogif.fromJson(json['gif']) : null;
    nanomp4 =
    json['nanomp4'] != null ? Nanomp4.fromJson(json['nanomp4']) : null;
    mp4 = json['mp4'] != null ? Nanomp4.fromJson(json['mp4']) : null;
    loopedmp4 = json['loopedmp4'] != null
        ? Nanomp4.fromJson(json['loopedmp4'])
        : null;
    tinygif =
    json['tinygif'] != null ? Nanogif.fromJson(json['tinygif']) : null;
    tinymp4 =
    json['tinymp4'] != null ? Nanomp4.fromJson(json['tinymp4']) : null;
    nanowebm = json['nanowebm'] != null
        ? Nanogif.fromJson(json['nanowebm'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (nanogif != null) {
      data['nanogif'] = nanogif!.toJson();
    }
    if (mediumgif != null) {
      data['mediumgif'] = mediumgif!.toJson();
    }
    if (tinywebm != null) {
      data['tinywebm'] = tinywebm!.toJson();
    }
    if (webm != null) {
      data['webm'] = webm!.toJson();
    }
    if (gif != null) {
      data['gif'] = gif!.toJson();
    }
    if (nanomp4 != null) {
      data['nanomp4'] = nanomp4!.toJson();
    }
    if (mp4 != null) {
      data['mp4'] = mp4!.toJson();
    }
    if (loopedmp4 != null) {
      data['loopedmp4'] = loopedmp4!.toJson();
    }
    if (tinygif != null) {
      data['tinygif'] = tinygif!.toJson();
    }
    if (tinymp4 != null) {
      data['tinymp4'] = tinymp4!.toJson();
    }
    if (nanowebm != null) {
      data['nanowebm'] = nanowebm!.toJson();
    }
    return data;
  }
}

class Nanogif {
  String? url;
  int? size;
  String? preview;
  List<int>? dims;

  Nanogif({this.url, this.size, this.preview, this.dims});

  Nanogif.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    size = json['size'];
    preview = json['preview'];
    dims = json['dims'].cast<int>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['url'] = url;
    data['size'] = size;
    data['preview'] = preview;
    data['dims'] = dims;
    return data;
  }
}

class Nanomp4 {
  int? size;
  String? preview;
  String? url;
  double? duration;
  List<int>? dims;

  Nanomp4({this.size, this.preview, this.url, this.duration, this.dims});

  Nanomp4.fromJson(Map<String, dynamic> json) {
    size = json['size'];
    preview = json['preview'];
    url = json['url'];
    duration = json['duration'];
    dims = json['dims'].cast<int>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['size'] = size;
    data['preview'] = preview;
    data['url'] = url;
    data['duration'] = duration;
    data['dims'] = dims;
    return data;
  }
}
*/
class DataResponse {
  List<Results>? results;
  String? next;

  DataResponse({this.results, this.next});

  DataResponse.fromJson(Map<String, dynamic> json) {
    if (json['results'] != null) {
      results = <Results>[];
      json['results'].forEach((v) {
        results!.add(Results.fromJson(v));
      });
    }
    next = json['next'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (this.results != null) {
      data['results'] = this.results!.map((v) => v.toJson()).toList();
    }
    data['next'] = this.next;
    return data;
  }
}

class Results {
  String? id;
  String? title;
  String? contentDescription;
  String? contentRating;
  String? h1Title;
  List<Media>? media;
  String? bgColor;
  double? created;
  String? itemurl;
  String? url;
  int? shares;
  bool? hasaudio;
  bool? hascaption;
  String? sourceId;
  Null? composite;

  Results(
      {this.id,
        this.title,
        this.contentDescription,
        this.contentRating,
        this.h1Title,
        this.media,
        this.bgColor,
        this.created,
        this.itemurl,
        this.url,
        this.shares,
        this.hasaudio,
        this.hascaption,
        this.sourceId,
        this.composite});

  Results.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    contentDescription = json['content_description'];
    contentRating = json['content_rating'];
    h1Title = json['h1_title'];
    if (json['media'] != null) {
      media = <Media>[];
      json['media'].forEach((v) {
        media!.add(Media.fromJson(v));
      });
    }
    bgColor = json['bg_color'];
    created = json['created'];
    itemurl = json['itemurl'];
    url = json['url'];
    shares = json['shares'];
    hasaudio = json['hasaudio'];
    hascaption = json['hascaption'];
    sourceId = json['source_id'];
    composite = json['composite'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['content_description'] = this.contentDescription;
    data['content_rating'] = this.contentRating;
    data['h1_title'] = this.h1Title;
    if (this.media != null) {
      data['media'] = this.media!.map((v) => v.toJson()).toList();
    }
    data['bg_color'] = this.bgColor;
    data['created'] = this.created;
    data['itemurl'] = this.itemurl;
    data['url'] = this.url;
    data['shares'] = this.shares;
    data['hasaudio'] = this.hasaudio;
    data['hascaption'] = this.hascaption;
    data['source_id'] = this.sourceId;
    data['composite'] = this.composite;
    return data;
  }
}

class Media {
  Tinymp4? tinymp4;
  Gif? gif;
  Gif? nanogif;
  Tinymp4? loopedmp4;
  Tinymp4? mp4;
  Tinymp4? nanomp4;
  Gif? mediumgif;
  Gif? webm;
  Gif? tinywebm;
  Gif? tinygif;
  Gif? nanowebm;

  Media(
      {this.tinymp4,
        this.gif,
        this.nanogif,
        this.loopedmp4,
        this.mp4,
        this.nanomp4,
        this.mediumgif,
        this.webm,
        this.tinywebm,
        this.tinygif,
        this.nanowebm});

  Media.fromJson(Map<String, dynamic> json) {
    tinymp4 =
    json['tinymp4'] != null ? Tinymp4.fromJson(json['tinymp4']) : null;
    gif = json['gif'] != null ? Gif.fromJson(json['gif']) : null;
    nanogif =
    json['nanogif'] != null ? Gif.fromJson(json['nanogif']) : null;
    loopedmp4 = json['loopedmp4'] != null
        ? Tinymp4.fromJson(json['loopedmp4'])
        : null;
    mp4 = json['mp4'] != null ? Tinymp4.fromJson(json['mp4']) : null;
    nanomp4 =
    json['nanomp4'] != null ? Tinymp4.fromJson(json['nanomp4']) : null;
    mediumgif =
    json['mediumgif'] != null ? Gif.fromJson(json['mediumgif']) : null;
    webm = json['webm'] != null ? Gif.fromJson(json['webm']) : null;
    tinywebm =
    json['tinywebm'] != null ? Gif.fromJson(json['tinywebm']) : null;
    tinygif =
    json['tinygif'] != null ? Gif.fromJson(json['tinygif']) : null;
    nanowebm =
    json['nanowebm'] != null ? Gif.fromJson(json['nanowebm']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (this.tinymp4 != null) {
      data['tinymp4'] = this.tinymp4!.toJson();
    }
    if (this.gif != null) {
      data['gif'] = this.gif!.toJson();
    }
    if (this.nanogif != null) {
      data['nanogif'] = this.nanogif!.toJson();
    }
    if (this.loopedmp4 != null) {
      data['loopedmp4'] = this.loopedmp4!.toJson();
    }
    if (this.mp4 != null) {
      data['mp4'] = this.mp4!.toJson();
    }
    if (this.nanomp4 != null) {
      data['nanomp4'] = this.nanomp4!.toJson();
    }
    if (this.mediumgif != null) {
      data['mediumgif'] = this.mediumgif!.toJson();
    }
    if (this.webm != null) {
      data['webm'] = this.webm!.toJson();
    }
    if (this.tinywebm != null) {
      data['tinywebm'] = this.tinywebm!.toJson();
    }
    if (this.tinygif != null) {
      data['tinygif'] = this.tinygif!.toJson();
    }
    if (this.nanowebm != null) {
      data['nanowebm'] = this.nanowebm!.toJson();
    }
    return data;
  }
}

class Tinymp4 {
  String? url;
  String? preview;
 dynamic duration;
  List<int>? dims;
  int? size;

  Tinymp4({this.url, this.preview, this.duration, this.dims, this.size});

  Tinymp4.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    preview = json['preview'];
    duration = json['duration'];
    dims = json['dims'].cast<int>();
    size = json['size'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['url'] = this.url;
    data['preview'] = this.preview;
    data['duration'] = this.duration;
    data['dims'] = this.dims;
    data['size'] = this.size;
    return data;
  }
}

class Gif {
  List<int>? dims;
  String? preview;
  int? size;
  String? url;

  Gif({this.dims, this.preview, this.size, this.url});

  Gif.fromJson(Map<String, dynamic> json) {
    dims = json['dims'].cast<int>();
    preview = json['preview'];
    size = json['size'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['dims'] = this.dims;
    data['preview'] = this.preview;
    data['size'] = this.size;
    data['url'] = this.url;
    return data;
  }
}
