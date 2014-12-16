// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.smartadserver.android.library.d;

import java.io.Serializable;
import java.util.Date;

public class a
    implements Serializable
{

    private String a;
    private String b;
    private String c;
    private String d;
    private String e;
    private boolean f;
    private int g;
    private int h;
    private int i;
    private Date j;
    private boolean k;
    private boolean l;
    private String m;
    private int n;
    private int o;
    private int p;
    private int q;

    public a()
    {
        d = "";
        e = "";
        f = false;
        g = 1;
        h = -1;
        k = false;
        l = false;
        m = "";
        n = 0;
        o = 0;
        p = 0;
        q = 0;
    }

    public void a(int i1)
    {
        g = i1;
    }

    public void a(String s)
    {
        a = s;
    }

    public void a(Date date)
    {
        j = date;
    }

    public void a(boolean flag)
    {
        f = flag;
    }

    public String[] a()
    {
        if (d != null && d.length() > 0 && !d.equals(","))
        {
            String as[] = d.split(",http");
            for (int i1 = 1; i1 < as.length; i1++)
            {
                as[i1] = (new StringBuilder()).append("http").append(as[i1]).toString();
            }

            if (as.length == 1 && as[0].endsWith(","))
            {
                as[0] = as[0].substring(0, -1 + as[0].length());
            }
            return as;
        } else
        {
            return new String[0];
        }
    }

    public String b()
    {
        return a;
    }

    public void b(int i1)
    {
        h = i1;
    }

    public void b(String s)
    {
        b = s;
    }

    public void b(boolean flag)
    {
        k = flag;
    }

    public String c()
    {
        return b;
    }

    public void c(int i1)
    {
        i = i1;
    }

    public void c(String s)
    {
        c = s;
    }

    public void c(boolean flag)
    {
        l = flag;
    }

    public String d()
    {
        return c;
    }

    public void d(int i1)
    {
        n = i1;
    }

    public void d(String s)
    {
        d = s;
    }

    public String e()
    {
        return e;
    }

    public void e(int i1)
    {
        o = i1;
    }

    public void e(String s)
    {
        e = s;
    }

    public void f(int i1)
    {
        p = i1;
    }

    public void f(String s)
    {
        m = s;
    }

    public boolean f()
    {
        return f;
    }

    public int g()
    {
        return g;
    }

    public void g(int i1)
    {
        q = i1;
    }

    public int h()
    {
        return h;
    }

    public int i()
    {
        return i;
    }

    public Date j()
    {
        return j;
    }

    public boolean k()
    {
        return k;
    }

    public boolean l()
    {
        return l;
    }

    public String m()
    {
        return m;
    }
}
