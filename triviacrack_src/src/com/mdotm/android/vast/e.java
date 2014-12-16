// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mdotm.android.vast;

import java.io.Serializable;
import java.util.ArrayList;

public class e
    implements Serializable
{

    protected String a;
    protected String b;
    protected ArrayList c;
    protected ArrayList d;
    protected ArrayList e;
    protected ArrayList f;
    private int g;

    public e()
    {
        c = new ArrayList();
        d = new ArrayList();
        e = new ArrayList();
        f = new ArrayList();
    }

    public String a()
    {
        return a;
    }

    public void a(int i)
    {
        g = i;
    }

    public ArrayList b()
    {
        return d;
    }

    public ArrayList c()
    {
        return f;
    }

    public int d()
    {
        return g;
    }
}
