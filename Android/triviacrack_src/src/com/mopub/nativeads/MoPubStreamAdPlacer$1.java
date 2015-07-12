// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.nativeads;


// Referenced classes of package com.mopub.nativeads:
//            MoPubStreamAdPlacer

class a
    implements Runnable
{

    final MoPubStreamAdPlacer a;

    public void run()
    {
        if (!MoPubStreamAdPlacer.a(a))
        {
            return;
        } else
        {
            MoPubStreamAdPlacer.b(a);
            MoPubStreamAdPlacer.a(a, false);
            return;
        }
    }

    (MoPubStreamAdPlacer mopubstreamadplacer)
    {
        a = mopubstreamadplacer;
        super();
    }
}
