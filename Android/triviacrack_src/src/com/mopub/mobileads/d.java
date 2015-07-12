// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;

import java.lang.ref.WeakReference;
import java.util.Map;

// Referenced classes of package com.mopub.mobileads:
//            c, AdViewController, MoPubView

class d extends c
{

    private Map b;

    public d(AdViewController adviewcontroller, Map map)
    {
        super(adviewcontroller);
        b = map;
    }

    void a()
    {
        AdViewController adviewcontroller = (AdViewController)a.get();
        if (adviewcontroller == null || adviewcontroller.e())
        {
            return;
        } else
        {
            adviewcontroller.a();
            adviewcontroller.getMoPubView().a(b);
            return;
        }
    }

    void b()
    {
        b = null;
    }
}
