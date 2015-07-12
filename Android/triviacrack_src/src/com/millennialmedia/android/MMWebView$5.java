// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;


// Referenced classes of package com.millennialmedia.android:
//            MMWebView, MMSDK, MMAdView

class a
    implements Runnable
{

    final MMAdView a;
    final MMWebView b;

    void a()
    {
        if (MMSDK.c() && !MMWebView.a(b))
        {
            android.view.youtParams youtparams = b.getLayoutParams();
            youtparams.width = b.l;
            youtparams.height = b.k;
            b.l = -50;
            b.k = -50;
            b.requestLayout();
        }
    }

    public void run()
    {
        synchronized (b)
        {
            a.a();
            a();
            b.n();
            b.d = true;
            b.invalidate();
        }
        return;
        exception;
        mmwebview;
        JVM INSTR monitorexit ;
        throw exception;
    }

    (MMWebView mmwebview, MMAdView mmadview)
    {
        b = mmwebview;
        a = mmadview;
        super();
    }
}
