// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.b;


// Referenced classes of package com.etermax.gamescommon.b:
//            l, at

public class as extends l
{

    public as(at at1)
    {
        if (at1 == at.a)
        {
            e("update_suggest_show");
            return;
        } else
        {
            e("update_suggest_click");
            return;
        }
    }

    public void a(String s)
    {
        a("user_version", s);
    }

    public void c()
    {
        a("click", "ok");
    }

    public void d()
    {
        a("click", "later");
    }
}
