// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.nativeads;


// Referenced classes of package com.mopub.nativeads:
//            MoPubNativeAdLoadedListener, MoPubAdAdapter

class a
    implements MoPubNativeAdLoadedListener
{

    final MoPubAdAdapter a;

    public void onAdLoaded(int i)
    {
        a.a(i);
    }

    public void onAdRemoved(int i)
    {
        a.b(i);
    }

    edListener(MoPubAdAdapter mopubadadapter)
    {
        a = mopubadadapter;
        super();
    }
}
