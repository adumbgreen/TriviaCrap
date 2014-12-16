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
import com.etermax.j;
import com.etermax.o;
import com.etermax.preguntados.datasource.dto.UserLevelDataDTO;
import com.etermax.tools.nationality.NationalityManager;
import java.util.Locale;

// Referenced classes of package com.etermax.preguntados.sharing:
//            ShareView

public class g extends ShareView
{

    TextView a;
    TextView b;
    TextView c;
    TextView d;
    ImageView e;
    ViewSwitcher f;
    private UserLevelDataDTO g;
    private Context h;

    public g(Context context, UserLevelDataDTO userleveldatadto)
    {
        super(context);
        h = context;
        g = userleveldatadto;
    }

    private Drawable a(Context context, int i)
    {
        int k = getResources().getInteger(j.level_image_count);
        int l = 1 + (i - 1) % k;
        Locale locale = Locale.US;
        Object aobj[] = new Object[1];
        aobj[0] = Integer.valueOf(l);
        String s = String.format(locale, "%02d", aobj);
        int i1 = com.etermax.a.b.c(context, (new StringBuilder()).append("level_up_").append(s).toString());
        if (i1 != 0)
        {
            return getResources().getDrawable(i1);
        } else
        {
            return null;
        }
    }

    public void a()
    {
        b();
    }

    public void b()
    {
        l.a(f, m.j(), m.g());
        String s = getContext().getString(NationalityManager.getNameResource(getContext(), m.n()));
        String s1;
        TextView textview;
        Resources resources;
        int i;
        Object aobj[];
        String s2;
        if (TextUtils.isEmpty(m.j()))
        {
            s1 = (new StringBuilder()).append("@").append(m.g()).toString();
        } else
        {
            s1 = m.k();
        }
        c.setText(s1);
        d.setText(s);
        e.setImageDrawable(a(h, g.getLevel()));
        textview = a;
        resources = h.getResources();
        i = o.level_number;
        aobj = new Object[1];
        aobj[0] = Integer.valueOf(g.getLevel());
        textview.setText(resources.getString(i, aobj));
        s2 = (new StringBuilder()).append(h.getString(o.congratulations)).append(" ").append(h.getString(o.you_made_it)).toString();
        b.setText(s2);
    }

    public String getShareText()
    {
        String s;
        StringBuilder stringbuilder;
        Context context;
        int i;
        Object aobj[];
        if (TextUtils.isEmpty(m.j()))
        {
            s = (new StringBuilder()).append("@").append(m.g()).toString();
        } else
        {
            s = m.k();
        }
        stringbuilder = new StringBuilder();
        context = getContext();
        i = o.user_levelup_3p;
        aobj = new Object[2];
        aobj[0] = s;
        aobj[1] = Integer.valueOf(g.getLevel());
        return stringbuilder.append(context.getString(i, aobj)).append(" - ").append(getContext().getString(o.landing_url)).toString();
    }
}
