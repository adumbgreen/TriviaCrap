// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.menu.navigation;

import android.content.Context;
import android.util.AttributeSet;
import com.etermax.tools.f.d;
import org.a.a.b.a;
import org.a.a.b.c;

// Referenced classes of package com.etermax.gamescommon.menu.navigation:
//            NavigationPanel

public final class NavigationPanel_ extends NavigationPanel
    implements a
{

    private boolean b;
    private final c c;

    public NavigationPanel_(Context context)
    {
        super(context);
        b = false;
        c = new c();
        b();
    }

    public NavigationPanel_(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        b = false;
        c = new c();
        b();
    }

    public NavigationPanel_(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        b = false;
        c = new c();
        b();
    }

    public static NavigationPanel a(Context context)
    {
        NavigationPanel_ navigationpanel_ = new NavigationPanel_(context);
        navigationpanel_.onFinishInflate();
        return navigationpanel_;
    }

    private void b()
    {
        c c1 = org.a.a.b.c.a(c);
        a = d.c(getContext());
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
