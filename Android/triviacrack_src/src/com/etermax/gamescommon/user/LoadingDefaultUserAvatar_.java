// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.user;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ProgressBar;
import com.etermax.tools.widget.RoundedRelativeLayout;
import org.a.a.b.a;
import org.a.a.b.b;
import org.a.a.b.c;

// Referenced classes of package com.etermax.gamescommon.user:
//            LoadingDefaultUserAvatar

public final class LoadingDefaultUserAvatar_ extends LoadingDefaultUserAvatar
    implements a, b
{

    private boolean d;
    private final c e = new c();

    public LoadingDefaultUserAvatar_(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        d = false;
        c();
    }

    private void c()
    {
        c c1 = org.a.a.b.c.a(e);
        org.a.a.b.c.a(this);
        org.a.a.b.c.a(c1);
    }

    public void a(a a1)
    {
        b = (RoundedRelativeLayout)a1.findViewById(0x7f0a0105);
        a = (ProgressBar)a1.findViewById(0x7f0a0106);
        b();
    }

    public void onFinishInflate()
    {
        if (!d)
        {
            d = true;
            inflate(getContext(), 0x7f030051, this);
            e.a(this);
        }
        super.onFinishInflate();
    }
}
