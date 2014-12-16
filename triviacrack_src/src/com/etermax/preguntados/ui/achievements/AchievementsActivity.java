// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.achievements;

import android.content.Context;
import android.content.Intent;
import com.etermax.gamescommon.achievements.ui.BaseAchievementsActivity;
import com.etermax.gamescommon.datasource.dto.AchievementDTO;
import com.etermax.preguntados.sharing.b;
import com.etermax.preguntados.sharing.m;

// Referenced classes of package com.etermax.preguntados.ui.achievements:
//            AchievementsActivity_

public class AchievementsActivity extends BaseAchievementsActivity
{

    m c;

    public AchievementsActivity()
    {
    }

    public static Intent a(Context context)
    {
        return new Intent(context, com/etermax/preguntados/ui/achievements/AchievementsActivity_);
    }

    public void a(AchievementDTO achievementdto)
    {
        com.etermax.preguntados.sharing.a a1 = b.a(getApplicationContext(), achievementdto);
        c.a(a1);
    }
}
