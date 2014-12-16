// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;


// Referenced classes of package com.mopub.mobileads:
//            ac, MoPubConversionTracker

class aa
    implements com.mopub.common.GpsHelper.GpsHelperListener
{

    final MoPubConversionTracker a;

    aa(MoPubConversionTracker mopubconversiontracker)
    {
        a = mopubconversiontracker;
        super();
    }

    public void onFetchAdInfoCompleted()
    {
        (new Thread(new ac(a, null))).start();
    }
}
