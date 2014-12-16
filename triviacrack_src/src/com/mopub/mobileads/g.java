// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;


// Referenced classes of package com.mopub.mobileads:
//            AdViewController

class g
    implements com.mopub.common.GpsHelper.GpsHelperListener
{

    final AdViewController a;

    g(AdViewController adviewcontroller)
    {
        a = adviewcontroller;
        super();
    }

    public void onFetchAdInfoCompleted()
    {
        String s = a.l();
        a.a(s);
    }
}
