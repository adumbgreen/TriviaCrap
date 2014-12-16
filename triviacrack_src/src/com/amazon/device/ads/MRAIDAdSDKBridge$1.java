// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;


// Referenced classes of package com.amazon.device.ads:
//            PreloadCallback, MRAIDAdSDKBridge, AdControlAccessor, ExpandProperties

class val.expandProperties
    implements PreloadCallback
{

    final MRAIDAdSDKBridge this$0;
    final ExpandProperties val$expandProperties;

    public void onPreloadComplete(String s)
    {
        MRAIDAdSDKBridge.access$2000(MRAIDAdSDKBridge.this).injectJavascriptPreload("mraidBridge.stateChange('expanded');");
        MRAIDAdSDKBridge.access$2000(MRAIDAdSDKBridge.this).injectJavascriptPreload("mraidBridge.ready();");
        expandAd(val$expandProperties, s);
    }

    ()
    {
        this$0 = final_mraidadsdkbridge;
        val$expandProperties = ExpandProperties.this;
        super();
    }
}
