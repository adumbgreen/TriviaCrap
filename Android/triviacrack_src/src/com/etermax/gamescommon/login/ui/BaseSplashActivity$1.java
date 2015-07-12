// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.login.ui;

import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.f;
import com.google.android.gms.common.g;
import com.mobileapptracker.h;
import java.io.IOException;

// Referenced classes of package com.etermax.gamescommon.login.ui:
//            BaseSplashActivity

class a
    implements Runnable
{

    final BaseSplashActivity a;

    public void run()
    {
        try
        {
            com.google.android.gms.ads.identifier.nfo nfo = AdvertisingIdClient.getAdvertisingIdInfo(a.getApplicationContext());
            BaseSplashActivity.a(a).a(nfo.getId(), nfo.isLimitAdTrackingEnabled());
            return;
        }
        catch (IOException ioexception)
        {
            BaseSplashActivity.a(a).b(android.provider.ring(a.getContentResolver(), "android_id"));
            return;
        }
        catch (f f1)
        {
            BaseSplashActivity.a(a).b(android.provider.ring(a.getContentResolver(), "android_id"));
            return;
        }
        catch (g g1)
        {
            BaseSplashActivity.a(a).b(android.provider.ring(a.getContentResolver(), "android_id"));
            return;
        }
        catch (NullPointerException nullpointerexception)
        {
            BaseSplashActivity.a(a).b(android.provider.ring(a.getContentResolver(), "android_id"));
        }
    }

    ent.Info(BaseSplashActivity basesplashactivity)
    {
        a = basesplashactivity;
        super();
    }
}
