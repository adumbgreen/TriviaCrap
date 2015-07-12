// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.sharing;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.ViewSwitcher;
import com.etermax.a.b;
import com.etermax.gamescommon.login.datasource.a;
import com.etermax.o;
import com.etermax.preguntados.datasource.dto.UserRankDTO;
import java.util.Locale;

// Referenced classes of package com.etermax.preguntados.sharing:
//            ShareView

public class u extends ShareView
{

    TextView a;
    TextView b;
    ImageView c;
    ViewSwitcher d;
    private UserRankDTO e;

    public u(Context context, UserRankDTO userrankdto)
    {
        super(context);
        e = userrankdto;
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

    public void a()
    {
        b();
    }

    public void b()
    {
        l.a(d, m.j(), m.g());
        TextView textview = b;
        Context context = getContext();
        int i = o.user_place_ranking_3p;
        Object aobj[] = new Object[1];
        aobj[0] = Integer.valueOf(e.getPosition());
        textview.setText(context.getString(i, aobj));
        c.setImageDrawable(a(getContext(), e.getPosition()));
        String s;
        if (TextUtils.isEmpty(m.j()) || !m.l())
        {
            s = (new StringBuilder()).append("@").append(m.g()).toString();
        } else
        {
            s = m.k();
        }
        a.setText(s);
    }

    public String getShareText()
    {
        StringBuilder stringbuilder = new StringBuilder();
        Context context = getContext();
        int i = o.user_place_ranking;
        Object aobj[] = new Object[1];
        aobj[0] = Integer.valueOf(e.getPosition());
        return stringbuilder.append(context.getString(i, aobj)).append(" - ").append(getContext().getString(o.landing_url)).toString();
    }
}
