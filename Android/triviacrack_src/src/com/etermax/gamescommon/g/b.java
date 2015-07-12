// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.g;


// Referenced classes of package com.etermax.gamescommon.g:
//            i

public class b extends Exception
{

    i a;

    public b(int j, String s)
    {
        this(new i(j, s));
    }

    public b(int j, String s, Exception exception)
    {
        this(new i(j, s), exception);
    }

    public b(i j)
    {
        this(j, ((Exception) (null)));
    }

    public b(i j, Exception exception)
    {
        super(j.b(), exception);
        a = j;
    }

    public i a()
    {
        return a;
    }
}
