// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.sharing;

import android.content.Context;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.ViewSwitcher;
import com.etermax.preguntados.datasource.dto.UserLevelDataDTO;
import com.etermax.tools.social.a.j;
import org.a.a.b.a;
import org.a.a.b.b;
import org.a.a.b.c;

// Referenced classes of package com.etermax.preguntados.sharing:
//            g

public final class h extends g
    implements a, b
{

    private boolean g;
    private final c h = new c();

    public h(Context context, UserLevelDataDTO userleveldatadto)
    {
        super(context, userleveldatadto);
        g = false;
        c();
    }

    public static g a(Context context, UserLevelDataDTO userleveldatadto)
    {
        h h1 = new h(context, userleveldatadto);
        h1.onFinishInflate();
        return h1;
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
        b = (TextView)a1.findViewById(0x7f0a036b);
        a = (TextView)a1.findViewById(0x7f0a036a);
        d = (TextView)a1.findViewById(0x7f0a0370);
        f = (ViewSwitcher)a1.findViewById(0x7f0a036e);
        c = (TextView)a1.findViewById(0x7f0a036f);
        e = (ImageView)a1.findViewById(0x7f0a036c);
        a();
    }

    public void onFinishInflate()
    {
        if (!g)
        {
            g = true;
            inflate(getContext(), 0x7f0300eb, this);
            h.a(this);
        }
        super.onFinishInflate();
    }
}
