// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.rankings;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.support.v4.app.Fragment;
import android.widget.ImageView;
import android.widget.TextView;
import com.etermax.o;
import com.etermax.preguntados.datasource.dto.UserRankDTO;
import com.etermax.preguntados.sharing.ShareView;
import com.etermax.preguntados.sharing.v;
import com.etermax.tools.navigation.b;
import java.util.Locale;

// Referenced classes of package com.etermax.preguntados.ui.rankings:
//            o, p, n

public class m extends b
{

    UserRankDTO a;
    TextView b;
    TextView c;
    ImageView d;

    public m()
    {
    }

    private Drawable a(Context context, int i)
    {
        Locale locale = Locale.US;
        Object aobj[] = new Object[1];
        aobj[0] = Integer.valueOf(i);
        String s = String.format(locale, "%02d", aobj);
        int j = com.etermax.a.b.c(context, (new StringBuilder()).append("ranking_puesto_").append(s).toString());
        if (j != 0 && i <= 3)
        {
            return getResources().getDrawable(j);
        } else
        {
            return getResources().getDrawable(com.etermax.a.b.c(context, "ranking_puesto_04"));
        }
    }

    public static Fragment a(UserRankDTO userrankdto)
    {
        return o.e().a(userrankdto).a();
    }

    public n a()
    {
        return new n() {

            final m a;

            public void a(m m1)
            {
            }

            public void b(ShareView shareview)
            {
            }

            
            {
                a = m.this;
                super();
            }
        };
    }

    public void b()
    {
        String s = getString(o.place_weekly_ranking);
        Object aobj[] = new Object[1];
        aobj[0] = Integer.valueOf(a.getPosition());
        String s1 = String.format(s, aobj);
        if (a.getPosition() <= 3)
        {
            b.setText((new StringBuilder()).append(getString(o.congrats)).append(" ").append(s1).toString());
        } else
        {
            b.setText(s1);
        }
        d.setImageDrawable(a(getApplicationContext(), a.getPosition()));
        c.setText(o.weekly_ranking);
    }

    public void c()
    {
        ((n)mCallbacks).a(this);
    }

    public void d()
    {
        com.etermax.preguntados.sharing.u u = v.a(getApplicationContext(), a);
        ((n)mCallbacks).b(u);
    }

    public Object getDummyCallbacks()
    {
        return a();
    }
}
