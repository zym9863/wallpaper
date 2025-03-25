# Wallpaper App

中文 | [English](README_EN.md)

一个使用Flutter开发的壁纸应用，通过Pixabay API获取高质量壁纸。

## 功能特点

- 浏览高质量壁纸
- 按类别筛选壁纸（自然、动物、建筑等20个分类）
- 搜索特定壁纸
- 查看壁纸详情（作者、标签、浏览量等）
- 美观的瀑布流布局展示

## 技术栈

- Flutter SDK ^3.7.2
- 状态管理：Flutter原生setState
- API：Pixabay API

## 主要依赖

- http: ^1.1.0 - 网络请求
- cached_network_image: ^3.3.0 - 图片缓存
- flutter_staggered_grid_view: ^0.7.0 - 瀑布流布局
- flutter_dotenv: ^5.1.0 - 环境变量管理

## 项目结构

```
lib/
  ├── main.dart              # 应用入口
  ├── models/                # 数据模型
  │   └── wallpaper_model.dart
  ├── screens/               # 页面
  │   ├── home_screen.dart
  │   └── wallpaper_detail_screen.dart
  └── services/              # 服务
      └── api_service.dart
```

## 环境配置

1. 创建`.env`文件在项目根目录
2. 在`.env`文件中添加Pixabay API密钥：
   ```
   PIXABAY_API_KEY=your_api_key_here
   ```

## 开始使用

1. 克隆项目
2. 运行 `flutter pub get` 安装依赖
3. 配置`.env`文件
4. 运行 `flutter run` 启动应用

## 注意事项

- 需要Pixabay API密钥才能正常获取壁纸数据
- 应用仅支持竖屏模式
