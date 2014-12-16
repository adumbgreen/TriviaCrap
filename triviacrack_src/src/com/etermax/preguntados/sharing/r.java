// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.sharing;

import android.content.Context;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.etermax.tools.social.a.j;
import org.a.a.b.a;
import org.a.a.b.b;
import org.a.a.b.c;

// Referenced classes of package com.etermax.preguntados.sharing:
//            q, p

public final class r extends q
    implements a, b
{

    private boolean o;
    private final c p = new c();

    public r(Context context, p p1, com.etermax.preguntados.c.a.b b1)
    {
        super(context, p1, b1);
        o = false;
        c();
    }

    public static q a(Context context, p p1, com.etermax.preguntados.c.a.b b1)
    {
        r r1 = new r(context, p1, b1);
        r1.onFinishInflate();
        return r1;
    }

    private void c()
    {
        c c1 = org.a.a.b.c.a(p);
        org.a.a.b.c.a(this);
        n = j.a(getContext());
        m = com.etermax.gamescommon.login.datasource.b.a(getContext());
        org.a.a.b.c.a(c1);
    }

    public void a(a a1)
    {
        e = (Button)a1.findViewById(0x7f0a02a6);
        k = (TextView)a1.findViewById(0x7f0a029f);
        g = (Button)a1.findViewById(0x7f0a02aa);
        c = (LinearLayout)a1.findViewById(0x7f0a029b);
        b = (ImageView)a1.findViewById(0x7f0a029d);
        i = (ImageView)a1.findViewById(0x7f0a02a4);
        j = (LinearLayout)a1.findViewById(0x7f0a02a3);
        h = (Button)a1.findViewById(0x7f0a02ac);
        d = (TextView)a1.findViewById(0x7f0a02a2);
        f = (Button)a1.findViewById(0x7f0a02a8);
        a();
    }

    public void onFinishInflate()
    {
        if (!o)
        {
            o = true;
            inflate(getContext(), 0x7f0300a9, this);
            p.a(this);
        }
        super.onFinishInflate();
    }
}
