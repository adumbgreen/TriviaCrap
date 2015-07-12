// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.profile;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.TextView;
import org.a.a.b.a;
import org.a.a.b.b;
import org.a.a.b.c;

// Referenced classes of package com.etermax.preguntados.ui.profile:
//            ProfileRankingsItemView

public final class ProfileRankingsItemView_ extends ProfileRankingsItemView
    implements a, b
{

    private boolean d;
    private final c e = new c();

    public ProfileRankingsItemView_(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        d = false;
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
        c = (TextView)a1.findViewById(0x7f0a03b4);
        b = (ImageView)a1.findViewById(0x7f0a03b3);
        a = (TextView)a1.findViewById(0x7f0a03b2);
    }

    public void onFinishInflate()
    {
        if (!d)
        {
            d = true;
            inflate(getContext(), 0x7f0300f9, this);
            e.a(this);
        }
        super.onFinishInflate();
    }
}
