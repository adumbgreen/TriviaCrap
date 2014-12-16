// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.achievements.ui;

import android.view.View;
import com.etermax.gamescommon.datasource.dto.AchievementDTO;

// Referenced classes of package com.etermax.gamescommon.achievements.ui:
//            b, k

class a
    implements android.view..OnClickListener
{

    final AchievementDTO a;
    final b b;

    public void onClick(View view)
    {
        if (a.getStatus() == com.etermax.gamescommon.datasource.dto.evementDTO.Status.OBTAINED)
        {
            b.d.a(a);
        }
    }

    vementDTO(b b1, AchievementDTO achievementdto)
    {
        b = b1;
        a = achievementdto;
        super();
    }
}
