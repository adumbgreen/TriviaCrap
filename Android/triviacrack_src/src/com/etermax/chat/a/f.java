// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.chat.a;

import android.graphics.drawable.Drawable;
import java.util.Date;

// Referenced classes of package com.etermax.chat.a:
//            h, l, i, k, 
//            g

public class f
    implements com.etermax.chat.ui.f
{

    private i a;
    private l b;
    private String c;
    private h d;
    private k e;
    private Date f;
    private g g;
    private Drawable h;

    public f(i i)
    {
        a = i;
        d = h.a;
    }

    public l a()
    {
        return b;
    }

    public void a(g g1)
    {
        g = g1;
    }

    public void a(h h1)
    {
        d = h1;
    }

    public void a(k k)
    {
        e = k;
    }

    public void a(l l1)
    {
        b = l1;
    }

    public void a(String s)
    {
        c = s;
    }

    public void a(Date date)
    {
        f = date;
    }

    public boolean a(f f1)
    {
        return f1.b() == b() && f1.a().equals(a());
    }

    public i b()
    {
        return a;
    }

    public String c()
    {
        return c;
    }

    public h d()
    {
        return d;
    }

    public k e()
    {
        return e;
    }

    public Date f()
    {
        return f;
    }

    public g g()
    {
        return g;
    }

    public Drawable h()
    {
        return h;
    }
}
