// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.a.a;


// Referenced classes of package com.etermax.tools.a.a:
//            e

public class d
{

    private String a;
    private String b;
    private String c;
    private String d;
    private String e;
    private String f;
    private String g;
    private String h;
    private String i;
    private String j;

    public d()
    {
        a = "";
        b = "";
        c = "";
        d = "";
        e = "";
        f = "";
        g = "";
        h = "";
        i = "";
        j = "";
    }

    private String g(String s)
    {
        return s.replace("|", "\\|");
    }

    public void a(e e1)
    {
        a = (new StringBuilder()).append("And-").append(e1).toString();
    }

    public void a(String s)
    {
        b = g(s);
    }

    public void a(boolean flag)
    {
        String s;
        if (flag)
        {
            s = "1";
        } else
        {
            s = "0";
        }
        c = s;
    }

    public void b(String s)
    {
        d = g(s);
    }

    public void b(boolean flag)
    {
        String s;
        if (flag)
        {
            s = "1";
        } else
        {
            s = "0";
        }
        e = s;
    }

    public void c(String s)
    {
        f = g(s);
    }

    public void c(boolean flag)
    {
        String s;
        if (flag)
        {
            s = "1";
        } else
        {
            s = "0";
        }
        j = s;
    }

    public void d(String s)
    {
        g = g(s);
    }

    public void e(String s)
    {
        h = g(s);
    }

    public void f(String s)
    {
        i = g(s);
    }

    public String toString()
    {
        StringBuffer stringbuffer = new StringBuffer();
        stringbuffer.append(1);
        stringbuffer.append("|");
        stringbuffer.append(a);
        stringbuffer.append("|");
        stringbuffer.append(b);
        stringbuffer.append("|");
        stringbuffer.append(c);
        stringbuffer.append("|");
        stringbuffer.append(d);
        stringbuffer.append("|");
        stringbuffer.append(e);
        stringbuffer.append("|");
        stringbuffer.append(f);
        stringbuffer.append("|");
        stringbuffer.append(g);
        stringbuffer.append("|");
        stringbuffer.append(h);
        stringbuffer.append("|");
        stringbuffer.append(i);
        stringbuffer.append("|");
        stringbuffer.append(j);
        return stringbuffer.toString();
    }
}
