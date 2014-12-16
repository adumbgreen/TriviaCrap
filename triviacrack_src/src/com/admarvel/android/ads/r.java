// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.content.Context;
import com.admarvel.android.util.Logging;
import java.util.Map;

// Referenced classes of package com.admarvel.android.ads:
//            c, AdMarvelAnalyticsAdapter, AdMarvelView, AdMarvelAd

public class r
{

    private AdMarvelView.AdMarvelViewListener a;
    private AdMarvelView.AdMarvelViewExtendedListener b;

    public r()
    {
    }

    public void a()
    {
        if (a != null)
        {
            Logging.log("onExpand");
            a.onExpand();
            return;
        } else
        {
            Logging.log("onExpand - No listener found");
            return;
        }
    }

    public void a(Context context, AdMarvelView admarvelview, int i, AdMarvelUtils.ErrorReason errorreason, String s, int j, Map map, 
            String s1)
    {
        try
        {
            c.a("com.admarvel.android.admarvelmologiqadapter.AdMarvelMologiqAdapter", context).onFailedToReceiveAd(s, j, map, s1);
        }
        catch (Exception exception) { }
        if (a != null)
        {
            Logging.log((new StringBuilder()).append("onFailedToReceiveAd : Error Code ").append(i).toString());
            a.onFailedToReceiveAd(admarvelview, i, errorreason);
            return;
        } else
        {
            Logging.log("onFailedToReceiveAd - No listener found");
            return;
        }
    }

    public void a(Context context, AdMarvelView admarvelview, String s, int i, Map map, String s1)
    {
        try
        {
            c.a("com.admarvel.android.admarvelmologiqadapter.AdMarvelMologiqAdapter", context).onReceiveAd(s, i, map, s1);
        }
        catch (Exception exception) { }
        if (a != null)
        {
            Logging.log("onReceiveAd");
            a.onReceiveAd(admarvelview);
            return;
        } else
        {
            Logging.log("onReceiveAd - No listener found");
            return;
        }
    }

    public void a(Context context, AdMarvelView admarvelview, String s, String s1, int i, Map map, String s2)
    {
        try
        {
            c.a("com.admarvel.android.admarvelmologiqadapter.AdMarvelMologiqAdapter", context).onAdClick(s1, i, map, s, s2);
        }
        catch (Exception exception) { }
        if (a != null)
        {
            Logging.log("onClickAd");
            a.onClickAd(admarvelview, s);
            return;
        } else
        {
            Logging.log("onClickAd - No listener found");
            return;
        }
    }

    public void a(AdMarvelView.AdMarvelViewExtendedListener admarvelviewextendedlistener)
    {
        b = admarvelviewextendedlistener;
    }

    public void a(AdMarvelView.AdMarvelViewListener admarvelviewlistener)
    {
        a = admarvelviewlistener;
    }

    public void a(AdMarvelView admarvelview)
    {
        if (a != null)
        {
            Logging.log("onRequestAd");
            a.onRequestAd(admarvelview);
            return;
        } else
        {
            Logging.log("onRequestAd - No listener found");
            return;
        }
    }

    public void a(AdMarvelView admarvelview, AdMarvelAd admarvelad)
    {
        if (b != null)
        {
            Logging.log("onAdFetched");
            b.onAdFetched(admarvelview, admarvelad);
            return;
        } else
        {
            Logging.log("onAdFetched - No listener found");
            return;
        }
    }

    public void b()
    {
        if (a != null)
        {
            Logging.log("onClose");
            a.onClose();
            return;
        } else
        {
            Logging.log("onClose - No listener found");
            return;
        }
    }

    public void b(Context context, AdMarvelView admarvelview, String s, int i, Map map, String s1)
    {
        try
        {
            c.a("com.admarvel.android.admarvelmologiqadapter.AdMarvelMologiqAdapter", context).onReceiveAd(s, i, map, s1);
        }
        catch (Exception exception) { }
        if (b != null)
        {
            Logging.log("onDisplayedAd");
            b.onAdDisplayed(admarvelview);
            return;
        } else
        {
            Logging.log("onDisplayedAd - No listener found");
            return;
        }
    }
}
