package com.heyzap.sdk.extensions.unityads;

import com.adobe.fre.FREContext;
import com.adobe.fre.FREExtension;

public class UnityAdsLib
  implements FREExtension
{
  public FREContext createContext(String args)
  {
    return new UnityAdsLibContext();
  }

  public void dispose() {}

  public void initialize() {}
}