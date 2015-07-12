// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.achievements.ui;

import android.content.Context;
import android.util.Log;
import com.etermax.gamescommon.datasource.i;
import com.etermax.tools.navigation.BaseFragmentActivity;

// Referenced classes of package com.etermax.gamescommon.achievements.ui:
//            k

public final class m extends k
{

    private Context c;

    private m(Context context)
    {
        c = context;
        c();
    }

    public static m a(Context context)
    {
        return new m(context);
    }

    private void c()
    {
        if (c instanceof BaseFragmentActivity)
        {
            a = (BaseFragmentActivity)c;
        } else
        {
            Log.w("AchievementsManager_", (new StringBuilder()).append("Due to Context class ").append(c.getClass().getSimpleName()).append(", the @RootContext BaseFragmentActivity won't be populated").toString());
        }
        b = i.a(c);
    }
}
