// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.nativeads;

import android.os.Handler;

// Referenced classes of package com.mopub.nativeads:
//            PositioningSource, MoPubNativeAdPositioning

class c
    implements PositioningSource
{

    private Handler a;
    private final MoPubNativeAdPositioning.MoPubClientPositioning b;

    c(MoPubNativeAdPositioning.MoPubClientPositioning mopubclientpositioning)
    {
        a = new Handler();
        b = MoPubNativeAdPositioning.a(mopubclientpositioning);
    }

    static MoPubNativeAdPositioning.MoPubClientPositioning a(c c1)
    {
        return c1.b;
    }

    public void loadPositions(String s, PositioningSource.PositioningListener positioninglistener)
    {
        a.post(new Runnable(positioninglistener) {

            final PositioningSource.PositioningListener a;
            final c b;

            public void run()
            {
                a.onLoad(c.a(b));
            }

            
            {
                b = c.this;
                a = positioninglistener;
                super();
            }
        });
    }
}
