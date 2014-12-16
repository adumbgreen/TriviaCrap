// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.sharing;

import android.content.Context;
import android.widget.TextView;
import android.widget.ViewSwitcher;
import com.etermax.gamescommon.resources.RandomImageView;
import com.etermax.preguntados.datasource.dto.GameDTO;
import com.etermax.tools.social.a.j;
import org.a.a.b.a;
import org.a.a.b.b;
import org.a.a.b.c;

// Referenced classes of package com.etermax.preguntados.sharing:
//            e

public final class f extends e
    implements a, b
{

    private boolean h;
    private final c i = new c();

    public f(Context context, GameDTO gamedto, Boolean boolean1)
    {
        super(context, gamedto, boolean1);
        h = false;
        c();
    }

    public static e a(Context context, GameDTO gamedto, Boolean boolean1)
    {
        f f1 = new f(context, gamedto, boolean1);
        f1.onFinishInflate();
        return f1;
    }

    private void c()
    {
        c c1 = org.a.a.b.c.a(i);
        org.a.a.b.c.a(this);
        m = com.etermax.gamescommon.login.datasource.b.a(getContext());
        n = j.a(getContext());
        org.a.a.b.c.a(c1);
    }

    public void a(a a1)
    {
        d = (TextView)a1.findViewById(0x7f0a0269);
        f = (ViewSwitcher)a1.findViewById(0x7f0a0268);
        c = (TextView)a1.findViewById(0x7f0a0265);
        a = (TextView)a1.findViewById(0x7f0a0261);
        g = (RandomImageView)a1.findViewById(0x7f0a026d);
        e = (ViewSwitcher)a1.findViewById(0x7f0a0264);
        b = (TextView)a1.findViewById(0x7f0a026c);
        a();
    }

    public void onFinishInflate()
    {
        if (!h)
        {
            h = true;
            inflate(getContext(), 0x7f0300a0, this);
            i.a(this);
        }
        super.onFinishInflate();
    }
}
