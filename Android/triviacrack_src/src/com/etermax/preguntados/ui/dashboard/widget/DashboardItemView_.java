// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.dashboard.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.TextView;
import org.a.a.b.a;
import org.a.a.b.b;
import org.a.a.b.c;

// Referenced classes of package com.etermax.preguntados.ui.dashboard.widget:
//            DashboardItemView

public final class DashboardItemView_ extends DashboardItemView
    implements a, b
{

    private boolean b;
    private final c c;

    public DashboardItemView_(Context context)
    {
        super(context);
        b = false;
        c = new c();
        b();
    }

    public DashboardItemView_(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        b = false;
        c = new c();
        b();
    }

    public static DashboardItemView a(Context context)
    {
        DashboardItemView_ dashboarditemview_ = new DashboardItemView_(context);
        dashboarditemview_.onFinishInflate();
        return dashboarditemview_;
    }

    private void b()
    {
        c c1 = org.a.a.b.c.a(c);
        org.a.a.b.c.a(this);
        org.a.a.b.c.a(c1);
    }

    public void a(a a1)
    {
        a = (TextView)a1.findViewById(0x7f0a0157);
    }

    public void onFinishInflate()
    {
        if (!b)
        {
            b = true;
            inflate(getContext(), 0x7f030061, this);
            c.a(this);
        }
        super.onFinishInflate();
    }
}
