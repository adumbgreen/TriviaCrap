// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.menu.a.b;

import android.content.Context;
import android.widget.LinearLayout;
import android.widget.ViewSwitcher;
import com.etermax.gamescommon.menu.a.n;
import com.etermax.tools.widget.UsernameCustomFontTextView;
import org.a.a.b.a;
import org.a.a.b.b;
import org.a.a.b.c;

// Referenced classes of package com.etermax.gamescommon.menu.a.b:
//            l

public final class m extends l
    implements a, b
{

    private boolean g;
    private final c h = new c();

    public m(Context context)
    {
        super(context);
        g = false;
        d();
    }

    public static l a(Context context)
    {
        m m1 = new m(context);
        m1.onFinishInflate();
        return m1;
    }

    private void d()
    {
        c c1 = c.a(h);
        c.a(this);
        i = n.a(getContext());
        c.a(c1);
    }

    public void a(a a1)
    {
        b = a1.findViewById(0x7f0a01dc);
        d = (LinearLayout)a1.findViewById(0x7f0a01dd);
        e = a1.findViewById(0x7f0a01e1);
        f = a1.findViewById(0x7f0a01e2);
        a = (UsernameCustomFontTextView)a1.findViewById(0x7f0a0121);
        c = (ViewSwitcher)a1.findViewById(0x7f0a01ad);
        a();
    }

    public void onFinishInflate()
    {
        if (!g)
        {
            g = true;
            inflate(getContext(), 0x7f030091, this);
            h.a(this);
        }
        super.onFinishInflate();
    }
}
