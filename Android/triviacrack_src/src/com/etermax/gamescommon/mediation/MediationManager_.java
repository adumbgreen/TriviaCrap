// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.mediation;

import android.content.Context;
import com.etermax.gamescommon.datasource.k;
import org.a.a.b.c;

// Referenced classes of package com.etermax.gamescommon.mediation:
//            MediationManager

public final class MediationManager_ extends MediationManager
{

    private static MediationManager_ instance_;
    private Context context_;

    private MediationManager_(Context context)
    {
        context_ = context;
    }

    public static MediationManager_ getInstance_(Context context)
    {
        if (instance_ == null)
        {
            c c1 = c.a(null);
            instance_ = new MediationManager_(context.getApplicationContext());
            instance_.init_();
            c.a(c1);
        }
        return instance_;
    }

    private void init_()
    {
        mContext = context_;
        mDtoPersistanceManager = k.a(context_);
        afterInject();
    }
}
