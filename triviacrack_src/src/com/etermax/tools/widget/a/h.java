// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.widget.a;

import java.util.List;

public class h
{

    private List a;
    private boolean b;
    private int c;

    public h(List list, int i)
    {
        this(list, i, true);
    }

    public h(List list, int i, boolean flag)
    {
        a = list;
        c = i;
        b = flag;
    }

    public List a()
    {
        return a;
    }

    public int b()
    {
        return c;
    }

    public boolean c()
    {
        return b;
    }
}
