// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.profile.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.ViewSwitcher;
import com.etermax.gamescommon.profile.image.f;
import com.etermax.tools.widget.CustomFontTextView;
import com.etermax.tools.widget.UsernameCustomFontTextView;
import org.a.a.b.a;
import org.a.a.b.b;
import org.a.a.b.c;

// Referenced classes of package com.etermax.gamescommon.profile.ui:
//            ProfileUserHeader

public final class ProfileUserHeader_ extends ProfileUserHeader
    implements a, b
{

    private final c A;
    private boolean z;

    public ProfileUserHeader_(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        z = false;
        A = new c();
        e();
    }

    public ProfileUserHeader_(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        z = false;
        A = new c();
        e();
    }

    private void e()
    {
        c c1 = c.a(A);
        c.a(this);
        y = f.a(getContext());
        w = com.etermax.tools.c.b.a(getContext());
        v = com.etermax.gamescommon.login.datasource.b.a(getContext());
        c.a(c1);
    }

    public void a(a a1)
    {
        n = (ImageView)a1.findViewById(0x7f0a03c6);
        p = (RelativeLayout)a1.findViewById(0x7f0a01ac);
        e = (TextView)a1.findViewById(0x7f0a03be);
        l = (ImageView)a1.findViewById(0x7f0a03c4);
        h = (CustomFontTextView)a1.findViewById(0x7f0a03c0);
        j = (ImageView)a1.findViewById(0x7f0a03c2);
        m = (TextView)a1.findViewById(0x7f0a03c5);
        d = (UsernameCustomFontTextView)a1.findViewById(0x7f0a03bd);
        t = (ImageView)a1.findViewById(0x7f0a03bc);
        c = (UsernameCustomFontTextView)a1.findViewById(0x7f0a0121);
        u = a1.findViewById(0x7f0a03ba);
        r = a1.findViewById(0x7f0a03b9);
        g = (CustomFontTextView)a1.findViewById(0x7f0a03c1);
        k = (TextView)a1.findViewById(0x7f0a03c3);
        q = (CustomFontTextView)a1.findViewById(0x7f0a03c8);
        a = (ViewSwitcher)a1.findViewById(0x7f0a01ad);
        i = (ImageView)a1.findViewById(0x7f0a03b8);
        f = (TextView)a1.findViewById(0x7f0a03bf);
        b = (TextView)a1.findViewById(0x7f0a01ae);
        o = (TextView)a1.findViewById(0x7f0a03c7);
        s = (ImageView)a1.findViewById(0x7f0a03bb);
        b();
    }

    public void onFinishInflate()
    {
        if (!z)
        {
            z = true;
            inflate(getContext(), 0x7f0300fb, this);
            A.a(this);
        }
        super.onFinishInflate();
    }
}
