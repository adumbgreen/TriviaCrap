// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.nativeads;


// Referenced classes of package com.mopub.nativeads:
//            MoPubNative, RequestParameters

class r
    implements com.mopub.common.GpsHelper.GpsHelperListener
{

    final MoPubNative a;
    private final RequestParameters b;
    private final Integer c;

    r(MoPubNative mopubnative, RequestParameters requestparameters, Integer integer)
    {
        a = mopubnative;
        super();
        b = requestparameters;
        c = integer;
    }

    public void onFetchAdInfoCompleted()
    {
        MoPubNative.a(a, b, c);
    }
}
