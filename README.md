# Unity Ads ANE

A thin wrapper around the [Unity Ads](https://unityads.unity3d.com/) Android and iOS SDK for use on Heyzap's mediation.

The latest release can be found in [Releases](https://github.com/Heyzap/unityads-ane/releases).

Pull requests and issues are welcome.

#### Unity Ads Versions
- iOS: 2.1.0
- Android: 2.1.0

#### Adding to your project

- Add the `UnityAds.ane` to your Adobe Flex Builder or Adobe Flash project.
- If on Android, follow the [integration instructions on Heyzap](https://developers.heyzap.com/docs/ane_setup_and_requirements#step-3-modify-your-application-descriptor) or add the following permissions and activities to your Android Manifest in your application descriptor:
	
	```xml
	<uses-permission android:name="android.permission.ACCESS_NETWORK_STATE" />
	<uses-permission android:name="android.permission.INTERNET" />
	```

	```xml
	<activity android:name="com.unity3d.ads.adunit.AdUnitActivity" android:configChanges="fontScale|keyboard|keyboardHidden|locale|mnc|mcc|navigation|orientation|screenLayout|screenSize|smallestScreenSize|uiMode|touchscreen" android:hardwareAccelerated="true"
	android:theme="@android:style/Theme.NoTitleBar.Fullscreen" />

	<activity android:name="com.unity3d.ads.adunit.AdUnitSoftwareActivity" android:configChanges="fontScale|keyboard|keyboardHidden|locale|mnc|mcc|navigation|orientation|screenLayout|screenSize|smallestScreenSize|uiMode|touchscreen" android:hardwareAccelerated="false"
	android:theme="@android:style/Theme.NoTitleBar.Fullscreen" />
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

New versions of Unity Ads contain new .AAR archive. Just unpack it as zip file and add classes.jar file to `android/libs` directory. Rename it to `unityads.jar`.

Copy all resources to `src-resources` folder. They will be automatically added to the build.

#### Building

##### Requirements:
- Mac OS X
- XCode
- [Apache Ant](http://ant.apache.org/)
- [AIR SDK](http://www.adobe.com/devnet/air/air-sdk-download.html)

##### Building:
- Make a `build.config` by copying `build.config.dist` (your local config file)
- Change the path to the AIR SDK in `build.config` (named `air.sdk`)
- From the root of the repository, run `ant`.

After build completes, the native extension will be in `bin/UnityAds.ane`.
