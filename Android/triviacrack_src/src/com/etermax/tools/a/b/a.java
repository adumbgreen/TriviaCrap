// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.a.b;

import org.b.c.i;
import org.b.e.a.b;

public class a extends org.b.e.a.a
{

    public a()
    {
    }

    public void a(org.b.c.a.i j)
    {
        try
        {
            super.a(j);
            return;
        }
        catch (b b1)
        {
            if (b1.a().a() == 403)
            {
                throw new com.etermax.tools.a.c.a();
            } else
            {
                throw b1;
            }
        }
    }
}
