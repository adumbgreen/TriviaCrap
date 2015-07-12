// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.achievements.ui;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import com.etermax.gamescommon.datasource.dto.AchievementDTO;
import com.etermax.gamescommon.login.datasource.a;
import com.etermax.tools.navigation.BaseFragmentActivity;

// Referenced classes of package com.etermax.gamescommon.achievements.ui:
//            o, i, k

public class BaseAchievementsActivity extends BaseFragmentActivity
    implements o
{

    protected a a;
    protected k b;

    public BaseAchievementsActivity()
    {
    }

    protected Fragment a()
    {
        return i.b();
    }

    public void a(AchievementDTO achievementdto)
    {
    }

    public void onBackPressed()
    {
        Fragment fragment = getSupportFragmentManager().findFragmentByTag("new_achievement_fg");
        if (fragment != null && fragment.isVisible())
        {
            b.b();
            return;
        } else
        {
            super.onBackPressed();
            return;
        }
    }
}
