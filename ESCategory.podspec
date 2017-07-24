#
#  Be sure to run `pod spec lint ESCategory.podspec' to ensure this is a
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

  s.name         = "ESCategory"
  s.version      = "0.0.2"
  s.summary      = "some category for iOS"

  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  s.description  = <<-DESC
                      improve efficiency for ios develop
                   DESC

  s.homepage     = "https://github.com/EverydayStep"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"


  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Licensing your code is important. See http://choosealicense.com for more info.
  #  CocoaPods will detect a license file if there is a named LICENSE*
  #  Popular ones are 'MIT', 'BSD' and 'Apache License, Version 2.0'.
  #

  # s.license      = "MIT (example)"
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

  s.author             = { "codeLocker" => "codeLockers@outlook.com" }
  # Or just: s.author    = "codeLocker"
  # s.authors            = { "codeLocker" => "codeLockers@outlook.com" }
  # s.social_media_url   = "http://twitter.com/codeLocker"

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If this Pod runs only on iOS or OS X, then specify the platform and
  #  the deployment target. You can optionally include the target after the platform.
  #

  # s.platform     = :ios
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

  s.source       = { :git => "https://github.com/EverydayStep/ESCategory.git", :tag => "#{s.version}" }


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  CocoaPods is smart about how it includes source code. For source files
  #  giving a folder will include any swift, h, m, mm, c & cpp files.
  #  For header files it will include any header in the folder.
  #  Not including the public_header_files will make all headers public.
  #

  # s.source_files  = "ESCategory/NSArray/*.{h,m}"
    s.subspec 'NSArray' do |nsarray|
      nsarray.source_files = "ESCategory/NSArray/*.{h,m}"
    end
    s.subspec 'NSAttributedString' do |nsattributedstring|
      nsattributedstring.source_files = "ESCategory/NSAttributedString/*.{h,m}"
    end
    s.subspec 'UIColor' do |uicolor|
      uicolor.source_files = "ESCategory/UIColor/*.{h,m}"
    end
    s.subspec 'NSDate' do |nsdate|
      nsdate.source_files = "ESCategory/NSDate/*.{h,m}"
    end
    s.subspec 'NSData' do |nsdata|
      nsdata.source_files = "ESCategory/NSData/*.{h,m}"
    end
    s.subspec 'NSDictionary' do |nsdictionary|
      nsdictionary.source_files = "ESCategory/NSDictionary/*.{h,m}"
    end
    s.subspec 'UIView' do |uiview|
      uiview.source_files = "ESCategory/UIView/*.{h,m}"
    end
    s.subspec 'UINavigationController' do |uinavigationController|
      uinavigationController.source_files = "ESCategory/UINavigationController/*.{h,m}"
    end
    s.subspec 'UIImage' do |uiimage|
      uiimage.source_files = "ESCategory/UIImage/*.{h,m}"
    end
    s.subspec 'NSString' do |nsstring|
      nsstring.source_files = "ESCategory/NSString/*.{h,m}"
    end
    s.subspec 'UIDevice' do |uidevice|
      uidevice.source_files = "ESCategory/UIDevice/*.{h,m}"
    end
    s.subspec 'UITextField' do |uitextField|
      uitextField.source_files = "ESCategory/UITextField/*.{h,m}"
    end
    s.subspec 'NSBundle' do |nsbundle|
      nsbundle.source_files = "ESCategory/NSBundle/*.{h,m}"
    end
    s.subspec 'NSUserDefaults' do |nsuserDefaults|
      nsuserDefaults.source_files = "ESCategory/NSUserDefaults/*.{h,m}"
    end
    s.subspec 'UIApplication' do |uiaplication|
      uiaplication.source_files = "ESCategory/UIApplication/*.{h,m}"
    end
    s.subspec 'UIScreen' do |uiscreen|
      uiscreen.source_files = "ESCategory/UIScreen/*.{h,m}"
    end
  # s.exclude_files = "Classes/Exclude"

  # s.public_header_files = "Classes/**/*.h"


  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  A list of resources included with the Pod. These are copied into the
  #  target bundle with a build phase script. Anything else will be cleaned.
  #  You can preserve files from being cleaned, please don't preserve
  #  non-essential files like tests, examples and documentation.
  #

  # s.resource  = "icon.png"
  # s.resources = "Resources/*.png"

  # s.preserve_paths = "FilesToSave", "MoreFilesToSave"


  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Link your library with frameworks, or libraries. Libraries do not include
  #  the lib prefix of their name.
  #

  # s.framework  = "SomeFramework"
  # s.frameworks = "SomeFramework", "AnotherFramework"
  s.frameworks = "UIKit", "Foundation"
  # s.library   = "iconv"
  # s.libraries = "iconv", "xml2"


  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.

  # s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  s.dependency "ESUtils", "0.0.2"

end
