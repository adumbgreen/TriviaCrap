// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;


// Referenced classes of package com.mopub.mobileads:
//            MraidBanner, MraidView

class a
    implements dListener
{

    final MraidBanner a;

    public void onClose(MraidView mraidview, State state)
    {
        MraidBanner.e(a);
    }

    public void onExpand(MraidView mraidview)
    {
        MraidBanner.c(a);
    }

    public void onFailure(MraidView mraidview)
    {
        MraidBanner.b(a);
    }

    public void onOpen(MraidView mraidview)
    {
        MraidBanner.d(a);
    }

    public void onReady(MraidView mraidview)
    {
        MraidBanner.a(a);
    }

    State(MraidBanner mraidbanner)
    {
        a = mraidbanner;
        super();
    }
}
