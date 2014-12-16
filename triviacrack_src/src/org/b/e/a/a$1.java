// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.b.e.a;

import org.b.c.j;

// Referenced classes of package org.b.e.a:
//            a

class chFieldError
{

    static final int a[];

    static 
    {
        a = new int[j.values().length];
        try
        {
            a[j.d.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            a[j.e.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror1)
        {
            return;
        }
    }
}
