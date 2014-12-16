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
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.Map;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelView, a, c, AdMarvelAnalyticsAdapter, 
//            AdMarvelAd, AdMarvelUtils, b, AdMarvelAdapter, 
//            ab, r

class q extends AsyncTask
{

    private Map a;
    private WeakReference b;
    private final WeakReference c;
    private final File d;

    public q(File file, Context context)
    {
        d = file;
        c = new WeakReference(context);
    }

    protected transient AdMarvelAd a(Object aobj[])
    {
        String s;
        String s1;
        String s2;
        int i;
        String s3;
        int j;
        String s4;
        Handler handler;
        Boolean boolean1;
        Boolean boolean2;
        a a1;
        Context context;
        a = (Map)aobj[0];
        s = (String)aobj[1];
        s1 = (String)aobj[2];
        s2 = (String)aobj[3];
        i = ((Integer)aobj[4]).intValue();
        s3 = (String)aobj[5];
        b = new WeakReference((AdMarvelView)aobj[6]);
        j = ((Integer)aobj[7]).intValue();
        s4 = (String)aobj[8];
        handler = (Handler)aobj[9];
        boolean1 = (Boolean)aobj[10];
        boolean2 = (Boolean)aobj[11];
        a1 = new a();
        context = (Context)c.get();
        if (context == null)
        {
            break MISSING_BLOCK_LABEL_712;
        }
        Map map1 = com.admarvel.android.ads.c.a("com.admarvel.android.admarvelmologiqadapter.AdMarvelMologiqAdapter", context).getEnhancedTargetParams(s1, a);
        Map map = map1;
_L1:
        AdMarvelAd admarvelad;
        Exception exception;
        AdMarvelView admarvelview;
        boolean flag;
        String s5;
        AdMarvelXMLReader admarvelxmlreader;
        int k;
        AdMarvelView admarvelview1;
        AdMarvelAd admarvelad1;
        if (map != null)
        {
            if (a != null)
            {
                map.putAll(a);
                a.putAll(map);
            } else
            {
                a = map;
            }
        }
        if (b != null)
        {
            admarvelview = (AdMarvelView)b.get();
        } else
        {
            admarvelview = null;
        }
        flag = false;
        if (admarvelview != null)
        {
            flag = admarvelview.a();
        }
        if (AdMarvelView.b)
        {
            s5 = a1.a(a.a.a, context, s2, i, s3, a, s, s1, j, s4, false, handler, boolean1.booleanValue(), boolean2.booleanValue());
        } else
        {
            s5 = a1.a(a.a.a, context, s2, i, s3, a, s, s1, j, s4, false, handler, boolean1.booleanValue(), boolean2.booleanValue(), flag);
        }
        admarvelad = new AdMarvelAd(s5, a, s, s1, s2, i, s3, false, context.getPackageName());
        if (AdMarvelUtils.isLogDumpEnabled())
        {
            admarvelad.setRequestJson(a1.a());
        }
        if (AdMarvelView.b)
        {
            SharedPreferences sharedpreferences = context.getSharedPreferences("admarvel_preferences", 0);
            String s6 = sharedpreferences.getString("banner_folder", "NULL");
            admarvelad.setOfflineBaseUrl((new StringBuilder()).append("file://").append(sharedpreferences.getString("childDirectory", "NULL")).append("/").append(s6).toString());
            admarvelad.setOfflinekeyUrl((new StringBuilder()).append(sharedpreferences.getString("childDirectory", "NULL")).append("/").append(s6).toString());
        }
        if (s5 == null)
        {
            break MISSING_BLOCK_LABEL_693;
        }
        Exception exception3;
        try
        {
            admarvelxmlreader = admarvelad.loadAd(d);
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
            break MISSING_BLOCK_LABEL_674;
        }
        if (admarvelad.getSdkNetwork() == null)
        {
            break MISSING_BLOCK_LABEL_523;
        }
        k = admarvelad.getSdkNetwork().length();
        if (k <= 0)
        {
            break MISSING_BLOCK_LABEL_523;
        }
        admarvelview1 = (AdMarvelView)b.get();
        if (admarvelview1 == null)
        {
            break MISSING_BLOCK_LABEL_523;
        }
        admarvelad1 = com.admarvel.android.ads.b.a(admarvelview1.c, admarvelad.getSdkNetwork()).loadAd(admarvelad, admarvelxmlreader);
        admarvelad = admarvelad1;
        return admarvelad;
        exception;
        map = null;
          goto _L1
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
        return null;
    }

