// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.achievements.ui;

import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import com.etermax.gamescommon.login.datasource.b;
import org.a.a.b.a;
import org.a.a.b.c;

// Referenced classes of package com.etermax.gamescommon.achievements.ui:
//            BaseAchievementsActivity, m

public final class BaseAchievementsActivity_ extends BaseAchievementsActivity
    implements a
{

    private final c c = new c();

    public BaseAchievementsActivity_()
    {
    }

    private void a(Bundle bundle)
    {
        b = com.etermax.gamescommon.achievements.ui.m.a(this);
        a = b.a(this);
    }

    public void onCreate(Bundle bundle)
    {
        c c1 = org.a.a.b.c.a(c);
        a(bundle);
        super.onCreate(bundle);
        org.a.a.b.c.a(c1);
    }

    public boolean onKeyDown(int i, KeyEvent keyevent)
    {
        if (org.a.a.c.a() < 5 && i == 4 && keyevent.getRepeatCount() == 0)
        {
            onBackPressed();
        }
        return super.onKeyDown(i, keyevent);
    }

    public void setContentView(int i)
    {
        super.setContentView(i);
        c.a(this);
    }

    public void setContentView(View view)
    {
        super.setContentView(view);
        c.a(this);
    }

    public void setContentView(View view, android.view.ViewGroup.LayoutParams layoutparams)
    {
        super.setContentView(view, layoutparams);
        c.a(this);
    }
}
