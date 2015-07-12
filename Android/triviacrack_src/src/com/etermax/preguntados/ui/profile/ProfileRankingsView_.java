// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.profile;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.TextView;
import org.a.a.b.a;
import org.a.a.b.b;
import org.a.a.b.c;

// Referenced classes of package com.etermax.preguntados.ui.profile:
//            ProfileRankingsView, ProfileRankingsItemView

public final class ProfileRankingsView_ extends ProfileRankingsView
    implements a, b
{

    private boolean e;
    private final c f = new c();

    public ProfileRankingsView_(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        e = false;
        a();
    }

    private void a()
    {
        c c1 = c.a(f);
        c.a(this);
        c.a(c1);
    }

    public void a(a a1)
    {
        c = (ProfileRankingsItemView)a1.findViewById(0x7f0a03b6);
        b = (ProfileRankingsItemView)a1.findViewById(0x7f0a03b5);
        a = (TextView)a1.findViewById(0x7f0a039a);
        d = (ProfileRankingsItemView)a1.findViewById(0x7f0a03b7);
    }

    public void onFinishInflate()
    {
        if (!e)
        {
            e = true;
            inflate(getContext(), 0x7f0300fa, this);
            f.a(this);
        }
        super.onFinishInflate();
    }
}
