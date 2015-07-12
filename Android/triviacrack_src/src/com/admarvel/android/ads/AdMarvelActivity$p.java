// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.location.Location;
import android.util.Log;
import android.view.ViewGroup;
import android.view.Window;
import com.admarvel.android.util.Logging;
import java.lang.ref.WeakReference;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelInternalWebView, AdMarvelActivity, ab, l

class c
    implements Runnable
{

    private final String a;
    private final WeakReference b;
    private final WeakReference c;

    public void run()
    {
        if (b == null) goto _L2; else goto _L1
_L1:
        AdMarvelInternalWebView admarvelinternalwebview = (AdMarvelInternalWebView)b.get();
_L11:
        if (c == null) goto _L4; else goto _L3
_L3:
        AdMarvelActivity admarvelactivity = (AdMarvelActivity)c.get();
          goto _L5
_L10:
        if (admarvelinternalwebview == null)
        {
            break; /* Loop/switch isn't completed */
        }
        String s;
        int i;
        s = ab.a(admarvelactivity.getBaseContext());
        i = ab.d(admarvelactivity.getBaseContext());
        byte byte0;
        String s1;
        Location location;
        String s2;
        String s3;
        StringBuilder stringbuilder;
        boolean flag;
        StringBuilder stringbuilder1;
        boolean flag1;
        String s4;
        ViewGroup viewgroup;
        String s5;
        if (i == 1)
        {
            byte0 = 0;
        } else
        if (i == 2)
        {
            byte0 = 90;
        } else
        {
            byte0 = -1;
        }
        if (!s.equals("wifi") && !s.equals("mobile"))
        {
            s1 = "NO";
        } else
        {
            s1 = "YES";
        }
        if (!ab.c(admarvelactivity.getBaseContext(), "location")) goto _L7; else goto _L6
_L6:
        location = l.a().a(admarvelinternalwebview);
_L8:
        if (location == null)
        {
            break MISSING_BLOCK_LABEL_822;
        }
        s2 = (new StringBuilder()).append("{lat:").append(location.getLatitude()).append(", lon:").append(location.getLongitude()).append(", acc:").append(location.getAccuracy()).append("}").toString();
_L12:
        if (AdMarvelActivity.h(admarvelactivity))
        {
            s3 = "Expanded";
        } else
        {
            s3 = "Interstitial";
        }
        stringbuilder = (new StringBuilder()).append("{screen: true, orientation: true, heading: ").append(ab.c(admarvelactivity.getBaseContext(), "compass")).append(", location : ");
        if (!ab.d(admarvelactivity.getBaseContext(), "android.permission.ACCESS_COARSE_LOCATION") && !ab.d(admarvelactivity.getBaseContext(), "android.permission.ACCESS_FINE_LOCATION"))
        {
            flag = false;
        } else
        {
            flag = true;
        }
        stringbuilder1 = stringbuilder.append(flag).append(",shake: ").append(ab.c(admarvelactivity.getBaseContext(), "accelerometer")).append(",tilt: ").append(ab.c(admarvelactivity.getBaseContext(), "accelerometer")).append(", network: true, sms:").append(ab.j(admarvelactivity.getBaseContext())).append(", phone:").append(ab.j(admarvelactivity.getBaseContext())).append(", email:true,calendar:");
        if (ab.d(admarvelactivity.getBaseContext(), "android.permission.READ_CALENDAR") && ab.d(admarvelactivity.getBaseContext(), "android.permission.WRITE_CALENDAR"))
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        s4 = stringbuilder1.append(flag1).append(", camera: ").append(ab.c(admarvelactivity.getBaseContext(), "camera")).append(",map:true, audio:true, video:true, 'level-1':true,'level-2': true, 'level-3':false}").toString();
        viewgroup = (ViewGroup)admarvelactivity.getWindow().findViewById(0x1020002);
        viewgroup.getWidth();
        s5 = ab.a(admarvelactivity);
        try
        {
            admarvelinternalwebview.loadUrl((new StringBuilder()).append("javascript:").append(a).append("({x:").append(admarvelinternalwebview.getLeft()).append(",y:").append(admarvelinternalwebview.getTop()).append(",width:").append(admarvelinternalwebview.getWidth()).append(",height:").append(admarvelinternalwebview.getHeight()).append(",appX:").append(viewgroup.getLeft()).append(",appY:").append(viewgroup.getTop()).append(",appWidth:").append(viewgroup.getWidth()).append(",appHeight:").append(viewgroup.getHeight()).append(",orientation:").append(byte0).append(",networkType:").append("'").append(s).append("'").append(",network:").append("'").append(s1).append("'").append(",screenWidth:").append(ab.g(admarvelactivity.getBaseContext())).append(",screenHeight:").append(ab.h(admarvelactivity.getBaseContext())).append(",adType:").append("'").append(s3).append("'").append(",supportedFeatures:").append(s4).append(",sdkVersion:").append("'").append("2.4.5.1").append("'").append(",location:").append(s2).append(",applicationSupportedOrientations:").append("'").append(s5).append("'").append("})").toString());
            return;
        }
        catch (Exception exception1)
        {
            try
            {
                Logging.log(Log.getStackTraceString(exception1));
                return;
            }
            catch (Exception exception)
            {
                Logging.log((new StringBuilder()).append(exception.getMessage()).append(" Exception in InitAdMarvel ").toString());
            }
        }
        return;
_L7:
        location = null;
          goto _L8
_L5:
        if (admarvelactivity != null) goto _L10; else goto _L9
_L9:
        return;
_L2:
        admarvelinternalwebview = null;
          goto _L11
_L4:
        admarvelactivity = null;
          goto _L5
        s2 = "null";
          goto _L12
    }

    public View(String s, AdMarvelInternalWebView admarvelinternalwebview, AdMarvelActivity admarvelactivity)
    {
        a = s;
        b = new WeakReference(admarvelinternalwebview);
        c = new WeakReference(admarvelactivity);
    }
}
