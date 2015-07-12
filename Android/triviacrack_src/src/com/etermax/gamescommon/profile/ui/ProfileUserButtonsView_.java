// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.profile.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.TextView;
import com.etermax.tools.f.d;
import com.etermax.tools.widgetv2.CustomLinearButton;
import org.a.a.b.a;
import org.a.a.b.b;
import org.a.a.b.c;

// Referenced classes of package com.etermax.gamescommon.profile.ui:
//            ProfileUserButtonsView, ProfileFacebookFriendsButton

public final class ProfileUserButtonsView_ extends ProfileUserButtonsView
    implements a, b
{

    private boolean p;
    private final c q = new c();

    public ProfileUserButtonsView_(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        p = false;
        d();
    }

    private void d()
    {
        c c1 = c.a(q);
        c.a(this);
        a = com.etermax.tools.f.d.c(getContext());
        c.a(c1);
    }

    public void a(a a1)
    {
        m = (TextView)a1.findViewById(0x7f0a037d);
        h = (CustomLinearButton)a1.findViewById(0x7f0a01e9);
        f = (CustomLinearButton)a1.findViewById(0x7f0a0377);
        g = (CustomLinearButton)a1.findViewById(0x7f0a037e);
        k = (TextView)a1.findViewById(0x7f0a0379);
        b = (CustomLinearButton)a1.findViewById(0x7f0a0376);
        l = (ImageView)a1.findViewById(0x7f0a0378);
        j = (ImageView)a1.findViewById(0x7f0a037b);
        i = (ProfileFacebookFriendsButton)a1.findViewById(0x7f0a037c);
        d = (CustomLinearButton)a1.findViewById(0x7f0a037f);
        n = (TextView)a1.findViewById(0x7f0a0380);
        c = (CustomLinearButton)a1.findViewById(0x7f0a037a);
        e = (CustomLinearButton)a1.findViewById(0x7f0a0381);
        a();
    }

    public void onFinishInflate()
    {
        if (!p)
        {
            p = true;
            inflate(getContext(), 0x7f0300ee, this);
            q.a(this);
        }
        super.onFinishInflate();
    }
}
