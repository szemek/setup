## Tips

### Customizing the login screen wallpaper

Replace `/Library/Caches/com.apple.desktop.admin.png`

Source: [How to Customize the Login Screen Wallpaper in OS X El Capitan](http://osxdaily.com/2015/11/02/customize-login-screen-wallpaper-os-x-el-capitan/)

### Disable red icon for System Preferences

```
defaults write com.apple.systempreferences AttentionPrefBundleIDs 0
killall Dock
```
