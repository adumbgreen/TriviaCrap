// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.lite;

import com.etermax.gamescommon.datasource.d;
import com.etermax.gamescommon.datasource.i;
import com.etermax.gamescommon.login.datasource.b;
import com.etermax.gamescommon.promotion.PromotionsManager_;
import com.etermax.preguntados.c.a.c;
import com.etermax.preguntados.datasource.e;

// Referenced classes of package com.etermax.preguntados.lite:
//            PreguntadosApplication

public final class PreguntadosApplication_ extends PreguntadosApplication
{

    private static PreguntadosApplication m;

    public PreguntadosApplication_()
    {
    }

    private void z()
    {
        g = e.a(this);
        e = b.a(this);
        c = d.a(this);
        b = i.a(this);
        j = c.a(this);
        i = PromotionsManager_.getInstance_(this);
        h = com.etermax.preguntados.g.b.a(this);
        d = com.etermax.tools.b.c.a(this);
        f = com.etermax.gamescommon.c.b.b(this);
        a = com.etermax.gamescommon.login.datasource.d.b(this);
        k = com.etermax.preguntados.b.b.a(this);
        j();
    }

    public void onCreate()
    {
        m = this;
        z();
        super.onCreate();
    }
}
