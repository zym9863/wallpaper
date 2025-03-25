import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../models/wallpaper_model.dart';

class WallpaperDetailScreen extends StatefulWidget {
  final WallpaperModel wallpaper;

  const WallpaperDetailScreen({super.key, required this.wallpaper});

  @override
  State<WallpaperDetailScreen> createState() => _WallpaperDetailScreenState();
}

class _WallpaperDetailScreenState extends State<WallpaperDetailScreen> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('壁纸详情'),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Stack(
        children: [
          // 壁纸图片
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 壁纸图片
                Hero(
                  tag: widget.wallpaper.id.toString(),
                  child: CachedNetworkImage(
                    imageUrl: widget.wallpaper.largeImageURL,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    placeholder: (context, url) => Container(
                      height: 300,
                      color: Colors.grey[300],
                      child: const Center(
                        child: CircularProgressIndicator(),
                      ),
                    ),
                    errorWidget: (context, url, error) => const Icon(Icons.error),
                  ),
                ),
                // 壁纸信息
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '作者: ${widget.wallpaper.user}',
                        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      Text('标签: ${widget.wallpaper.tags}'),
                      const SizedBox(height: 8),
                      Text('浏览量: ${widget.wallpaper.views}'),
                      const SizedBox(height: 8),
                      Text('下载量: ${widget.wallpaper.downloads}'),
                      const SizedBox(height: 8),
                      Text('喜欢数: ${widget.wallpaper.likes}'),
                    ],
                  ),
                ),
              ],
            ),
          ),

        ],
      ),

    );
  }
}