

import 'package:flutter/widgets.dart';

typedef Widget ChildBuild(BuildContext context, Widget child);
typedef ChildBuildMiddleware = ChildBuild Function(ChildBuild childBuild);

class Chain {

  final ChildBuild _build;

  Chain([ChildBuild build]):
    _build = build ?? ((_, child) => child);

  Widget build(BuildContext context, [Widget child]) => 
    this._build(context, child);

  Chain apply(ChildBuildMiddleware middleware) {
    final newBuild = middleware(this._build);
    return Chain(newBuild);
  }

  Chain add(ChildBuild build) {
    return this.apply((source) => (context, child) => 
      source(context, build(context, child))
    );
  }
}
