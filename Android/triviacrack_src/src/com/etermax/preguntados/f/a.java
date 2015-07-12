// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.f;

import android.content.Context;
import android.support.v4.app.FragmentActivity;
import com.etermax.gamescommon.b.j;
import com.etermax.gamescommon.b.k;
import com.etermax.o;

// Referenced classes of package com.etermax.preguntados.f:
//            b

public class a extends com.etermax.gamescommon.social.a
{

    static com.etermax.tools.f.a h;
    private static String j;
    Context i;
    private b k;

    public a()
    {
    }

    static void b(String s)
    {
        d(s);
    }

    static void c(String s)
    {
        e(s);
    }

    private static void d(String s)
    {
        j j1 = new j();
        j1.a(s);
        h.a(j1);
    }

    static String e()
    {
        return j;
    }

    private static void e(String s)
    {
        k k1 = new k();
        k1.a(s);
        h.a(k1);
    }

    protected void a()
    {
        if (g != null)
        {
            k = com.etermax.preguntados.f.b.b((new StringBuilder()).append(g.getString(o.login_with)).append(" ").append(g.getString(o.facebook)).toString(), g.getString(o.link_facebook_description_02), g.getString(o.connect_facebook), this);
            k.show(g.getSupportFragmentManager(), "facebook_ask_dialog");
        }
    }

    public void a(String s)
    {
        j = s;
    }

    protected void b()
    {
        if (g != null)
        {
            k = com.etermax.preguntados.f.b.b(g.getString(o.link_your_account), g.getString(o.link_facebook_description), g.getString(o.connect_facebook), this);
            k.show(g.getSupportFragmentManager(), "facebook_ask_dialog");
        }
    }
}
