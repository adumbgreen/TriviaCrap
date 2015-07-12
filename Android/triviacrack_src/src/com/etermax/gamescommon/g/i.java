// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.g;


// Referenced classes of package com.etermax.gamescommon.g:
//            c

public class i
{

    int a;
    String b;

    public i(int j, String s)
    {
        a = j;
        if (s == null || s.trim().length() == 0)
        {
            b = com.etermax.gamescommon.g.c.a(j);
            return;
        } else
        {
            b = (new StringBuilder()).append(s).append(" (response: ").append(com.etermax.gamescommon.g.c.a(j)).append(")").toString();
            return;
        }
    }

    public int a()
    {
        return a;
    }

    public String b()
    {
        return b;
    }

    public boolean c()
    {
        return a == 0;
    }

    public boolean d()
    {
        return !c();
    }

    public String toString()
    {
        return (new StringBuilder()).append("IabResult: ").append(b()).toString();
    }
}
