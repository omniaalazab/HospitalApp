class doctorModel {
  List<Item>? item;

  doctorModel({this.item});

  doctorModel.fromJson(Map<String, dynamic> json) {
    if (json['item'] != null) {
      item = <Item>[];
      json['item'].forEach((v) {
        item!.add(new Item.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.item != null) {
      data['item'] = this.item!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Item {
  String? name;
  Request? request;
  List<Response>? response;

  Item({this.name, this.request, this.response});

  Item.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    request =
        json['request'] != null ? new Request.fromJson(json['request']) : null;
    if (json['response'] != null) {
      response = <Response>[];
      json['response'].forEach((v) {
        response!.add(new Response.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    if (this.request != null) {
      data['request'] = this.request!.toJson();
    }
    if (this.response != null) {
      data['response'] = this.response!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Request {
  String? method;
  List<Null>? header;
  Body? body;
  Url? url;
  Auth? auth;

  Request({this.method, this.header, this.body, this.url, this.auth});

  Request.fromJson(Map<String, dynamic> json) {
    method = json['method'];
    if (json['header'] != null) {
      header = <Null>[];
      json['header'].forEach((v) {
        header!.add(new Null.fromJson(v));
      });
    }
    body = json['body'] != null ? new Body.fromJson(json['body']) : null;
    url = json['url'] != null ? new Url.fromJson(json['url']) : null;
    auth = json['auth'] != null ? new Auth.fromJson(json['auth']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['method'] = this.method;
    if (this.header != null) {
      data['header'] = this.header!.map((v) => v.toJson()).toList();
    }
    if (this.body != null) {
      data['body'] = this.body!.toJson();
    }
    if (this.url != null) {
      data['url'] = this.url!.toJson();
    }
    if (this.auth != null) {
      data['auth'] = this.auth!.toJson();
    }
    return data;
  }
}

class Body {
  String? mode;
  String? raw;
  Options? options;

  Body({this.mode, this.raw, this.options});

  Body.fromJson(Map<String, dynamic> json) {
    mode = json['mode'];
    raw = json['raw'];
    options =
        json['options'] != null ? new Options.fromJson(json['options']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['mode'] = this.mode;
    data['raw'] = this.raw;
    if (this.options != null) {
      data['options'] = this.options!.toJson();
    }
    return data;
  }
}

class Options {
  Raw? raw;

  Options({this.raw});

  Options.fromJson(Map<String, dynamic> json) {
    raw = json['raw'] != null ? new Raw.fromJson(json['raw']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.raw != null) {
      data['raw'] = this.raw!.toJson();
    }
    return data;
  }
}

class Raw {
  String? language;

  Raw({this.language});

  Raw.fromJson(Map<String, dynamic> json) {
    language = json['language'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['language'] = this.language;
    return data;
  }
}

class Url {
  String? raw;
  String? protocol;
  List<String>? host;
  String? port;
  List<String>? path;

  Url({this.raw, this.protocol, this.host, this.port, this.path});

  Url.fromJson(Map<String, dynamic> json) {
    raw = json['raw'];
    protocol = json['protocol'];
    host = json['host'].cast<String>();
    port = json['port'];
    path = json['path'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['raw'] = this.raw;
    data['protocol'] = this.protocol;
    data['host'] = this.host;
    data['port'] = this.port;
    data['path'] = this.path;
    return data;
  }
}

class Auth {
  String? type;
  List<Bearer>? bearer;

  Auth({this.type, this.bearer});

  Auth.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    if (json['bearer'] != null) {
      bearer = <Bearer>[];
      json['bearer'].forEach((v) {
        bearer!.add(new Bearer.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    if (this.bearer != null) {
      data['bearer'] = this.bearer!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Bearer {
  String? key;
  String? value;
  String? type;

  Bearer({this.key, this.value, this.type});

  Bearer.fromJson(Map<String, dynamic> json) {
    key = json['key'];
    value = json['value'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['key'] = this.key;
    data['value'] = this.value;
    data['type'] = this.type;
    return data;
  }
}

class Response {
  String? name;
  OriginalRequest? originalRequest;
  String? status;
  int? code;
  String? sPostmanPreviewlanguage;
  List<Header>? header;
  List<Null>? cookie;
  String? body;

  Response(
      {this.name,
      this.originalRequest,
      this.status,
      this.code,
      this.sPostmanPreviewlanguage,
      this.header,
      this.cookie,
      this.body});

  Response.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    originalRequest = json['originalRequest'] != null
        ? new OriginalRequest.fromJson(json['originalRequest'])
        : null;
    status = json['status'];
    code = json['code'];
    sPostmanPreviewlanguage = json['_postman_previewlanguage'];
    if (json['header'] != null) {
      header = <Header>[];
      json['header'].forEach((v) {
        header!.add(new Header.fromJson(v));
      });
    }
    if (json['cookie'] != null) {
      cookie = <Null>[];
      json['cookie'].forEach((v) {
        cookie!.add(new Null.fromJson(v));
      });
    }
    body = json['body'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    if (this.originalRequest != null) {
      data['originalRequest'] = this.originalRequest!.toJson();
    }
    data['status'] = this.status;
    data['code'] = this.code;
    data['_postman_previewlanguage'] = this.sPostmanPreviewlanguage;
    if (this.header != null) {
      data['header'] = this.header!.map((v) => v.toJson()).toList();
    }
    if (this.cookie != null) {
      data['cookie'] = this.cookie!.map((v) => v.toJson).toList();
    }
    data['body'] = this.body;
    return data;
  }
}

class OriginalRequest {
  String? method;
  List<Null>? header;
  Url? url;
  Body? body;

  OriginalRequest({this.method, this.header, this.url, this.body});

  OriginalRequest.fromJson(Map<String, dynamic> json) {
    method = json['method'];
    if (json['header'] != null) {
      header = <Null>[];
      json['header'].forEach((v) {
        header!.add(new Null.fromJson(v));
      });
    }
    url = json['url'] != null ? new Url.fromJson(json['url']) : null;
    body = json['body'] != null ? new Body.fromJson(json['body']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['method'] = this.method;
    if (this.header != null) {
      data['header'] = this.header!.map((v) => v.toJson()).toList();
    }
    if (this.url != null) {
      data['url'] = this.url!.toJson();
    }
    if (this.body != null) {
      data['body'] = this.body!.toJson();
    }
    return data;
  }
}

class Header {
  String? key;
  String? value;

  Header({this.key, this.value});

  Header.fromJson(Map<String, dynamic> json) {
    key = json['key'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['key'] = this.key;
    data['value'] = this.value;
    return data;
  }
}
