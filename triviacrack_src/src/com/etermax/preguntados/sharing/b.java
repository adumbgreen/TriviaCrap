// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.sharing;

import android.content.Context;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.ViewSwitcher;
import com.etermax.gamescommon.datasource.dto.AchievementDTO;
import com.etermax.tools.social.a.j;
import org.a.a.b.a;
import org.a.a.b.c;

// Referenced classes of package com.etermax.preguntados.sharing:
//            a

public final class b extends com.etermax.preguntados.sharing.a
    implements a, org.a.a.b.b
{

    private boolean g;
    private final c h = new c();

    public b(Context context, AchievementDTO achievementdto)
    {
        super(context, achievementdto);
        g = false;
        c();
    }

    public static com.etermax.preguntados.sharing.a a(Context context, AchievementDTO achievementdto)
    {
        b b1 = new b(context, achievementdto);
        b1.onFinishInflate();
        return b1;
    }

    private void c()
    {
        c c1 = org.a.a.b.c.a(h);
        org.a.a.b.c.a(this);
        m = com.etermax.gamescommon.login.datasource.b.a(getContext());
        n = j.a(getContext());
        org.a.a.b.c.a(c1);
    }

    public void a(a a1)
    {
        f = (ViewSwitcher)a1.findViewById(0x7f0a00c6);
        b = (TextView)a1.findViewById(0x7f0a0080);
        a = (TextView)a1.findViewById(0x7f0a0048);
        d = (TextView)a1.findViewById(0x7f0a03be);
        e = (ImageView)a1.findViewById(0x7f0a0047);
        c = (TextView)a1.findViewById(0x7f0a0142);
        a();
    }

    public void onFinishInflate()
    {
        if (!g)
        {
            g = true;
            inflate(getContext(), 0x7f03011e, this);
            h.a(this);
        }
        super.onFinishInflate();
    }
}
