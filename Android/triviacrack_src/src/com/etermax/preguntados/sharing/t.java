// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.sharing;

import android.content.Context;
import android.widget.ImageView;
import android.widget.TextView;
import com.etermax.preguntados.datasource.dto.RankingsDTO;
import com.etermax.tools.social.a.j;
import org.a.a.b.a;
import org.a.a.b.b;
import org.a.a.b.c;

// Referenced classes of package com.etermax.preguntados.sharing:
//            s

public final class t extends s
    implements a, b
{

    private boolean d;
    private final c e = new c();

    public t(Context context, RankingsDTO rankingsdto, boolean flag)
    {
        super(context, rankingsdto, flag);
        d = false;
        c();
    }

    public static s a(Context context, RankingsDTO rankingsdto, boolean flag)
    {
        t t1 = new t(context, rankingsdto, flag);
        t1.onFinishInflate();
        return t1;
    }

    private void c()
    {
        c c1 = org.a.a.b.c.a(e);
        org.a.a.b.c.a(this);
        n = j.a(getContext());
        m = com.etermax.gamescommon.login.datasource.b.a(getContext());
        org.a.a.b.c.a(c1);
    }

    public void a(a a1)
    {
        a = (ImageView)a1.findViewById(0x7f0a0044);
        c = (TextView)a1.findViewById(0x7f0a04a4);
        b = (TextView)a1.findViewById(0x7f0a04b5);
        a();
    }

    public void onFinishInflate()
    {
        if (!d)
        {
            d = true;
            inflate(getContext(), 0x7f030121, this);
            e.a(this);
        }
        super.onFinishInflate();
    }
}
