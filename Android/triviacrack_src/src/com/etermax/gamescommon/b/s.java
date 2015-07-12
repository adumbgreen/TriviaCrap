// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.b;


// Referenced classes of package com.etermax.gamescommon.b:
//            l, t

public class s extends l
{

    public s(t t1)
    {
        if (t1 == t.a)
        {
            e("update_forced_show");
            return;
        } else
        {
            e("update_forced_ok");
            return;
        }
    }

    public void a(String s1)
    {
        a("user_version", s1);
    }
}
