Ruby Sketchup Helpers
=====================

*Fixing the broken ecosystem that is Ruby Sketchup development on Mac OS X, one step at a time.*



Helpers
--------------------------

+ __load_path__: Allows you to load gems just by typing `require 'gem_name'`, as well as non-core Ruby modules like `require 'securerandom'`. __Install__ by copying to your plugins directory.



Assumptions
--------------------------

These helpers make a lot of assumptions. They assume:

+ You have installed [rvm](https://rvm.io/rvm/install/)
+ You have used rvm to install Ruby 1.8.7.
+ You have set up Sketchup to use Ruby 1.8.7 using the following commands (adapted from [this StackOverflow thread][so]):
  + `cd /Applications/Google\ SketchUp\ 8/SketchUp.app/Contents/Frameworks/Ruby.framework/Versions/Current`
  + `ln -s  /System/Library/Frameworks/Ruby.framework/Headers`
  + `ln -fs /System/Library/Frameworks/Ruby.framework/Ruby`

It might all work fine with Ruby 1.8.5, but they have only been run on 1.8.7.

[so]: http://stackoverflow.com/questions/3333163/how-to-update-ruby-in-google-sketchup



Your Plugins Directory
--------------------------

To find your plugins folder, from the Ruby Console in Sketchup, run:
`Sketchup.find_support_file("Plugins")`



Development & Contributing
--------------------------

These helpers were written on Mac OS X 10.7 running Sketchup 8.

If you would like to contribute a helper or test these out in other environments, feel free to contribute.