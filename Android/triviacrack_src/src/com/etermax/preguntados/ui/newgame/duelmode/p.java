// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.newgame.duelmode;

import android.support.v4.app.Fragment;

// Referenced classes of package com.etermax.preguntados.ui.newgame.duelmode:
//            q, o, r

public class p
    implements Runnable
{

    final o a;
    private Fragment b;
    private String c;
    private r d;

    public p(o o1, Fragment fragment, String s, r r)
    {
        a = o1;
        super();
        b = fragment;
        c = s;
        d = r;
    }

    public void run()
    {
        o.a(a, new q(a, c, d));
        o.a(a).a(b);
    }
}
