// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;


// Referenced classes of package com.millennialmedia.android:
//            MMWebView, HandShake

class b
    implements Runnable
{

    final String a;
    final String b;
    final MMWebView c;

    public void run()
    {
        if (HandShake.a(c.getContext()).e)
        {
            c.c();
        } else
        if (c.i == 0)
        {
            c.b();
        } else
        {
            c.a();
        }
        c.d = true;
        c.loadDataWithBaseURL(a, b, "text/html", "UTF-8", null);
    }

    (MMWebView mmwebview, String s, String s1)
    {
        c = mmwebview;
        a = s;
        b = s1;
        super();
    }
}
