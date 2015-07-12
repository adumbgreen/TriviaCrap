// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.AsyncTask;
import android.os.Handler;
import android.util.Log;
import com.admarvel.android.util.Logging;
import java.lang.ref.WeakReference;
import java.util.Map;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelInterstitialAds, a, c, AdMarvelAnalyticsAdapter, 
//            AdMarvelAd, b, AdMarvelAdapter, ab, 
//            i

class j extends AsyncTask
{

    private Map a;
    private AdMarvelInterstitialAds b;
    private final WeakReference c;

    public j(Context context)
    {
        c = new WeakReference(context);
    }

    protected transient AdMarvelAd a(Object aobj[])
    {
        String s;
        String s1;
        String s2;
        int k;
        String s3;
        int l;
        String s4;
        Handler handler;
        Context context;
        a a1;
        a = (Map)aobj[0];
        s = (String)aobj[1];
        s1 = (String)aobj[2];
        s2 = (String)aobj[3];
        k = ((Integer)aobj[4]).intValue();
        s3 = (String)aobj[5];
        b = (AdMarvelInterstitialAds)aobj[6];
        l = ((Integer)aobj[7]).intValue();
        s4 = (String)aobj[8];
        handler = (Handler)aobj[9];
        context = (Context)c.get();
        a1 = new a();
        if (context != null) goto _L2; else goto _L1
_L1:
        AdMarvelAd admarvelad = null;
_L4:
        return admarvelad;
_L2:
        Map map1 = com.admarvel.android.ads.c.a("com.admarvel.android.admarvelmologiqadapter.AdMarvelMologiqAdapter", context).getEnhancedTargetParams(s1, a);
        Map map = map1;
_L6:
        Exception exception;
        String s5;
        AdMarvelXMLReader admarvelxmlreader;
        int i1;
        AdMarvelAd admarvelad1;
        if (map != null)
        {
            if (a != null)
            {
                a.putAll(map);
            } else
            {
                a = map;
            }
        }
        if (AdMarvelInterstitialAds.enableOfflineSDK)
        {
            s5 = a1.a(a.a.b, context, s2, k, s3, a, s, s1, l, s4, false, handler, false, b.isAutoScalingEnabled());
        } else
        {
            s5 = a1.a(a.a.b, context, s2, k, s3, a, s, s1, l, s4, false, handler, false, b.isAutoScalingEnabled(), false);
        }
        admarvelad = new AdMarvelAd(s5, a, s, s1, s2, k, s3, false, context.getPackageName());
        admarvelad.setRequestJson(a1.a());
        if (AdMarvelInterstitialAds.enableOfflineSDK)
        {
            SharedPreferences sharedpreferences = context.getSharedPreferences("admarvel_preferences", 0);
            String s6 = sharedpreferences.getString("banner_folder", "NULL");
            admarvelad.setOfflineBaseUrl((new StringBuilder()).append("file://").append(sharedpreferences.getString("childDirectory", "NULL")).append("/").append(s6).toString());
            admarvelad.setOfflinekeyUrl((new StringBuilder()).append(sharedpreferences.getString("childDirectory", "NULL")).append("/").append(s6).toString());
        }
        if (s5 == null)
        {
            break MISSING_BLOCK_LABEL_585;
        }
        Exception exception3;
        try
        {
            admarvelxmlreader = admarvelad.loadAd(null);
        }
        catch (Exception exception2)
        {
            try
            {
                Logging.log(Log.getStackTraceString(exception2));
                admarvelad.setAdType(AdMarvelAd.AdType.ERROR);
                admarvelad.setErrorCode(303);
            }
            catch (Exception exception1)
            {
                admarvelad.setAdType(AdMarvelAd.AdType.ERROR);
                admarvelad.setErrorCode(303);
                return admarvelad;
            }
            return admarvelad;
        }
        if (admarvelxmlreader == null)
        {
            break MISSING_BLOCK_LABEL_566;
        }
        if (admarvelad.getSdkNetwork() == null) goto _L4; else goto _L3
_L3:
        i1 = admarvelad.getSdkNetwork().length();
        if (i1 <= 0) goto _L4; else goto _L5
_L5:
        admarvelad1 = com.admarvel.android.ads.b.a("ADMARVELGUID", admarvelad.getSdkNetwork()).loadAd(admarvelad, admarvelxmlreader);
        return admarvelad1;
        exception;
        map = null;
          goto _L6
        exception3;
        Logging.log(Log.getStackTraceString(exception3));
        admarvelad.setAdType(AdMarvelAd.AdType.ERROR);
        admarvelad.setErrorCode(303);
        return admarvelad;
        admarvelad.setAdType(AdMarvelAd.AdType.ERROR);
        admarvelad.setErrorCode(303);
        return admarvelad;
        admarvelad.setAdType(AdMarvelAd.AdType.ERROR);
        admarvelad.setErrorCode(303);
        return admarvelad;
    }

    protected void a(AdMarvelAd admarvelad)
    {
        AdMarvelUtils.ErrorReason errorreason1;
        int l;
        Context context4;
        super.onPostExecute(admarvelad);
        if (admarvelad.getAdType() != AdMarvelAd.AdType.ERROR)
        {
            break MISSING_BLOCK_LABEL_79;
        }
        errorreason1 = ab.a(admarvelad.getErrorCode());
        l = ab.a(errorreason1);
        context4 = (Context)c.get();
        if (context4 == null)
        {
            break MISSING_BLOCK_LABEL_286;
        }
        Context context3;
        try
        {
            AdMarvelInterstitialAds.getListener().a(context4, null, null, l, errorreason1, admarvelad.getSiteId(), admarvelad.getId(), admarvelad.getTargetParams(), admarvelad.getIpAddress());
            return;
        }
        catch (Exception exception)
        {
            Logging.log(Log.getStackTraceString(exception));
        }
        break MISSING_BLOCK_LABEL_135;
        if (admarvelad.getAdType() != AdMarvelAd.AdType.SDKCALL)
        {
            break MISSING_BLOCK_LABEL_250;
        }
        if (admarvelad.getSdkNetwork() != null)
        {
            context3 = (Context)c.get();
            b.requestPendingAdapterAd(a, admarvelad, admarvelad.getSdkNetwork(), context3);
            return;
        }
        break MISSING_BLOCK_LABEL_195;
        AdMarvelUtils.ErrorReason errorreason = ab.a(303);
        int k = ab.a(errorreason);
        Context context = (Context)c.get();
        if (context != null)
        {
            AdMarvelInterstitialAds.getListener().a(context, null, null, k, errorreason, admarvelad.getSiteId(), admarvelad.getId(), admarvelad.getTargetParams(), admarvelad.getIpAddress());
            return;
        }
        break MISSING_BLOCK_LABEL_286;
        String s;
        if (!admarvelad.isDisableAdrequest())
        {
            break MISSING_BLOCK_LABEL_250;
        }
        s = admarvelad.getDisableAdDuration();
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_250;
        }
        Context context2 = (Context)c.get();
        if (b == null || context2 == null)
        {
            break MISSING_BLOCK_LABEL_286;
        }
        b.disableAdRequest(s, admarvelad, context2);
        return;
        Context context1;
        if (c == null)
        {
            break MISSING_BLOCK_LABEL_280;
        }
        context1 = (Context)c.get();
_L1:
        b.requestPendingAdMarvelAd(admarvelad, context1);
        return;
        context1 = null;
          goto _L1
    }

    protected Object doInBackground(Object aobj[])
    {
        return a(aobj);
    }

    protected void onPostExecute(Object obj)
    {
        a((AdMarvelAd)obj);
    }
}
