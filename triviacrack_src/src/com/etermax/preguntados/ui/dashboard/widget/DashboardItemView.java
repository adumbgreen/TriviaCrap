// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.dashboard.widget;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.etermax.o;
import com.etermax.preguntados.h.c;

// Referenced classes of package com.etermax.preguntados.ui.dashboard.widget:
//            f

public class DashboardItemView extends LinearLayout
    implements f
{

    TextView a;

    public DashboardItemView(Context context)
    {
        super(context);
    }

    public DashboardItemView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public void a()
    {
        a.setText(getResources().getString(o.finished));
    }

    public void a(long l)
    {
        a.setText(c.a(l, false));
    }
}
