// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.sharing;

import android.content.Context;
import android.text.TextUtils;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.ViewSwitcher;
import com.etermax.gamescommon.dashboard.b;
import com.etermax.gamescommon.datasource.dto.AchievementDTO;
import com.etermax.o;
import com.etermax.tools.nationality.NationalityManager;

// Referenced classes of package com.etermax.preguntados.sharing:
//            ShareView

public class a extends ShareView
{

    TextView a;
    TextView b;
    TextView c;
    TextView d;
    ImageView e;
    ViewSwitcher f;
    private AchievementDTO g;

    public a(Context context, AchievementDTO achievementdto)
    {
        super(context);
        g = achievementdto;
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
        if (TextUtils.isEmpty(m.j()))
        {
            s1 = (new StringBuilder()).append("@").append(m.g()).toString();
        } else
        {
            s1 = m.k();
        }
        a.setText(g.getTitle());
        b.setText(g.getDescription());
        c.setText(s1);
        d.setText(s);
        e.setImageResource(g.getImageResourceId());
    }

    public String getShareText()
    {
        StringBuilder stringbuilder = new StringBuilder();
        String s = getContext().getString(o.user_unlocked_badge);
        Object aobj[] = new Object[1];
        aobj[0] = g.getTitle();
        return stringbuilder.append(String.format(s, aobj)).append(" - ").append(getContext().getString(o.landing_url)).toString();
    }
}
