// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.achievements.ui;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.etermax.gamescommon.datasource.dto.AchievementDTO;

// Referenced classes of package com.etermax.gamescommon.achievements.ui:
//            k

public class d extends RelativeLayout
{

    TextView a;
    TextView b;
    ImageView c;
    TextView d;
    TextView e;
    LinearLayout f;
    ImageView g;
    k h;

    public d(Context context)
    {
        super(context);
    }

    private void b(AchievementDTO achievementdto)
    {
        int i = Color.parseColor("#e9e9e9");
        android.graphics.PorterDuff.Mode mode = android.graphics.PorterDuff.Mode.SRC_ATOP;
        Drawable drawable = getResources().getDrawable(achievementdto.getActiveImageResourceId());
        drawable.setColorFilter(i, mode);
        g.setImageDrawable(drawable);
    }

    private void c(AchievementDTO achievementdto)
    {
        Drawable drawable = getResources().getDrawable(achievementdto.getActiveImageResourceId());
        drawable.setColorFilter(null);
        g.setImageDrawable(drawable);
    }

    public void a(AchievementDTO achievementdto)
    {
        setOnClickListener(new android.view.View.OnClickListener(achievementdto) {

            final AchievementDTO a;
            final d b;

            public void onClick(View view)
            {
                if (a.getStatus() == com.etermax.gamescommon.datasource.dto.AchievementDTO.Status.OBTAINED)
                {
                    b.h.a(a);
                }
            }

            
            {
                b = d.this;
                a = achievementdto;
                super();
            }
        });
        a.setText(achievementdto.getTitle());
        b.setText(achievementdto.getDescription());
        g.setVisibility(0);
        if (achievementdto.getStatus() == com.etermax.gamescommon.datasource.dto.AchievementDTO.Status.NOT_OBTAINED)
        {
            f.setVisibility(0);
            c.setVisibility(4);
            d.setText((new StringBuilder()).append(achievementdto.getPercent()).append("%").toString());
            e.setText(String.valueOf(achievementdto.getRewards()));
            if (achievementdto.getActiveImageResourceId() != 0)
            {
                b(achievementdto);
                return;
            } else
            {
                g.setVisibility(4);
                return;
            }
        }
        f.setVisibility(4);
        c.setVisibility(0);
        if (achievementdto.getActiveImageResourceId() != 0)
        {
            c(achievementdto);
            return;
        } else
        {
            g.setVisibility(4);
            return;
        }
    }
}
