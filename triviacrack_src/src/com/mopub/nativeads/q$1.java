// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.nativeads;


// Referenced classes of package com.mopub.nativeads:
//            q, NativeErrorCode

class a
    implements omEventNative.ImageListener
{

    final q a;

    public void onImagesCached()
    {
        q.a(a).onNativeAdLoaded(a);
    }

    public void onImagesFailedToCache(NativeErrorCode nativeerrorcode)
    {
        q.a(a).onNativeAdFailed(nativeerrorcode);
    }

    veErrorCode(q q1)
    {
        a = q1;
        super();
    }
}
