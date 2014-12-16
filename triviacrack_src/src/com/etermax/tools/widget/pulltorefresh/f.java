// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.widget.pulltorefresh;

import android.os.Handler;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Interpolator;

// Referenced classes of package com.etermax.tools.widget.pulltorefresh:
//            PullToRefreshBase

final class f
    implements Runnable
{

    final PullToRefreshBase a;
    private final Interpolator b = new AccelerateDecelerateInterpolator();
    private final int c;
    private final int d;
    private final Handler e;
    private boolean f;
    private long g;
    private int h;

    public f(PullToRefreshBase pulltorefreshbase, Handler handler, int i, int j)
    {
        a = pulltorefreshbase;
        super();
        f = true;
        g = -1L;
        h = -1;
        e = handler;
        d = i;
        c = j;
    }

    public void a()
    {
        f = false;
        e.removeCallbacks(this);
    }

    public void run()
    {
        if (g == -1L)
        {
            g = System.currentTimeMillis();
        } else
        {
            long l = Math.max(Math.min((1000L * (System.currentTimeMillis() - g)) / 190L, 1000L), 0L);
            int i = Math.round((float)(d - c) * b.getInterpolation((float)l / 1000F));
            h = d - i;
            a.setHeaderScroll(h);
        }
        if (f && c != h)
        {
            e.postDelayed(this, 16L);
        }
    }
}
