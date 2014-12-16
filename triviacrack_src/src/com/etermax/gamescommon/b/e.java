// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.b;

import com.etermax.tools.f.a.a;
import com.etermax.tools.f.c;

// Referenced classes of package com.etermax.gamescommon.b:
//            h, f, g, i

public class e extends a
{

    private final String a = "lang";
    private final String b = "type";
    private final String c = "from";
    private final String d = "action";
    private final String e = "page_number";

    public e(h h1)
    {
        e(h1.toString());
    }

    public void a(f f1)
    {
        a("action", f1.toString());
    }

    public void a(g g1)
    {
        a("from", g1.toString());
    }

    public void a(i j)
    {
        a("type", j.toString());
    }

    public c[] b()
    {
        return P;
    }
}
