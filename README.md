<div align=center>
  <img width="500" height="250" src="https://github.com/LittleHeap/iOSCourse/blob/master/demo.GIF"/>
</div>

# iOSCourse
- [UILabel](#uilabel)
- [UIButton](#uibutton)
- [UIView](#uiview)
- [UIWindow](#uiwindow)
- [UIViewController](#uiviewcontroller)
- [NSTimer](#nstimer)
- [UISwitch](#uiswitch)
- [UISlider and UIProgressView](#uislider-and-uiprogressview)
- [UIStepper and UISegmentedControl](#uistepper-and-uisegmentedcontrol)
- [UIAlertView and UIActivityIndicatorView](#uialertview-and-uiactivityindicatorview)
- [UITextField](#uitextfield)
- [简易登录界面](#简易登录界面)
- [UIScrollView](#uiscrollview)
- [UITouch](#uitouch)
- [UIGesture](#uigesture)
- [UINavigation](#navigation)
- [UITabBarController](#uitabbarcontroller)
- [PhotoWall :fire:](#photowall-fire)
- [UIPickerView](#uipickerview)
- [多界面传值](#多界面传值)
- [UITableView](#uitableview)
- [JSON数据解析](#json数据解析)
- [XML数据解析](#xml数据解析)
- [MusicPlayer](#musicplayer)
- [SDWebImage](#sdwebimage)
- [VideoPlayer](#videoplayer)
- [UIViewAnimation](#uiviewanimation)
- [导航器动画效果](#导航器动画效果)
- [SQLite数据库](#sqlite数据库)
- [NSUserDefaults](#nsuserdefaults)
## UILabel
#### Github地址：[https://github.com/LittleHeap/iOSCourse_UILabel](https://github.com/LittleHeap/iOSCourse_UILabel)
#### Demo简介：全面实现UILabel的基础属性，包括初始化，设置文字颜色，阴影，阴影偏移，文字换行，居中。
#### Demo效果：
![](https://github.com/LittleHeap/iOSCourse_UILabel/blob/master/UILabelUITests/demo.png)
<br>
## UIButton
#### Github地址：[https://github.com/LittleHeap/iOSCourse_UIButton](https://github.com/LittleHeap/iOSCourse_UIButton)
#### Demo简介：主要演示了如何初始化UIButton，更改按钮风格，让按钮对触发的不同情况回馈不同效果，以及给按钮添加图片，不同按钮通过tag值调用同一个有参函数。
#### Demo效果：
![](https://github.com/LittleHeap/iOSCourse_UIButton/blob/master/UIButtonUITests/demo.gif)
<br>
## UIView
#### Github地址：[https://github.com/LittleHeap/iOSCourse_UIView](https://github.com/LittleHeap/iOSCourse_UIView)
#### Demo简介：通过创建三个UIView并初始化不同背景的方式，呈现了UIView的创建层级关系，以及如何更改透明度，最终可以实现通过UIWindow调用下标控制整个UIView序列中所有的内容。
#### Demo效果：
![](https://github.com/LittleHeap/iOSCourse_UIView/blob/master/UIViewUITests/image.png)
<br>
## UIWindow
#### Github地址：[https://github.com/LittleHeap/iOSCourse_UIWindow](https://github.com/LittleHeap/iOSCourse_UIWindow)
#### Demo简介：取消原本的storyboard依赖，自定义创建一个UIWindow并初始化根视图控制器。额外再创建一个UIView图形，并添加到UIWindow上呈现出效果。
#### Demo效果：
![](https://github.com/LittleHeap/iOSCourse_UIWindow/blob/master/UIWindowUITests/demo.png)
<br>
## UIViewController
#### Github地址：[https://github.com/LittleHeap/iOSCourse_UIViewController](https://github.com/LittleHeap/iOSCourse_UIViewController)
#### Demo简介：取消原本的storyboard依赖，自定义创建一个UIWindow并初始化根视图控制器。在第一个视图控制器中创建点击事件，点击视图控制器部分跳转至另一个视图控制器，然而点击UIView部分无效。在第二个视图控制器中添加点击事件，点击空白处后当前视图控制器弹出栈，回到第一个视图控制器。同时实现了多个协议函数。
#### Demo效果：
![](https://github.com/LittleHeap/iOSCourse_UIViewController/blob/master/UIViewControllerUITests/demo.gif)
<br>
## NSTimer
#### Github地址：[https://github.com/LittleHeap/iOSCourse_NSTimer](https://github.com/LittleHeap/iOSCourse_NSTimer)
#### Demo简介：实现对定时器NSTimer的使用。效果通过控制一个UIView方块的位置实现，定时器运行，方块则根据时间更改位置坐标，定时器停止，则通知停止更新方块位置坐标。
#### Demo效果：
![](https://github.com/LittleHeap/iOSCourse_NSTimer/blob/master/定时器和视图对象UITests/demo01.gif)
<br>
## UISwitch
#### Github地址：[https://github.com/LittleHeap/iOSCourse_UISwitch](https://github.com/LittleHeap/iOSCourse_UISwitch)
#### Demo简介：实现iOS一个常用控件UISwitch，对外观进行处理并添加了触发事件。
#### Demo效果：
![](https://github.com/LittleHeap/iOSCourse_UISwitch/blob/master/UISwitchUITests/demo.gif)
<br>
## UISlider and UIProgressView
#### Github地址：[https://github.com/LittleHeap/iOSCourse_UISlider_UIProgressView](https://github.com/LittleHeap/iOSCourse_UISlider_UIProgressView)
#### Demo简介：实现滑动条和进度条显示，对外观进行处理，并对滑动条添加了输出事件。前者是主动使用，后者是被动触发。
#### Demo效果：
![](https://github.com/LittleHeap/iOSCourse_UISlider_UIProgressView/blob/master/UISlider%26UIProgressUITests/demo.gif)
<br>
## UIStepper and UISegmentedControl
#### Github地址：[https://github.com/LittleHeap/iOSCourse_UIStepper_UISegmentedControl](https://github.com/LittleHeap/iOSCourse_UIStepper_UISegmentedControl)
#### Demo简介：实现步进器和分栏器，步进器在控制台输出步进值，每次加5或减5，上限100，下限0。分栏器实现三种价格的选择，以及添加触发事件识别所选价格。
#### Demo效果：
![](https://github.com/LittleHeap/iOSCourse_UIStepper_UISegmentedControl/blob/master/UIStepper%26UISegmentedControlUITests/demo.gif)
<br>
## UIAlertView and UIActivityIndicatorView
#### Github地址：[https://github.com/LittleHeap/iOSCourse_UIAlertView_UIActivityIndicatorView](https://github.com/LittleHeap/iOSCourse_UIAlertView_UIActivityIndicatorView)
#### Demo简介：实现警告对话框和等待提示器。对警告提示框进行相应文字赋值并对选项进行事件处理，和等待提示器的显示和消失。
#### Demo效果：
![](https://github.com/LittleHeap/iOSCourse_UIAlertView_UIActivityIndicatorView/blob/master/UIAlertView%26UIActivityIndicatorViewUITests/demo.gif)
<br>
## UITextField
#### Github地址：[https://github.com/LittleHeap/iOSCourse_UITextField](https://github.com/LittleHeap/iOSCourse_UITextField)
#### Demo简介：实现文本输入框UITextField，并初始化提示文字，通过调用协议函数，实现收缩键盘，点击空白处收回键盘。
#### Demo效果：
![](https://github.com/LittleHeap/iOSCourse_UITextField/blob/master/UITextFieldUITests/demo.gif)
<br>
## 简易登录界面
#### Github地址：[https://github.com/LittleHeap/iOSCourse_SimpleLoginInterface](https://github.com/LittleHeap/iOSCourse_SimpleLoginInterface)
#### Demo简介：通过使用UITextField实现一个简单的登录界面，注册和验证。默认用户名密码是Tom和123。
#### Demo效果：
![](https://github.com/LittleHeap/iOSCourse_SimpleLoginInterface/blob/master/SimpleLoginInterfaceUITests/demo.gif)
<br>
## UIScrollView
#### Github地址：[https://github.com/LittleHeap/iOSCourse_UIScrollView](https://github.com/LittleHeap/iOSCourse_UIScrollView)
#### Demo简介：通过UIScrollView实现照片墙的滚动浏览效果，期间可以添加各种滚动视图限定，以及点击底部实现回到首页功能。
#### Demo效果：
![](https://github.com/LittleHeap/iOSCourse_UIScrollView/blob/master/UIScrollViewUITests/demo.gif)
<br>
## UITouch
#### Github地址：[https://github.com/LittleHeap/iOSCourse_UITouch](https://github.com/LittleHeap/iOSCourse_UITouch)
#### Demo简介：通过UITouch实现对用户触摸屏幕的捕获，进而通过移动一个图片展示效果，控制台有具体数据输出情况。
#### Demo效果：
![](https://github.com/LittleHeap/iOSCourse_UITouch/blob/master/UITouchUITests/demo.gif)
<br>
## UIGesture
#### Github地址：[https://github.com/LittleHeap/iOSCourse_UIGesture](https://github.com/LittleHeap/iOSCourse_UIGesture)
#### Demo简介：通过UIGesture实现对一张图片的放大缩小以及旋转，即多点触发手势。
#### Demo效果：
![](https://github.com/LittleHeap/iOSCourse_UIGesture/blob/master/UIGestureUITests/demo.gif)
<br>
## Navigation
#### Github地址：[https://github.com/LittleHeap/iOSCourse_Navigation](https://github.com/LittleHeap/iOSCourse_Navigation)
#### Demo简介：iOS常用的源生导航栏框架，以一个根视图为基准，采用栈的概念实现界面的切换。
#### Demo效果：
![](https://github.com/LittleHeap/iOSCourse_Navigation/blob/master/NavigationUITests/show.gif)
<br>
## UITabBarController
#### Github地址：[https://github.com/LittleHeap/iOSCourse_UITabBarController](https://github.com/LittleHeap/iOSCourse_UITabBarController)
#### Demo简介：分栏控制器，在很多app中使用到的底部标签控制容器，类似微信QQ的底部实现。
#### Demo效果：
![](https://github.com/LittleHeap/iOSCourse_UITabBarController/blob/master/UITabBarControllerUITests/demo.gif)
<br>
## PhotoWall :fire:
#### Github地址：[https://github.com/LittleHeap/iOSCourse_PhotoWall](https://github.com/LittleHeap/iOSCourse_PhotoWall)
#### Demo简介：实现一个简单的照片墙案例，以滚动视图为基础框架，加载内置图片文件，以导航形式在点击图片时放大图片。
#### Demo效果：
![](https://github.com/LittleHeap/iOSCourse_PhotoWall/blob/master/PhotoWallUITests/demo.gif)
<br>
## UIPickerView
#### Github地址：[https://github.com/LittleHeap/iOSCourse_UIPickerView](https://github.com/LittleHeap/iOSCourse_UIPickerView)
#### Demo简介：实现一种iOS常见的源生选择器，类似我们常见的选择时间的一种场景。
#### Demo效果：
![](https://github.com/LittleHeap/iOSCourse_UIPickerView/blob/master/UIPickerViewUITests/demo.gif)
<br>
## 多界面传值
#### GitHub地址：[https://github.com/LittleHeap/iOSCourse_DelegateProtocol](https://github.com/LittleHeap/iOSCourse_DelegateProtocol)
#### Demo简介：通过使用自定义iOS代理协议，实现多界面之间的传值。例如Demo中在视图②中点击按钮，可以更改视图①中背景颜色。
#### Demo效果：
![](https://github.com/LittleHeap/iOSCourse_DelegateProtocol/blob/master/多界面传值UITests/demo.gif)
<br>
## UITableView
#### GitHub地址：[https://github.com/LittleHeap/iOSCourse_UITableView](https://github.com/LittleHeap/iOSCourse_UITableView)
#### Demo简介：苹果官方源生的一种名为TableView的目录框架，类似各大社交app中通讯录的实现效果。
#### Demo效果：
![](https://github.com/LittleHeap/iOSCourse_UITableView/blob/master/UITableViewUITests/demo.gif)
<br>
## JSON数据解析
#### GitHub地址：[https://github.com/LittleHeap/iOSCourse_JSON](https://github.com/LittleHeap/iOSCourse_JSON)
#### Demo简介：对一个城市天气预报JSON文件进行简单的数据处理，提取，并显示在一个数据视图上。
#### Demo效果：
![](https://github.com/LittleHeap/iOSCourse_JSON/blob/master/JSONUITests/image.png)
<br>
## XML数据解析
#### GitHub地址：[https://github.com/LittleHeap/iOSCourse_XML](https://github.com/LittleHeap/iOSCourse_XML)
#### Demo简介：对一个食物计划XML文件进行简单的数据处理，提取，并显示在一个数据视图上。
#### Demo效果：
![](https://github.com/LittleHeap/iOSCourse_XML/blob/master/XMLUITests/demo.png)
<br>
## MusicPlayer
#### GitHub地址：[https://github.com/LittleHeap/iOSCourse_MusicPlayer](https://github.com/LittleHeap/iOSCourse_MusicPlayer)
#### Demo简介：使用iOS源生音频播放组件，对一个本地mp3文件进行播放，暂停，重新开始操作，以及同时通过一个进度条和滑动条分别显示音乐播放进度和控制音量
#### Demo效果：
![](https://github.com/LittleHeap/iOSCourse_MusicPlayer/blob/master/音频播放UITests/demo.gif)
<br>
## SDWebImage
#### GitHub地址：[https://github.com/LittleHeap/iOSCourse_SDWebImage](https://github.com/LittleHeap/iOSCourse_SDWebImage)
#### Demo简介：使用第三方SDWebImage库进行网络图片数据的下载与解析，好处是它已经封装好缓存功能，相同URL地址图片在程序中只缓存一次。Demo中以下载豆瓣图书类别检索字典为例，点击Load会加载响应类别图书，并将名称作者以及相应图片加载到一个TableView中。
#### Demo效果：
![](https://github.com/LittleHeap/iOSCourse_SDWebImage/blob/master/SDWebImageUITests/demo.gif)
<br>
## VideoPlayer
#### GitHub地址：[https://github.com/LittleHeap/iOSCourse_VideoPlayer](https://github.com/LittleHeap/iOSCourse_VideoPlayer)
#### Demo简介：使用苹果源生视频播放组件，通过解析一个网络视频URL地址，用两种方式实现在一个视图控制器中播放视频。
#### Demo效果：
![](https://github.com/LittleHeap/iOSCourse_VideoPlayer/blob/master/VideoPlayerUITests/demo.gif)
<br>
## UIViewAnimation
#### GitHub地址：[https://github.com/LittleHeap/iOSCourse_UIViewAnimation](https://github.com/LittleHeap/iOSCourse_UIViewAnimation)
#### Demo简介：通过UIView属性简单实现一个视图图片的位移和缩放，以及随之改变的透明度。
#### Demo效果：
![](https://github.com/LittleHeap/iOSCourse_UIViewAnimation/blob/master/UIViewAnimationUITests/demo.gif)
<br>
## 导航器动画效果
#### GitHub地址：[https://github.com/LittleHeap/iOSCourse_NavigationAnimation](https://github.com/LittleHeap/iOSCourse_NavigationAnimation)
#### Demo简介：实现导航栏内视图切换的动画效果，Demo中展示了其中两种，水波纹切换和立体翻转。
#### Demo效果：
![](https://github.com/LittleHeap/iOSCourse_NavigationAnimation/blob/master/NavigationAnimationUITests/demo.gif)
<br>
## SQLite数据库
#### GitHub地址：[https://github.com/LittleHeap/iOSCourse_SQLite](https://github.com/LittleHeap/iOSCourse_SQLite)
#### Demo简介：针对SQLite数据库，如何进行创建数据库，打开数据库，建表，插入数据，查找数据和删除数据。
#### Demo效果：
![](https://github.com/LittleHeap/iOSCourse_SQLite/blob/master/SQLiteUITests/demo.png)
<br>
## NSUserDefaults
#### Github地址：[https://github.com/LittleHeap/iOSCourse_NSUserDefaults](https://github.com/LittleHeap/iOSCourse_NSUserDefaults)
#### Demo简介：一种iOS原生用来简洁存储文件级数据的功能，以全局键值对的形式。

