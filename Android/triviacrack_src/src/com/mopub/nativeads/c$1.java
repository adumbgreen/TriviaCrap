// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.nativeads;


// Referenced classes of package com.mopub.nativeads:
//            c

class a
    implements Runnable
{

    final tioningSource.PositioningListener a;
    final c b;

    public void run()
    {
        a.onLoad(c.a(b));
    }

    gListener(c c1, tioningSource.PositioningListener positioninglistener)
    {
        b = c1;
        a = positioninglistener;
        super();
    }
}
