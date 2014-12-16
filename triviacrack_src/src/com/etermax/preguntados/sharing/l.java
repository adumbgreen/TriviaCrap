// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.sharing;

import android.content.Context;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.etermax.preguntados.datasource.dto.QuestionDTO;
import com.etermax.preguntados.ui.game.duelmode.g;
import com.etermax.tools.social.a.j;
import org.a.a.b.a;
import org.a.a.b.b;
import org.a.a.b.c;

// Referenced classes of package com.etermax.preguntados.sharing:
//            k

public final class l extends k
    implements a, b
{

    private boolean o;
    private final c p = new c();

    public l(Context context, QuestionDTO questiondto, com.etermax.preguntados.c.a.b b1, g g, com.etermax.preguntados.e.c c1)
    {
        super(context, questiondto, b1, g, c1);
        o = false;
        c();
    }

    public static k a(Context context, QuestionDTO questiondto, com.etermax.preguntados.c.a.b b1, g g, com.etermax.preguntados.e.c c1)
    {
        l l1 = new l(context, questiondto, b1, g, c1);
        l1.onFinishInflate();
        return l1;
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
        j = (LinearLayout)a1.findViewById(0x7f0a02a3);
        h = (Button)a1.findViewById(0x7f0a02ac);
        d = (TextView)a1.findViewById(0x7f0a02a2);
        e = (Button)a1.findViewById(0x7f0a02a6);
        b = (ImageView)a1.findViewById(0x7f0a029d);
        i = (ImageView)a1.findViewById(0x7f0a02a4);
        c = (LinearLayout)a1.findViewById(0x7f0a029b);
        k = (TextView)a1.findViewById(0x7f0a029f);
        g = (Button)a1.findViewById(0x7f0a02aa);
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
