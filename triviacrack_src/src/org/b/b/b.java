// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.b.b;


// Referenced classes of package org.b.b:
//            a

public abstract class b extends RuntimeException
{

    public b(String s)
    {
        super(s);
    }

    public b(String s, Throwable throwable)
    {
        super(s, throwable);
    }

    public String getMessage()
    {
        return a.a(super.getMessage(), getCause());
    }

    static 
    {
        org/b/b/a.getName();
    }
}
