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
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.etermax.gamescommon.datasource.dto.AchievementDTO;

// Referenced classes of package com.etermax.gamescommon.achievements.ui:
//            k

public class b extends RelativeLayout
{

    TextView a;
    ImageView b;
    ProgressBar c;
    k d;

    public b(Context context)
    {
        super(context);
    }

    private void b(AchievementDTO achievementdto)
    {
        int i = Color.parseColor("#e9e9e9");
        android.graphics.PorterDuff.Mode mode = android.graphics.PorterDuff.Mode.SRC_ATOP;
        Drawable drawable = getResources().getDrawable(achievementdto.getActiveImageResourceId());
        drawable.setColorFilter(i, mode);
        b.setImageDrawable(drawable);
    }

    public void a(AchievementDTO achievementdto)
    {
        setOnClickListener(new android.view.View.OnClickListener(achievementdto) {

            final AchievementDTO a;
            final b b;

            public void onClick(View view)
            {
                if (a.getStatus() == com.etermax.gamescommon.datasource.dto.AchievementDTO.Status.OBTAINED)
                {
                    b.d.a(a);
                }
            }

            
            {
                b = b.this;
                a = achievementdto;
                super();
            }
        });
        a.setText(achievementdto.getTitle());
        b.setVisibility(0);
        c.setVisibility(4);
        if (achievementdto.getStatus() == com.etermax.gamescommon.datasource.dto.AchievementDTO.Status.NOT_OBTAINED)
        {
            if (achievementdto.getActiveImageResourceId() != 0)
            {
                b(achievementdto);
                c.setVisibility(0);
                c.setProgress(achievementdto.getPercent());
                return;
            } else
            {
                b.setVisibility(4);
                return;
            }
        }
        if (achievementdto.getActiveImageResourceId() != 0)
        {
            b.setImageResource(achievementdto.getActiveImageResourceId());
            return;
        } else
        {
            b.setVisibility(4);
            return;
        }
    }
}
