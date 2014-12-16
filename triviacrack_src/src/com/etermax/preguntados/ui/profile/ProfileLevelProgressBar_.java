// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.profile;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ProgressBar;
import android.widget.TextView;
import org.a.a.b.a;
import org.a.a.b.b;
import org.a.a.b.c;

// Referenced classes of package com.etermax.preguntados.ui.profile:
//            ProfileLevelProgressBar

public final class ProfileLevelProgressBar_ extends ProfileLevelProgressBar
    implements a, b
{

    private boolean d;
    private final c e;

    public ProfileLevelProgressBar_(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        d = false;
        e = new c();
        a();
    }

    public ProfileLevelProgressBar_(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        d = false;
        e = new c();
        a();
    }

    private void a()
    {
        c c1 = c.a(e);
        c.a(this);
        c.a(c1);
    }

    public void a(a a1)
    {
        a = a1.findViewById(0x7f0a039f);
        b = (ProgressBar)a1.findViewById(0x7f0a01a8);
        c = (TextView)a1.findViewById(0x7f0a03a0);
    }

    public void onFinishInflate()
    {
        if (!d)
        {
            d = true;
            inflate(getContext(), 0x7f0300f5, this);
            e.a(this);
        }
        super.onFinishInflate();
    }
}
