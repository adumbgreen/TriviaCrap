// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;

import android.content.Context;
import android.content.Intent;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.VideoView;
import com.mopub.common.logging.MoPubLog;

// Referenced classes of package com.mopub.mobileads:
//            n, p

abstract class m
{

    private final Context a;
    private final RelativeLayout b;
    private final n c;
    private long d;

    m(Context context, long l, n n1)
    {
        a = context.getApplicationContext();
        d = l;
        c = n1;
        b = new RelativeLayout(a);
    }

    void a()
    {
        android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(-1, -2);
        layoutparams.addRule(13);
        b.addView(b(), 0, layoutparams);
        c.onSetContentView(b);
    }

    void a(int k, int l, Intent intent)
    {
    }

    void a(String s)
    {
        p.a(a, d, s);
    }

    void a(boolean flag)
    {
        MoPubLog.d("Error: video can not be played.");
        a("com.mopub.action.interstitial.fail");
        if (flag)
        {
            c.onFinish();
        }
    }

    abstract VideoView b();

    void b(boolean flag)
    {
        if (flag)
        {
            c.onFinish();
        }
    }

    abstract void c();

    abstract void d();

    abstract void e();

    boolean f()
    {
        return true;
    }

    n g()
    {
        return c;
    }

    Context h()
    {
        return a;
    }

    ViewGroup i()
    {
        return b;
    }

    void j()
    {
        a("com.mopub.action.interstitial.click");
    }
}
