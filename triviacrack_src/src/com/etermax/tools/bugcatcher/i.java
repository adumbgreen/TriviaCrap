// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.bugcatcher;


public class i
    implements Comparable
{

    private String a;
    private String b;
    private boolean c;

    public i(String s, String s1, boolean flag)
    {
        a = s;
        b = s1;
        c = flag;
    }

    public int a(i j)
    {
        return -b.compareTo(j.b);
    }

    public boolean a()
    {
        return c;
    }

    public String b()
    {
        return a;
    }

    public String c()
    {
        return b;
    }

    public int compareTo(Object obj)
    {
        return a((i)obj);
    }

    public boolean equals(Object obj)
    {
        return super.equals(obj) || (obj instanceof i) && ((i)obj).a.equals(a);
    }

    public String toString()
    {
        return b;
    }
}