    protected void a(AdMarvelAd admarvelad)
    {
        super.onPostExecute(admarvelad);
        if (admarvelad != null)
        {
            break MISSING_BLOCK_LABEL_66;
        }
        AdMarvelView admarvelview1 = (AdMarvelView)b.get();
        if (admarvelview1 == null)
        {
            break MISSING_BLOCK_LABEL_427;
        }
        AdMarvelView admarvelview6;
        AdMarvelUtils.ErrorReason errorreason2;
        int k;
        try
        {
            AdMarvelUtils.ErrorReason errorreason1 = ab.a(303);
            int j = ab.a(errorreason1);
            admarvelview1.getListenerImpl().a(admarvelview1.getContext(), admarvelview1, j, errorreason1, null, 0, null, "");
            return;
        }
        catch (Exception exception)
        {
            Logging.log(Log.getStackTraceString(exception));
        }
        break MISSING_BLOCK_LABEL_153;
        if (admarvelad.getAdType() != AdMarvelAd.AdType.ERROR)
        {
            break MISSING_BLOCK_LABEL_218;
        }
        admarvelview6 = (AdMarvelView)b.get();
        if (admarvelview6 == null)
        {
            break MISSING_BLOCK_LABEL_427;
        }
        errorreason2 = ab.a(admarvelad.getErrorCode());
        k = ab.a(errorreason2);
        admarvelview6.getListenerImpl().a(admarvelview6.getContext(), admarvelview6, k, errorreason2, admarvelad.getSiteId(), admarvelad.getId(), admarvelad.getTargetParams(), admarvelad.getIpAddress());
        return;
        AdMarvelUtils.ErrorReason errorreason = ab.a(303);
        int i = ab.a(errorreason);
        AdMarvelView admarvelview = (AdMarvelView)b.get();
        if (admarvelview != null)
        {
            admarvelview.getListenerImpl().a(admarvelview.getContext(), admarvelview, i, errorreason, admarvelad.getSiteId(), admarvelad.getId(), admarvelad.getTargetParams(), admarvelad.getIpAddress());
            return;
        }
        break MISSING_BLOCK_LABEL_427;
        AdMarvelView admarvelview5;
        if (b.get() == null)
        {
            break MISSING_BLOCK_LABEL_273;
        }
        admarvelview5 = (AdMarvelView)b.get();
        if (admarvelview5 == null)
        {
            break MISSING_BLOCK_LABEL_273;
        }
        if (admarvelview5.a())
        {
            if (admarvelview5.getListenerImpl() != null)
            {
                admarvelview5.getListenerImpl().a(admarvelview5, admarvelad);
                return;
            }
            break MISSING_BLOCK_LABEL_427;
        }
        AdMarvelView admarvelview4;
        Context context1;
        if (admarvelad.getAdType() != AdMarvelAd.AdType.SDKCALL)
        {
            break MISSING_BLOCK_LABEL_404;
        }
        if (admarvelad.getSdkNetwork() == null)
        {
            break MISSING_BLOCK_LABEL_341;
        }
        admarvelview4 = (AdMarvelView)b.get();
        context1 = (Context)c.get();
        if (admarvelview4 == null || context1 == null)
        {
            break MISSING_BLOCK_LABEL_427;
        }
        admarvelview4.a(a, admarvelad, admarvelad.getSdkNetwork(), context1);
        return;
        String s;
        if (!admarvelad.isDisableAdrequest())
        {
            break MISSING_BLOCK_LABEL_404;
        }
        s = admarvelad.getDisableAdDuration();
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_404;
        }
        AdMarvelView admarvelview3;
        Context context;
        admarvelview3 = (AdMarvelView)b.get();
        context = (Context)c.get();
        if (admarvelview3 == null || context == null)
        {
            break MISSING_BLOCK_LABEL_427;
        }
        admarvelview3.a(s, admarvelad, context);
        return;
        AdMarvelView admarvelview2 = (AdMarvelView)b.get();
        if (admarvelview2 == null)
        {
            break MISSING_BLOCK_LABEL_427;
        }
        admarvelview2.a(admarvelad);
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
