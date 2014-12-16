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
//            ProfileLevelView, ProfileLevelProgressBar

public final class ProfileLevelView_ extends ProfileLevelView
    implements a, b
{

    private boolean g;
    private final c h;

    public ProfileLevelView_(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        g = false;
        h = new c();
        a();
    }

    public ProfileLevelView_(Context context, AttributeSet attributeset, int i)
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
        d = (TextView)a1.findViewById(0x7f0a039d);
        f = (TextView)a1.findViewById(0x7f0a03a0);
        b = (ImageView)a1.findViewById(0x7f0a039b);
        e = (ProfileLevelProgressBar)a1.findViewById(0x7f0a039e);
        c = (TextView)a1.findViewById(0x7f0a039c);
        a = (TextView)a1.findViewById(0x7f0a039a);
    }

    public void onFinishInflate()
    {
        if (!g)
        {
            g = true;
            inflate(getContext(), 0x7f0300f4, this);
            h.a(this);
        }
        super.onFinishInflate();
    }
}
