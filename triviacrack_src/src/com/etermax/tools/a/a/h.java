// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.a.a;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import org.b.c.a.i;
import org.b.c.c;
import org.b.d.e;

public class h
    implements i
{

    private final i a;
    private byte b[];

    h(i j)
    {
        a = j;
    }

    public org.b.c.i a()
    {
        return a.a();
    }

    public int b()
    {
        return a.b();
    }

    public String c()
    {
        return a.c();
    }

    public c d()
    {
        return a.d();
    }

    public InputStream e()
    {
        if (b == null)
        {
            b = org.b.d.e.a(a.e());
        }
        return new ByteArrayInputStream(b);
    }

    public void f()
    {
        a.f();
    }
}
