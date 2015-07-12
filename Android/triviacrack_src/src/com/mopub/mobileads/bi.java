// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;

import android.content.Context;
import android.graphics.drawable.Drawable;

// Referenced classes of package com.mopub.mobileads:
//            bh

class bi
{

    private final Context a;
    private float b;
    private int c;
    private boolean d;
    private String e;
    private boolean f;
    private Drawable g;
    private android.view.View.OnTouchListener h;
    private int i;
    private int j;
    private int k;

    bi(Context context)
    {
        a = context;
        b = 1.0F;
        c = 17;
        i = 0;
        j = 9;
        k = 11;
    }

    static Context a(bi bi1)
    {
        return bi1.a;
    }

    static float b(bi bi1)
    {
        return bi1.b;
    }

    static int c(bi bi1)
    {
        return bi1.c;
    }

    static int d(bi bi1)
    {
        return bi1.i;
    }

    static boolean e(bi bi1)
    {
        return bi1.f;
    }

    static Drawable f(bi bi1)
    {
        return bi1.g;
    }

    static int g(bi bi1)
    {
        return bi1.k;
    }

    static boolean h(bi bi1)
    {
        return bi1.d;
    }

    static String i(bi bi1)
    {
        return bi1.e;
    }

    static int j(bi bi1)
    {
        return bi1.j;
    }

    static android.view.View.OnTouchListener k(bi bi1)
    {
        return bi1.h;
    }

    bi a()
    {
        d = true;
        return this;
    }

    bi a(float f1)
    {
        b = f1;
        return this;
    }

    bi a(int l)
    {
        c = l;
        return this;
    }

    bi a(Drawable drawable)
    {
        f = true;
        g = drawable;
        return this;
    }

    bi a(String s)
    {
        d = true;
        e = s;
        return this;
    }

    bh b()
    {
        return new bh(this, null);
    }

    bi b(int l)
    {
        j = l;
        return this;
    }

    bi c(int l)
    {
        i = l;
        return this;
    }
}
