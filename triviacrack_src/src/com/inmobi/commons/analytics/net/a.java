// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.inmobi.commons.analytics.net;

import android.os.Handler;
import com.inmobi.commons.analytics.util.AnalyticsUtils;
import com.inmobi.commons.internal.Log;

// Referenced classes of package com.inmobi.commons.analytics.net:
//            AnalyticsNetworkManager

final class a
    implements AnalyticsConnectivityReceiver.a
{

    a()
    {
    }

    public void a()
    {
        Log.internal("[InMobi]-[Analytics]-4.3.0", "Connectivity gone");
    }

    public void b()
    {
        Log.internal("[InMobi]-[Analytics]-4.3.0", "Connectivity came");
        if (AnalyticsNetworkManager.a() != null && !AnalyticsUtils.getStartHandle())
        {
            AnalyticsUtils.setStartHandle(true);
            AnalyticsNetworkManager.a().sendEmptyMessageDelayed(1001, AnalyticsUtils.getTimeinterval());
        }
    }
}
