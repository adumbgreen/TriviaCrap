// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.b;


// Referenced classes of package com.etermax.gamescommon.b:
//            l, ao

public class am extends l
{

    public am(String s, ao ao1)
    {
        e("profile_view");
        String s1 = ao1.toString();
        if (s != null)
        {
            a("from", s);
        }
        if (s1 != null)
        {
            a("type", s1);
        }
    }
}
