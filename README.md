# Unity Ads ANE

A thin wrapper around the [Unity Ads](https://unityads.unity3d.com/) Android and iOS SDK for use on Heyzap's mediation.

The latest release can be found in [Releases](https://github.com/Heyzap/unityads-ane/releases).

Pull requests and issues are welcome.

#### Unity Ads Versions
- iOS: 1.4.5
- Android: 1.45

#### Adding to your project

- Add the `UnityAds.ane` to your Adobe Flex Builder or Adobe Flash project.
- If on Android, follow the [integration instructions on Heyzap](https://developers.heyzap.com/docs/ane_setup_and_requirements#step-3-modify-your-application-descriptor) or add the following permissions and activities to your Android Manifest in your application descriptor:
	
	```xml
	<uses-permission android:name="android.permission.ACCESS_NETWORK_STATE" />
	<uses-permission android:name="android.permission.INTERNET" />
	<uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE" />
	```

	```xml
	<activity android:name="com.unity3d.ads.android.view.UnityAdsFullscreenActivity" android:configChanges="fontScale|keyboard|keyboardHidden|locale|mnc|mcc|navigation|orientation|screenLayout|screenSize|smallestScreenSize|uiMode|touchscreen" android:hardwareAccelerated="true" />
	```

- If not done automatically, add the follow extension context to your application descriptor:

	```xml
	<extensions>
	    <extensionID>com.heyzap.sdk.extensions.unityads</extensionID>
	</extensions>
	```

#### Updating Unity Ads
**For iOS**:
- Replace `UnityAds.framework` and `UnityAds.bundle` in `ios/Vendor` with a newer version.
- Update `ios/platform.xml` with any new iOS frameworks that the newer version might be dependent on. Built-in iOS SDK frameworks can be added within the _linkerOptions_ tag. Custom iOS frameworks can be added under the _packagedDependencies_ tag and their respective `.framework` directories can be added to `ios/Vendor`. Drag and drop these `.framework` directories into the `UnityAdsANE.xcodeproj` project in XCode under the _Vendor_ group.

**For Android**:
- Replace `unity-ads.jar` in `android/libs` with a newer version.
- Update `android/platform.xml` with any new android libraries that the newer version might be dependent on. Android libraries can be added under the _packagedDependencies_ tag. The actual `.jar` files can be added to the `andorid/libs` directory.

After making the necessary modifications, build the new ANE by following the [building](#building) instructions below.

#### Building

##### Requirements:
- Mac OS X
- XCode
- [Apache Ant](http://ant.apache.org/)
- [AIR SDK](http://www.adobe.com/devnet/air/air-sdk-download.html)

##### Building:
- Add the path to your AIR SDK in `build.config` (under `air.sdk`)
- From the root of the repository, run `ant`.

After build completes, the native extension will be in `bin/UnityAds.ane`.
