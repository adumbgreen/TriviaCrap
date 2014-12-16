// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.i;


// Referenced classes of package com.etermax.tools.i:
//            h

public class g
{

    public g()
    {
    }

    public void a(h h1)
    {
        b(h1);
    }

    protected void a(h h1, Exception exception)
    {
        h1.b(exception);
    }

    protected void a(h h1, Object obj)
    {
        h1.c(obj);
    }

    protected void b(h h1)
    {
        try
        {
            a(h1, h1.a());
            return;
        }
        catch (Exception exception)
        {
            a(h1, exception);
        }
    }
}
