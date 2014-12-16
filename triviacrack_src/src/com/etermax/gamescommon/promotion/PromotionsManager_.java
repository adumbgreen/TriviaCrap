// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.promotion;

import android.content.Context;
import com.etermax.gamescommon.h;
import org.a.a.b.c;

// Referenced classes of package com.etermax.gamescommon.promotion:
//            PromotionsManager

public final class PromotionsManager_ extends PromotionsManager
{

    private static PromotionsManager_ instance_;
    private Context context_;

    private PromotionsManager_(Context context)
    {
        context_ = context;
    }

    public static PromotionsManager_ getInstance_(Context context)
    {
        if (instance_ == null)
        {
            c c1 = c.a(null);
            instance_ = new PromotionsManager_(context.getApplicationContext());
            instance_.init_();
            c.a(c1);
        }
        return instance_;
    }

    private void init_()
    {
        mPreferences = h.a(context_);
    }
}
