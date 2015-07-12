// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.menu.a.b;

import android.content.Context;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.ViewSwitcher;
import com.etermax.gamescommon.menu.a.n;
import com.etermax.tools.widget.UsernameCustomFontTextView;
import org.a.a.b.a;
import org.a.a.b.c;

// Referenced classes of package com.etermax.gamescommon.menu.a.b:
//            a

public final class b extends com.etermax.gamescommon.menu.a.b.a
    implements a, org.a.a.b.b
{

    private boolean k;
    private final c l = new c();

    public b(Context context)
    {
        super(context);
        k = false;
        d();
    }

    public static com.etermax.gamescommon.menu.a.b.a a(Context context)
    {
        b b1 = new b(context);
        b1.onFinishInflate();
        return b1;
    }

    private void d()
    {
        c c1 = c.a(l);
        c.a(this);
        i = n.a(getContext());
        c.a(c1);
    }

    public void a(a a1)
    {
        h = a1.findViewById(0x7f0a01df);
        g = a1.findViewById(0x7f0a01de);
        d = a1.findViewById(0x7f0a01dc);
        a = (TextView)a1.findViewById(0x7f0a01db);
        f = (LinearLayout)a1.findViewById(0x7f0a01dd);
        e = (ViewSwitcher)a1.findViewById(0x7f0a01ad);
        b = (TextView)a1.findViewById(0x7f0a00b5);
        c = (UsernameCustomFontTextView)a1.findViewById(0x7f0a0121);
        a();
    }

    public void onFinishInflate()
    {
        if (!k)
        {
            k = true;
            inflate(getContext(), 0x7f03008b, this);
            l.a(this);
        }
        super.onFinishInflate();
    }
}
