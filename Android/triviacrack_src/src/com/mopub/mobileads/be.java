// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;


class be
{

    private MraidView.MraidListener a;
    private MraidView.OnCloseButtonStateChangeListener b;

    be()
    {
    }

    static MraidView.MraidListener a(be be1)
    {
        return be1.a;
    }

    static MraidView.MraidListener a(be be1, MraidView.MraidListener mraidlistener)
    {
        be1.a = mraidlistener;
        return mraidlistener;
    }

    static MraidView.OnCloseButtonStateChangeListener a(be be1, MraidView.OnCloseButtonStateChangeListener onclosebuttonstatechangelistener)
    {
        be1.b = onclosebuttonstatechangelistener;
        return onclosebuttonstatechangelistener;
    }

    static MraidView.OnCloseButtonStateChangeListener b(be be1)
    {
        return be1.b;
    }
}
