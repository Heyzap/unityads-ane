# Unity Ads ANE

A thin wrapper around the [Unity Ads](https://unityads.unity3d.com/) Android and iOS SDK for use on Heyzap's mediation.

The latest release can be found in [Releases](https://github.com/Heyzap/unityads-ane/releases).

Pull requests and issues are welcome.

#### Adding to your project

* Add the `UnityAds.ane` to your Adobe Flex Builder or Adobe Flash project.
* If on Android, follow the [integration instructions on Heyzap](https://developers.heyzap.com/docs/ane_setup_and_requirements#unityads) or add the following permissions and activities to your Android Manifest in your application descriptor:
 
`<uses-permission android:name="android.permission.ACCESS_NETWORK_STATE" />
<uses-permission android:name="android.permission.INTERNET" />
<uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE" />`

`<activity android:name="com.unity3d.ads.android.view.UnityAdsFullscreenActivity" android:configChanges="fontScale|keyboard|keyboardHidden|locale|mnc|mcc|navigation|orientation|screenLayout|screenSize|smallestScreenSize|uiMode|touchscreen" android:hardwareAccelerated="true" />`

* If not done automatically, add the follow extension context to your application descriptor:
```
<extensions>
    <extensionID>com.heyzap.sdk.extensions.unityads</extensionID>
</extensions>
```

#### Building

Build Requirements:
* Mac OS X
* XCode

From the root of the folder, run `./build.sh`.

After build completes, the native extension will be in `bin/UnityAds.ane`.
