// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.view;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ScrollView;

// Referenced classes of package com.etermax.gamescommon.view:
//            g

public class ResponsiveScrollView extends ScrollView
{

    private Runnable a;
    private int b;
    private g c;
    private int d;
    private int e;

    public ResponsiveScrollView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        b = 100;
        d = 0;
        e = 0;
        a = new Runnable() {

            final ResponsiveScrollView a;

            public void run()
            {
                if (a.getScrollY() == 0)
                {
                    if (ResponsiveScrollView.a(a) != null)
                    {
                        ResponsiveScrollView.a(a).a();
                    }
                    return;
                } else
                {
                    a.postDelayed(ResponsiveScrollView.b(a), ResponsiveScrollView.c(a));
                    return;
                }
            }

            
            {
                a = ResponsiveScrollView.this;
                super();
            }
        };
    }

    static g a(ResponsiveScrollView responsivescrollview)
    {
        return responsivescrollview.c;
    }

    static Runnable b(ResponsiveScrollView responsivescrollview)
    {
        return responsivescrollview.a;
    }

    static int c(ResponsiveScrollView responsivescrollview)
    {
        return responsivescrollview.b;
    }

    public void a(int i, int j)
    {
        d = i;
        e = j;
    }

    protected void onLayout(boolean flag, int i, int j, int k, int l)
    {
        super.onLayout(flag, i, j, k, l);
        if (d > 0 || e > 0)
        {
            scrollTo(d, e);
            a(0, 0);
        }
    }

    public void setOnScrollStoppedListener(g g)
    {
        c = g;
    }
}
