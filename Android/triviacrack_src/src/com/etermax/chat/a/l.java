// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.chat.a;


public class l
{

    private boolean a;
    private String b;
    private String c;
    private long d;

    public l()
    {
    }

    public void a(long l1)
    {
        d = l1;
    }

    public void a(String s)
    {
        b = s;
    }

    public void a(boolean flag)
    {
        a = flag;
    }

    public boolean a()
    {
        return a;
    }

    public String b()
    {
        return b;
    }

    public void b(String s)
    {
        c = s;
    }

    public String c()
    {
        return c;
    }

    public long d()
    {
        return d;
    }

    public boolean equals(Object obj)
    {
        if (obj != null && (obj instanceof l))
        {
            if (((l)obj).a() && a())
            {
                return true;
            }
            boolean flag;
            if (((l)obj).d() == d())
            {
                flag = true;
            } else
            {
                flag = false;
            }
            return flag;
        } else
        {
            return false;
        }
    }
}
