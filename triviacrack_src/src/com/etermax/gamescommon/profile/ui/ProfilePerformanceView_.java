// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.profile.ui;

import android.content.Context;
import android.util.AttributeSet;
import com.etermax.tools.widget.CustomFontTextView;
import org.a.a.b.a;
import org.a.a.b.b;
import org.a.a.b.c;

// Referenced classes of package com.etermax.gamescommon.profile.ui:
//            ProfilePerformanceView

public final class ProfilePerformanceView_ extends ProfilePerformanceView
    implements a, b
{

    private boolean d;
    private final c e;

    public ProfilePerformanceView_(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        d = false;
        e = new c();
        b();
    }

    public ProfilePerformanceView_(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        d = false;
        e = new c();
        b();
    }

    private void b()
    {
        c c1 = c.a(e);
        c.a(this);
        c.a(c1);
    }

    public void a(a a1)
    {
        c = (CustomFontTextView)a1.findViewById(0x7f0a03ad);
        a = (CustomFontTextView)a1.findViewById(0x7f0a03ab);
        b = (CustomFontTextView)a1.findViewById(0x7f0a03ac);
        a();
    }

    public void onFinishInflate()
    {
        if (!d)
        {
            d = true;
            inflate(getContext(), 0x7f0300f7, this);
            e.a(this);
        }
        super.onFinishInflate();
    }
}
