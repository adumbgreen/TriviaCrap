// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.view;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.ViewSwitcher;
import com.etermax.gamescommon.h;
import org.a.a.b.a;
import org.a.a.b.b;
import org.a.a.b.c;

// Referenced classes of package com.etermax.gamescommon.view:
//            FlagsLayout

public final class FlagsLayout_ extends FlagsLayout
    implements a, b
{

    private boolean h;
    private final c i = new c();

    public FlagsLayout_(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        h = false;
        c();
    }

    private void c()
    {
        c c1 = org.a.a.b.c.a(i);
        org.a.a.b.c.a(this);
        a = com.etermax.gamescommon.login.datasource.b.a(getContext());
        b = com.etermax.gamescommon.h.a(getContext());
        org.a.a.b.c.a(c1);
    }

    public void a(a a1)
    {
        d = (ImageView)a1.findViewById(0x7f0a00e9);
        e = (TextView)a1.findViewById(0x7f0a00ea);
        g = a1.findViewById(0x7f0a00f2);
        f = (ViewSwitcher)a1.findViewById(0x7f0a00ec);
        a();
    }

    public void onFinishInflate()
    {
        if (!h)
        {
            h = true;
            inflate(getContext(), 0x7f03004a, this);
            i.a(this);
        }
        super.onFinishInflate();
    }
}
