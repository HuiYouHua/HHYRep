# HHYRep

[![CI Status](https://img.shields.io/travis/793316968@qq.com/HHYRep.svg?style=flat)](https://travis-ci.org/793316968@qq.com/HHYRep)
[![Version](https://img.shields.io/cocoapods/v/HHYRep.svg?style=flat)](https://cocoapods.org/pods/HHYRep)
[![License](https://img.shields.io/cocoapods/l/HHYRep.svg?style=flat)](https://cocoapods.org/pods/HHYRep)
[![Platform](https://img.shields.io/cocoapods/p/HHYRep.svg?style=flat)](https://cocoapods.org/pods/HHYRep)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

HHYRep is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'HHYRep'
```

## Author

793316968@qq.com, 793316968@qq.com

## License

HHYRep is available under the MIT license. See the LICENSE file for more info.


>  准备看看iOS的组件化，这里需要使用到Cocopods进行建立仓库，所以学习了下后，就准备记录一下，方便以后自己进行操作。
>
> ​首先呢，肯定是要安装Cocopods的，这里我们就不多说了

## 一、创建远程仓库和工程
####1. 进入[github](https://github.com )创建一个项目，如图：

![Snip20181128_9.png](https://upload-images.jianshu.io/upload_images/2202576-47a5d316bedf4fe8.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

这里的证书最好选择为MIT，不然后面可能有些小问题
    创建完成：

![Snip20181128_10.png](https://upload-images.jianshu.io/upload_images/2202576-5b64c166ef98029a.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

这里我创建的项目叫[HHYRep](https://github.com/HuiYouHua/HHYRep)

####2. 创建项目
打开终端，cd到桌面
输入命令**pod lib create HHYRep**，这里是通过pod创建一个项目，如下：

![Snip20181128_11.png](https://upload-images.jianshu.io/upload_images/2202576-c44fbffe028ee769.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

这里会让你回答几个问题：
- 你要使用哪个平台？ iOS
- 你要使用哪种语言？ ObjC
- 是否要使用示例？ YES
- 使用哪个测试框架？ None
- 是否要UI测试？ No
- 类名前缀是啥？ HHY

回答完毕后就会创建工程，执行完自动打开工程，目录结构如下：

![Snip20181128_12.png](https://upload-images.jianshu.io/upload_images/2202576-d5ba873050a8cabd.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

其中Example就是我们的示例工程，HHYReq就是我们存放仓库代码的位置，里面默认创建有Assets和Classes两个文件夹，我们的代码文件就放在Classes里，图片资源文件可以放在Assets里。
另外还有生成的License证书和REAME文件。
其中比较重要的一个文件是HHYRep.podspec，这是我们关联远程仓库的一个配置文件，稍后我们将在里面进行部分修改。

####3. 放入代码和资源文件

![Snip20181128_15.png](https://upload-images.jianshu.io/upload_images/2202576-23ecf16bd735f7e0.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

加入代码文件，注意这里不要勾选target。

![Snip20181128_17.png](https://upload-images.jianshu.io/upload_images/2202576-6418af72b201df7e.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

![Snip20181128_18.png](https://upload-images.jianshu.io/upload_images/2202576-982a45754b71c9d2.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

这里我添加了TimerHelper和UITableViewHelper两个文件，注意前面是有文件夹分层，如果需要在后续拉取后有文件层级关系，需要进行额外配置，后面有具体介绍。
  目录结构如下：

![Snip20181128_16.png](https://upload-images.jianshu.io/upload_images/2202576-6811bdd8bc658222.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

另外，因为我们这里是创建了示例工程的，所以如果当你添加文件或者删除文件后，需要进入到Podfile同级目录下进行pod install，才可以引用引入的文件。

![Snip20181128_19.png](https://upload-images.jianshu.io/upload_images/2202576-3c9c727e358047b1.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

####4. 提交代码到刚刚创建的远程仓库
```
 ~/Desktop/HHYRep   master ●  git remote add origin https://github.com/HuiYouHua/HHYRep.git
 ~/Desktop/HHYRep   master ●  git add .
 ~/Desktop/HHYRep   master ✚  git commit -m -a
 ~/Desktop/HHYRep   master  git push
 ~/Desktop/HHYRep   master  git push -u origin 
 ~/Desktop/HHYRep   master  git tag 0.0.1
 ~/Desktop/HHYRep   master  git push origin 0.0.1
```
提交项目并打上版本号0.0.1，保持和HHYRep.podspec上的一致
这里提交除了点问题，但问题不大。
提交完之后，查看github上的工程目录如下:

![Snip20181128_20.png](https://upload-images.jianshu.io/upload_images/2202576-969134fd29cacb14.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

##二、关联仓库
####1. 配置HHYRep.podspec文件
```
#
#  Be sure to run `pod spec lint HHYLib.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #
  # 项目名称
  s.name         = "HHYRep"
  # 项目版本号
  s.version      = "0.0.1"
  # 项目摘要
  s.summary      = "HHYRep"

  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  # 详细描述
  s.description  = "HHYRep远程仓库"

  # 仓库主页地址
  s.homepage     = "https://github.com/HuiYouHua/HHYRep"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"


  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Licensing your code is important. See http://choosealicense.com for more info.
  #  CocoaPods will detect a license file if there is a named LICENSE*
  #  Popular ones are 'MIT', 'BSD' and 'Apache License, Version 2.0'.
  #

  # s.license      = "MIT (example)"
  # 证书
  s.license      = { :type => "MIT", :file => "LICENSE" }


  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the authors of the library, with email addresses. Email addresses
  #  of the authors are extracted from the SCM log. E.g. $ git log. CocoaPods also
  #  accepts just a name if you'd rather not provide an email address.
  #
  #  Specify a social_media_url where others can refer to, for example a twitter
  #  profile URL.
  #
  # 作者名称邮箱地址
  s.author             = { "华惠友" => "793316968@qq.com" }
  # Or just: s.author    = "华惠友"
  # s.authors            = { "华惠友" => "793316968@qq.com" }
  # s.social_media_url   = "http://twitter.com/华惠友"

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If this Pod runs only on iOS or OS X, then specify the platform and
  #  the deployment target. You can optionally include the target after the platform.
  #

  # s.platform     = :ios
  # 平台版本号
  s.platform     = :ios, "8.0"

  #  When using multiple platforms
  # s.ios.deployment_target = "5.0"
  # s.osx.deployment_target = "10.7"
  # s.watchos.deployment_target = "2.0"
  # s.tvos.deployment_target = "9.0"


  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the location from where the source should be retrieved.
  #  Supports git, hg, bzr, svn and HTTP.
  #
  # git源码地址
  s.source       = { :git => "https://github.com/HuiYouHua/HHYRep.git", :tag => "#{s.version}" }


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  CocoaPods is smart about how it includes source code. For source files
  #  giving a folder will include any swift, h, m, mm, c & cpp files.
  #  For header files it will include any header in the folder.
  #  Not including the public_header_files will make all headers public.
  #

  # 不分层的话就可以直接按照下面的写法
  # s.source_files  = "Classes", "Classes/**/*.{h,m}"
  # s.exclude_files = "Classes/**/*.h"

  # 代码文件
  # 分层文件夹
  s.subspec 'TimerHelper' do |t|
	t.subspec 'GCD' do |gcd|
	  gcd.source_files = 'HHYRep/Classes/TimerHelper/GCD/**/*.{h,m}'
	  # gcd.public_header_files = 'Classes/TimerHelper/GCD/**/*.h'
  	end

  	t.subspec 'NSTimer' do |nst|
	  nst.source_files = 'HHYRep/Classes/TimerHelper/NSTimer/**/*.{h,m}'
	  # nst.public_header_files = 'Classes/TimerHelper/NSTimer/**/*.h'
  	end
  end

  s.subspec 'UITableVIewHelper' do |uit|
	  uit.source_files = 'HHYRep/Classes/UITableVIewHelper/**/*.{h,m}'
	  # gcd.public_header_files = 'Classes/TimerHelper/GCD/**/*.h'
  end


 

  # s.public_header_files = "Classes/**/*.h"


  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  A list of resources included with the Pod. These are copied into the
  #  target bundle with a build phase script. Anything else will be cleaned.
  #  You can preserve files from being cleaned, please don't preserve
  #  non-essential files like tests, examples and documentation.
  #

  # 图片资源
  # s.resource  = "icon.png"
  s.resources = "HHYRep/Resource/*.png"

  # s.preserve_paths = "FilesToSave", "MoreFilesToSave"


  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Link your library with frameworks, or libraries. Libraries do not include
  #  the lib prefix of their name.
  #

  # s.framework  = "Foundation"
  # s.frameworks = "SomeFramework", "AnotherFramework"

  # s.library   = "iconv"
  # s.libraries = "iconv", "xml2"


  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.

  s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "JSONKit", "~> 1.4"

end

```

注意这里面我进行的代码的分层，如果不分层的话则可以按照下面的写法：
```
# 不分层的话就可以直接按照下面的写法
  # s.source_files  = "Classes", "Classes/**/*.{h,m}"
  # s.exclude_files = "Classes/**/*.h"
```

####2. 提交HHYRep.podspec到官方Specs Repo上
添加我们的配置文件到官方的配置文件库中，将库进行关联方面后面我们进行查找。
首先我们需要验证我们的配置文件有没有通过验证
```
 ~/Desktop/HHYRep   master ●  pod lib lint --allow-warnings
HHYRep passed validation.
```
这里我们加了--allow-warnings，为的是让警告也通过验证，不然过不了验证。这里出现passed validation.表示我们通过了验证，下面我们就可以提交文件到git官方仓库了
但之前我们需要查看是否有注册过Cocoapods账号。

####3. 验证Cocopods账号
######1）终端输入**pod trunk me**
这里是还没有注册账号：

![查看是否注册Cocopods邮箱.png](https://upload-images.jianshu.io/upload_images/2202576-ed44ca12a5de5705.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

######2）注册账号：
终端输入**pod trunk me register 邮箱地址 '用户名' --description='描述信息'**

![注册Cocopods账号.png](https://upload-images.jianshu.io/upload_images/2202576-93bf6a07e9c0aba7.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

######3）验证邮箱账号：
![验证Cocopods账号.png](https://upload-images.jianshu.io/upload_images/2202576-eab6ab578adac3ff.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

######4）再次查看

![Snip20181128_21.png](https://upload-images.jianshu.io/upload_images/2202576-d5c8348ad4b2a05d.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

这里显示我得账号信息以及我拥有的Pods

####4. 上传HHYRep.podspec
终端输入**pod trunk push HHYRep.podspec --allow-warnings**

![Snip20181128_22.png](https://upload-images.jianshu.io/upload_images/2202576-9726bf4e57de7db3.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

上传成功会出现如上页面。
到这，我们建立Cocopods远程仓库就完成了。

我们可以用终端去搜索我们建的仓库
```
 ~/Desktop/HHYRep   master ●  pod search HHYRep
[!] Unable to find a pod with name, author, summary, or description matching `HHYRep`
```
这里我们进行搜索的时候发现没搜索到，是因为有缓存，删掉就好了
终端输入**rm ~/Library/Caches/CocoaPods/search_index.json**，再次进行搜索，结构如下：
```
Common.h:12:78: warning: this block declaration is not a prototype [-Wstrict-pro
-> HHYRep (0.0.1)
   HHYRep
   pod 'HHYRep', '~> 0.0.1'
   - Homepage: https://github.com/HuiYouHua/HHYRep
   - Source:   https://github.com/HuiYouHua/HHYRep.git
   - Versions: 0.0.1 [master repo]
   - Subspecs:
     - HHYRep/TimerHelper (0.0.1)
     - HHYRep/TimerHelper/GCD (0.0.1)
     - HHYRep/TimerHelper/NSTimer (0.0.1)
     - HHYRep/UITableVIewHelper (0.0.1)
(END)
```

###三、版本更新
###1.修改.podspec文件中的版本号
```
  # 项目版本号
  s.version      = "0.0.1"
```
###2. 对项目进行更新
对项目进行代码的更改，同时也要**pod install**一下，更新工程到github上。
> ###上传到github
> git add .
> git commit -m -a
> git push
> ###打tag值，跟版本号一致
> git tag '0.0.2'
> git push --tags
> ###验证podspec文件并提交
> pod spec lint --allow-warnings
> pod trunk push HHYRep.podspec --allow-warnings
> ###查找
> pod search HHYRep

![Snip20181128_23.png](https://upload-images.jianshu.io/upload_images/2202576-01e00e658cab5a80.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

###四、测试
新建CocopodsDemo工程测试
```
 ~/Desktop/CocopodsDemo  pod init
 ~/Desktop/CocopodsDemo  touch podfile
 ~/Desktop/CocopodsDemo  vi Podfile
 ~/Desktop/CocopodsDemo  pod install
```
新建文件podfile
```
platform:ios,'8.0'
target 'CocopodsDemo' do
    
    #source 'https://github.com/CocoaPods/Specs.git'
    #source 'https://github.com/HuiYouHua/HHYPodspec.git'
    
pod 'AFNetworking', '~>3.1.0' 
pod 'HHYRep', '~> 0.0.2'
end

```
文件目录

![Snip20181128_24.png](https://upload-images.jianshu.io/upload_images/2202576-01f751139abfa2b9.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

其中显示有层级目录，写法可以参照[AFNetworking.podspec](https://github.com/AFNetworking/AFNetworking/blob/master/AFNetworking.podspec)

###五、建立自己的Specs索引仓库
这种的也就是建立私有的远程仓库了
我们先了解下Specs和Specs Repo、Code和Code Repo。
github上把仓库都叫Repo，所以这四个分别对应的就是
>Specs：本地的索引仓库
>Specs Repo：github官方的索引仓库
> 这两者存放的都是podsepc文件，里面记录了某个仓库的名称、描述、作者、版本、地址等等。索引仓库中每个项目都是以独立的文件夹的形式存放的，每个项目如果有不同的版本，那么不同的版本也会以独立的文件夹形式存放。
>
>Code：本地的代码仓库
>Code Repo：github上的代码仓库

####1. 建立索引仓库
进入github上创建索引仓库，创建方式跟创建代码仓库差不多。

![Snip20181128_25.png](https://upload-images.jianshu.io/upload_images/2202576-60e6c992ac6b9814.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

####2. 将本地索引仓库和远程索引仓库关联
######1）首先查看本机中存在索引仓库：
终端输入：**pod repo**
```
 ~  pod repo

master
- Type: git (master)
- URL:  https://github.com/CocoaPods/Specs.git
- Path: /Users/huahuiyou/.cocoapods/repos/master

1 repo
 ```
这里展示的是本机中存在的索引仓库，其中master指的就是官方的索引仓库，我们在访达中进入~/.cocoapods/repos文件夹可以查看到。
######2.关联仓库
终端输入**pod repo add 本机仓库名称 远程索引仓库地址**
```
 ~  pod repo add HHYSpecs https://github.com/HuiYouHua/HHYSpecs.git
Cloning spec repo `HHYSpecs` from `https://github.com/HuiYouHua/HHYSpecs.git`
 ~  pod repo

HHYSpecs
- Type: git (master)
- URL:  https://github.com/HuiYouHua/HHYSpecs.git
- Path: /Users/huahuiyou/.cocoapods/repos/HHYSpecs

master
- Type: git (master)
- URL:  https://github.com/CocoaPods/Specs.git
- Path: /Users/huahuiyou/.cocoapods/repos/master

2 repos
 ~ 
```
再次查看可以看到，多了一个自己命名的索引仓库

######3. 将.podspec文件上传到索引仓库
```
~/Desktop/HHYRep   master  pod repo push HHYSpecs HHYRep.podspec --allow-warnings
```
######4. 查看索引仓库
远程索引仓库

![Snip20181128_26.png](https://upload-images.jianshu.io/upload_images/2202576-559dca1bd13ce298.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

本机索引仓库

![Snip20181128_27.png](https://upload-images.jianshu.io/upload_images/2202576-b6b332b77e20e0d7.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

5. 拉取仓库
```
platform:ios,'8.0'
target 'test' do
    
    # 官方的索引仓库，这里是用来引入AFNetworking的
    source 'https://github.com/CocoaPods/Specs.git'
    # 自己的索引仓库，这里是引入HHYRep
    source 'https://github.com/HuiYouHua/HHYPodspec.git'
    
pod 'AFNetworking', '~>3.1.0' 
pod 'HHYRep', '~> 0.0.6'
end

```
另外当官方索引仓库和私有仓库都有索引的话，会出现冲突，所以删掉一个或者指明引用对象即可。

综上就是Cocopods的共有仓库和私有仓库的搭建。
