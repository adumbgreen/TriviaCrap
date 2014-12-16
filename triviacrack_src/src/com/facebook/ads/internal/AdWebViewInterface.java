// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.ads.internal;

import android.util.Log;

// Referenced classes of package com.facebook.ads.internal:
//            AdAnalogData, AdUtilities

public class AdWebViewInterface
{

    private static final String TAG = com/facebook/ads/internal/AdWebViewInterface.getSimpleName();

    public AdWebViewInterface()
    {
    }

    public void alert(String s)
    {
        Log.e(TAG, s);
    }

    public String getAnalogInfo()
    {
        return AdUtilities.jsonEncode(AdAnalogData.getAnalogInfo());
    }

}
