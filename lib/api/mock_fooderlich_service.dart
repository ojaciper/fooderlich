import 'dart:convert';

import 'package:flutter/services.dart';

import '../models/model.dart';

class MockFooderlichService {
  Future<ExploreData> getExploreData() async {
    final todayRecipes = await _getTodayRecipes();
    final friendPosts = await _getFriendFeed();
    return ExploreData(todayRecipes, friendPosts);
  }

  Future<List<ExploreRecipe>> _getTodayRecipes() async {
// Simulate api request wait  time
    await Future.delayed(const Duration(milliseconds: 1000));
// load json  from file system
    final dataString =
        await _loadAsset('assets/sampledata/sample_explore_recipes.json');
// decode to json
    final Map<String, dynamic> json = jsonDecode(dataString);

// Go through each recipes and convert json to ExploreRecipe object
    if (json['recipes'] != null) {
      final recipes = <ExploreRecipe>[];
      json['recipes'].forEach((v) {
        recipes.add(ExploreRecipe.fromJson(v));
      });
      return recipes;
    }
    {
      return [];
    }
  }

  // Get the sample friend json post to display in ui
  Future<List<Post>> _getFriendFeed() async {
    // Simulate api request wait time
    await Future.delayed(const Duration(milliseconds: 1000));
    // load json from file syslem
    final dataString =
        await _loadAsset('assets/sampledata/sample_friends_feed.json');
    // Decode to json
    final Map<String, dynamic> json = jsonDecode(dataString);

    // go throug each post and  convert json to post object.
    if (json["feed"] != null) {
      final post = <Post>[];
      json['feed'].forEach((v) {
        post.add(Post.fromjson(v));
      });
      return post;
    } else {
      return [];
    }
  }

  // Get the sample recipe json to display in ui
  Future<List<SimpleRecipe>> getRecipes() async {
    // Simulate api request wait time
    await Future.delayed(const Duration(milliseconds: 1000));
    // load json from file system
    final dataString =
        await _loadAsset('assets/sampledata/sample_recipes.json');
    // Decode to json
    final Map<String, dynamic> json = jsonDecode(dataString);

    // Go through each recipe and convert json to SimpleRecipe Object.
    if (json['recipes'] != null) {
      final recipes = <SimpleRecipe>[];
      json['recipes'].forEach((v) {
        recipes.add(SimpleRecipe.fromjson(v));
      });
      return recipes;
    } else {
      return [];
    }
  }

  Future<String> _loadAsset(String path) async {
    return rootBundle.loadString(path);
  }
}
