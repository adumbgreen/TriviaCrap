// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.b;


// Referenced classes of package com.etermax.gamescommon.b:
//            l

public class ad extends l
{

    public ad()
    {
        e("login");
    }

    public ad(String s)
    {
        e(s);
    }

    public ad(String s, String s1, String s2)
    {
        e(s);
        a(s1, s2);
    }

    public static String a(String s)
    {
        String s1 = "error";
        if (s.indexOf("@") != -1)
        {
            s1 = s.substring(s.indexOf("@"));
        }
        return s1;
    }

    public void b(String s)
    {
        a("type", s);
    }
}
