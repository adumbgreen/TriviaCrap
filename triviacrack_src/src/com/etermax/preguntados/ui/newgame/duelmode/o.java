// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.newgame.duelmode;

import android.os.Handler;
import android.support.v4.app.Fragment;
import com.etermax.preguntados.datasource.d;

// Referenced classes of package com.etermax.preguntados.ui.newgame.duelmode:
//            q, p, r

public class o
{

    d a;
    private Handler b;
    private q c;
    private p d;

    public o()
    {
    }

    static q a(o o1)
    {
        return o1.c;
    }

    static q a(o o1, q q1)
    {
        o1.c = q1;
        return q1;
    }

    public void a()
    {
        b = new Handler();
    }

    public void a(Fragment fragment, String s, r r)
    {
        if (d != null)
        {
            b.removeCallbacks(d);
            d = null;
        }
        if (c != null)
        {
            c.h();
            c = null;
        }
        d = new p(this, fragment, s, r);
        b.postDelayed(d, 500L);
    }
}
