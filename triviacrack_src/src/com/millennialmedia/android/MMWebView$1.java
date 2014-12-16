// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;


// Referenced classes of package com.millennialmedia.android:
//            MMWebView, HandShake, MMAdImpl, MMLayout

class c
    implements Runnable
{

    final MMAdImpl a;
    final String b;
    final String c;
    final MMWebView d;

    public void run()
    {
        MMAd mmad;
        if (HandShake.a(d.getContext()).e)
        {
            d.c();
        } else
        if (d.i == 0)
        {
            d.b();
        } else
        {
            d.a();
        }
        mmad = a.d();
        if (mmad != null && (mmad instanceof MMLayout))
        {
            ((MMLayout)mmad).m();
        }
        d.d = true;
        d.loadDataWithBaseURL(b, c, "text/html", "UTF-8", null);
    }

    (MMWebView mmwebview, MMAdImpl mmadimpl, String s, String s1)
    {
        d = mmwebview;
        a = mmadimpl;
        b = s;
        c = s1;
        super();
    }
}
