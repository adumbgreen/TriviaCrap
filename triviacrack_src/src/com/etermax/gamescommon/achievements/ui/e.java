// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.achievements.ui;

import android.content.Context;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import org.a.a.b.a;
import org.a.a.b.b;
import org.a.a.b.c;

// Referenced classes of package com.etermax.gamescommon.achievements.ui:
//            d, m

public final class e extends d
    implements a, b
{

    private boolean i;
    private final c j = new c();

    public e(Context context)
    {
        super(context);
        i = false;
        a();
    }

    public static d a(Context context)
    {
        e e1 = new e(context);
        e1.onFinishInflate();
        return e1;
    }

    private void a()
    {
        c c1 = c.a(j);
        c.a(this);
        h = com.etermax.gamescommon.achievements.ui.m.a(getContext());
        c.a(c1);
    }

    public void a(a a1)
    {
        c = (ImageView)a1.findViewById(0x7f0a0084);
        g = (ImageView)a1.findViewById(0x7f0a007c);
        d = (TextView)a1.findViewById(0x7f0a0081);
        f = (LinearLayout)a1.findViewById(0x7f0a007f);
        b = (TextView)a1.findViewById(0x7f0a0080);
        a = (TextView)a1.findViewById(0x7f0a0048);
        e = (TextView)a1.findViewById(0x7f0a0083);
    }

    public void onFinishInflate()
    {
        if (!i)
        {
            i = true;
            inflate(getContext(), 0x7f03001d, this);
            j.a(this);
        }
        super.onFinishInflate();
    }
}
