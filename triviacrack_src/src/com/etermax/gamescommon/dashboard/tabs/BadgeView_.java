// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.dashboard.tabs;

import android.content.Context;
import android.util.AttributeSet;
import org.a.a.b.a;
import org.a.a.b.c;

// Referenced classes of package com.etermax.gamescommon.dashboard.tabs:
//            BadgeView, c

public final class BadgeView_ extends BadgeView
    implements a
{

    private boolean b;
    private final c c;

    public BadgeView_(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        b = false;
        c = new c();
        a();
    }

    public BadgeView_(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        b = false;
        c = new c();
        a();
    }

    private void a()
    {
        c c1 = org.a.a.b.c.a(c);
        a = com.etermax.gamescommon.dashboard.tabs.c.a(getContext());
        org.a.a.b.c.a(c1);
    }

    public void onFinishInflate()
    {
        if (!b)
        {
            b = true;
            c.a(this);
        }
        super.onFinishInflate();
    }
}
