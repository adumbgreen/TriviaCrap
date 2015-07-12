// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.f.a;

import com.etermax.tools.f.c;
import java.util.HashMap;
import java.util.Map;

public abstract class a
{

    protected c P[];
    protected c Q[];
    private String a;
    private Map b;

    public a()
    {
        c ac[] = new c[1];
        ac[0] = c.a;
        P = ac;
        c ac1[] = new c[1];
        ac1[0] = c.a;
        Q = ac1;
        b = new HashMap();
    }

    public String a()
    {
        return a;
    }

    public void a(String s, String s1)
    {
        b.put(s, s1);
    }

    public abstract c[] b();

    public Map e()
    {
        return b;
    }

    public void e(String s)
    {
        a = s;
    }
}
