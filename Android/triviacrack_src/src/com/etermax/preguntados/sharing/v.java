// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.sharing;

import android.content.Context;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.ViewSwitcher;
import com.etermax.preguntados.datasource.dto.UserRankDTO;
import com.etermax.tools.social.a.j;
import org.a.a.b.a;
import org.a.a.b.b;
import org.a.a.b.c;

// Referenced classes of package com.etermax.preguntados.sharing:
//            u

public final class v extends u
    implements a, b
{

    private boolean e;
    private final c f = new c();

    public v(Context context, UserRankDTO userrankdto)
    {
        super(context, userrankdto);
        e = false;
        c();
    }

    public static u a(Context context, UserRankDTO userrankdto)
    {
        v v1 = new v(context, userrankdto);
        v1.onFinishInflate();
        return v1;
    }

    private void c()
    {
        c c1 = org.a.a.b.c.a(f);
        org.a.a.b.c.a(this);
        n = j.a(getContext());
        m = com.etermax.gamescommon.login.datasource.b.a(getContext());
        org.a.a.b.c.a(c1);
    }

    public void a(a a1)
    {
        d = (ViewSwitcher)a1.findViewById(0x7f0a00c6);
        c = (ImageView)a1.findViewById(0x7f0a0047);
        b = (TextView)a1.findViewById(0x7f0a04ba);
        a = (TextView)a1.findViewById(0x7f0a0142);
        a();
    }

    public void onFinishInflate()
    {
        if (!e)
        {
            e = true;
            inflate(getContext(), 0x7f030122, this);
            f.a(this);
        }
        super.onFinishInflate();
    }
}
