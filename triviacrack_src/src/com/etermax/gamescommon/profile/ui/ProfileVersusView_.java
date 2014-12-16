// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.profile.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.TextView;
import com.etermax.tools.widget.ProfileProgressBar;
import org.a.a.b.a;
import org.a.a.b.b;
import org.a.a.b.c;

// Referenced classes of package com.etermax.gamescommon.profile.ui:
//            ProfileVersusView

public final class ProfileVersusView_ extends ProfileVersusView
    implements a, b
{

    private boolean g;
    private final c h;

    public ProfileVersusView_(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        g = false;
        h = new c();
        a();
    }

    public ProfileVersusView_(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        g = false;
        h = new c();
        a();
    }

    private void a()
    {
        c c1 = c.a(h);
        c.a(this);
        c.a(c1);
    }

    public void a(a a1)
    {
        b = (TextView)a1.findViewById(0x7f0a03aa);
        a = (ProfileProgressBar)a1.findViewById(0x7f0a03c9);
        f = (TextView)a1.findViewById(0x7f0a03cd);
        e = (TextView)a1.findViewById(0x7f0a03cc);
        d = (TextView)a1.findViewById(0x7f0a03ca);
        c = (TextView)a1.findViewById(0x7f0a03cb);
    }

    public void onFinishInflate()
    {
        if (!g)
        {
            g = true;
            inflate(getContext(), 0x7f0300fc, this);
            h.a(this);
        }
        super.onFinishInflate();
    }
}
