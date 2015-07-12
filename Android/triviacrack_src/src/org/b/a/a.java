// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.b.a;

import org.b.b.b;
import org.b.d.i;

public abstract class a extends b
{

    public a(String s, Throwable throwable)
    {
        super(s, throwable);
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (!(obj instanceof a))
            {
                return false;
            }
            a a1 = (a)obj;
            if (!getMessage().equals(a1.getMessage()) || !i.a(getCause(), a1.getCause()))
            {
                return false;
            }
        }
        return true;
    }

    public int hashCode()
    {
        return getMessage().hashCode();
    }
}
