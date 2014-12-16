// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.b;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.support.v4.app.Fragment;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.etermax.h;
import com.etermax.j;
import com.etermax.o;
import com.etermax.preguntados.datasource.dto.RewardDTO;
import com.etermax.preguntados.datasource.dto.UserLevelDataDTO;
import com.etermax.preguntados.sharing.ShareView;
import com.etermax.tools.navigation.b;
import java.util.List;
import java.util.Locale;

// Referenced classes of package com.etermax.preguntados.ui.b:
//            c, d, b

public class a extends b
{

    UserLevelDataDTO a;
    ImageView b;
    TextView c;
    ImageView d;
    LinearLayout e;
    TextView f;
    TextView g;

    public a()
    {
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

    public static Fragment a(UserLevelDataDTO userleveldatadto)
    {
        return com.etermax.preguntados.ui.b.c.e().a(userleveldatadto).a();
    }

    public com.etermax.preguntados.ui.b.b a()
    {
        return new com.etermax.preguntados.ui.b.b() {

            final a a;

            public void a(ShareView shareview)
            {
            }

            public void a(a a1)
            {
            }

            
            {
                a = a.this;
                super();
            }
        };
    }

    public void b()
    {
        if (a.getRewards() != null && a.getRewards().size() > 0)
        {
            RewardDTO rewarddto = (RewardDTO)a.getRewards().get(0);
            TextView textview;
            Resources resources;
            int i;
            Object aobj[];
            String s;
            if (rewarddto.getType() == com.etermax.gamescommon.datasource.dto.AchievementDTO.RewardType.COINS)
            {
                c.setText(String.valueOf(rewarddto.getQuantity()));
                d.setImageDrawable(getResources().getDrawable(h.coins_achievment));
            } else
            if (rewarddto.getType() == com.etermax.gamescommon.datasource.dto.AchievementDTO.RewardType.EXTRA_SHOTS)
            {
                c.setText(String.valueOf(rewarddto.getQuantity()));
                d.setImageDrawable(getResources().getDrawable(h.character_spin_shop));
            } else
            {
                e.setVisibility(4);
            }
        } else
        {
            e.setVisibility(4);
        }
        b.setImageDrawable(a(getApplicationContext(), a.getLevel()));
        textview = f;
        resources = getApplicationContext().getResources();
        i = o.level_number;
        aobj = new Object[1];
        aobj[0] = Integer.valueOf(a.getLevel());
        textview.setText(resources.getString(i, aobj));
        s = (new StringBuilder()).append(getString(o.congratulations)).append(" ").append(getString(o.you_made_it)).toString();
        g.setText(s);
    }

    public void c()
    {
        ((com.etermax.preguntados.ui.b.b)mCallbacks).a(this);
    }

    public void d()
    {
        com.etermax.preguntados.sharing.g g1 = com.etermax.preguntados.sharing.h.a(getApplicationContext(), a);
        ((com.etermax.preguntados.ui.b.b)mCallbacks).a(g1);
    }

    public Object getDummyCallbacks()
    {
        return a();
    }
}
