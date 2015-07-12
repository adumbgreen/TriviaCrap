// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.sharing;

import android.content.Context;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.ViewSwitcher;
import com.etermax.preguntados.datasource.dto.ProfileDTO;
import org.a.a.b.a;
import org.a.a.b.b;
import org.a.a.b.c;

// Referenced classes of package com.etermax.preguntados.sharing:
//            i, n

public final class j extends i
    implements a, b
{

    private boolean f;
    private final c g = new c();

    public j(Context context, ProfileDTO profiledto, String s, n n)
    {
        super(context, profiledto, s, n);
        f = false;
        f();
    }

    public static i a(Context context, ProfileDTO profiledto, String s, n n)
    {
        j j1 = new j(context, profiledto, s, n);
        j1.onFinishInflate();
        return j1;
    }

    private void f()
    {
        c c1 = c.a(g);
        c.a(this);
        n = com.etermax.tools.social.a.j.a(getContext());
        m = com.etermax.gamescommon.login.datasource.b.a(getContext());
        a = com.etermax.preguntados.c.a.c.a(getContext());
        a();
        c.a(c1);
    }

    public void a(a a1)
    {
        d = (TextView)a1.findViewById(0x7f0a03be);
        e = (ViewSwitcher)a1.findViewById(0x7f0a00c6);
        b = (RelativeLayout)a1.findViewById(0x7f0a04a1);
        c = (TextView)a1.findViewById(0x7f0a0142);
        b();
    }

    public void onFinishInflate()
    {
        if (!f)
        {
            f = true;
            inflate(getContext(), 0x7f030120, this);
            g.a(this);
        }
        super.onFinishInflate();
    }
}
