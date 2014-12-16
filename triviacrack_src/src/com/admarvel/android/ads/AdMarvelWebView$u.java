// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.app.Activity;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.location.Location;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import com.admarvel.android.util.Logging;
import java.lang.ref.WeakReference;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelInternalWebView, AdMarvelWebView, ab, ac, 
//            l, AdMarvelView

class c
    implements Runnable
{

    private final String a;
    private final WeakReference b;
    private final WeakReference c;

    public void run()
    {
        AdMarvelInternalWebView admarvelinternalwebview;
        AdMarvelWebView admarvelwebview;
        admarvelinternalwebview = (AdMarvelInternalWebView)b.get();
        admarvelwebview = (AdMarvelWebView)c.get();
        if (admarvelwebview == null)
        {
            return;
        }
        if (admarvelinternalwebview == null) goto _L2; else goto _L1
_L1:
        String s = ab.a(admarvelwebview.getContext());
        if (ac.a() >= 9) goto _L4; else goto _L3
_L3:
        int i5 = admarvelwebview.getResources().getConfiguration().orientation;
        if (i5 != 1) goto _L6; else goto _L5
_L5:
        char c1 = '\0';
_L19:
        int i;
        String s1;
        boolean flag;
        Location location;
        String s2;
        StringBuilder stringbuilder;
        boolean flag1;
        StringBuilder stringbuilder1;
        boolean flag2;
        String s3;
        AdMarvelView admarvelview;
        int ai[];
        int j;
        int k;
        int i1;
        int j1;
        int k1;
        int l1;
        int i2;
        int j2;
        int k2;
        int l2;
        int i3;
        int j3;
        int k3;
        int l3;
        int i4;
        int j4;
        int k4;
        String s4;
        Exception exception2;
        Activity activity;
        int l4;
        Activity activity1;
        if (s.equals("wifi") || s.equals("mobile"))
        {
            s1 = "YES";
        } else
        {
            s1 = "NO";
        }
        flag = ab.c(admarvelwebview.getContext(), "location");
        location = null;
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_125;
        }
        location = l.a().a(admarvelinternalwebview);
        if (location == null)
        {
            break MISSING_BLOCK_LABEL_1241;
        }
        s2 = (new StringBuilder()).append("{lat:").append(location.getLatitude()).append(", lon:").append(location.getLongitude()).append(", acc:").append(location.getAccuracy()).append("}").toString();
_L27:
        stringbuilder = (new StringBuilder()).append("{screen: true, orientation: true, heading: ").append(ab.c(admarvelwebview.getContext(), "compass")).append(", location : ");
        if (ab.d(admarvelwebview.getContext(), "android.permission.ACCESS_COARSE_LOCATION") || ab.d(admarvelwebview.getContext(), "android.permission.ACCESS_FINE_LOCATION"))
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        stringbuilder1 = stringbuilder.append(flag1).append(",shake: ").append(ab.c(admarvelwebview.getContext(), "accelerometer")).append(",tilt: ").append(ab.c(admarvelwebview.getContext(), "accelerometer")).append(", network: true, sms:").append(ab.j(admarvelwebview.getContext())).append(", phone:").append(ab.j(admarvelwebview.getContext())).append(", email:true,calendar:");
        if (ab.d(admarvelwebview.getContext(), "android.permission.READ_CALENDAR") && ab.d(admarvelwebview.getContext(), "android.permission.WRITE_CALENDAR"))
        {
            flag2 = true;
        } else
        {
            flag2 = false;
        }
        s3 = stringbuilder1.append(flag2).append(", camera: ").append(ab.c(admarvelwebview.getContext(), "camera")).append(",map:true, audio:true, video:true, 'level-1':true,'level-2': true, 'level-3':false}").toString();
        admarvelview = (AdMarvelView)admarvelinternalwebview.adMarvelViewReference.get();
        if (admarvelview == null) goto _L8; else goto _L7
_L7:
        ai = new int[2];
        admarvelinternalwebview.getLocationOnScreen(ai);
_L20:
        if (!(admarvelwebview.getContext() instanceof Activity)) goto _L10; else goto _L9
_L9:
        activity1 = (Activity)admarvelwebview.getContext();
        if (activity1 == null) goto _L10; else goto _L11
_L11:
        if (admarvelwebview.f == 0x80000000 || admarvelwebview.f < 0) goto _L13; else goto _L12
_L12:
        j = admarvelwebview.f;
_L22:
        k = ai[0];
        i1 = ai[1] - j;
        j1 = admarvelview.getWidth();
        k1 = admarvelview.getHeight();
        admarvelinternalwebview.mInitLayoutX = k;
        admarvelinternalwebview.mInitLayoutY = i1;
        l1 = k1;
        i2 = j1;
        j2 = i1;
        k2 = k;
_L25:
        l2 = admarvelwebview.getRootView().getLeft();
        i3 = admarvelwebview.getRootView().getTop();
        j3 = admarvelwebview.getRootView().getWidth();
        k3 = admarvelwebview.getRootView().getHeight();
        if (!(admarvelwebview.getContext() instanceof Activity)) goto _L15; else goto _L14
_L14:
        activity = (Activity)admarvelwebview.getContext();
        if (activity == null) goto _L15; else goto _L16
_L16:
        s4 = ab.a(activity);
        ViewGroup viewgroup = (ViewGroup)activity.getWindow().findViewById(0x1020002);
        k4 = viewgroup.getLeft();
        j4 = viewgroup.getTop();
        i4 = viewgroup.getWidth();
        l4 = viewgroup.getHeight();
        l3 = l4;
_L24:
        String s5 = (new StringBuilder()).append("javascript:").append(a).append("({x:").append(k2).append(",y:").append(j2).append(",width:").append(i2).append(",height:").append(l1).append(",appX:").append(k4).append(",appY:").append(j4).append(",appWidth:").append(i4).append(",appHeight:").append(l3).append(",orientation:").append(c1).append(",networkType:").append("'").append(s).append("'").append(",network:").append("'").append(s1).append("'").append(",screenWidth:").append(ab.g(admarvelwebview.getContext())).append(",screenHeight:").append(ab.h(admarvelwebview.getContext())).append(",adType:").append("'").append("Banner").append("'").append(",supportedFeatures:").append(s3).append(",sdkVersion:").append("'").append("2.4.5.1").append("'").append(",location:").append(s2).append(",applicationSupportedOrientations:").append("'").append(s4).append("'").append("})").toString();
        Logging.log((new StringBuilder()).append("Initial Frame Values : ").append(s5).toString());
        admarvelinternalwebview.loadUrl(s5);
        return;
        exception2;
        break MISSING_BLOCK_LABEL_977;
_L6:
        if (i5 != 2) goto _L18; else goto _L17
_L17:
        c1 = 'Z';
          goto _L19
_L4:
        i = AdMarvelWebView.o(admarvelwebview);
        if (i == 0)
        {
            c1 = '\0';
        } else
        if (i == 1)
        {
            c1 = 'Z';
        } else
        {
            if (i != 2)
            {
                continue; /* Loop/switch isn't completed */
            }
            c1 = '\264';
        }
          goto _L19
        exception1;
        ai[0] = 0;
        ai[1] = 0;
          goto _L20
        Exception exception1;
        try
        {
            Logging.log(Log.getStackTraceString(exception2));
            return;
        }
        catch (NullPointerException nullpointerexception)
        {
            Logging.log(Log.getStackTraceString(nullpointerexception));
            return;
        }
        catch (Exception exception)
        {
            Logging.log(Log.getStackTraceString(exception));
        }
        return;
_L13:
        ViewGroup viewgroup1 = (ViewGroup)activity1.getWindow().findViewById(0x1020002);
        DisplayMetrics displaymetrics = new DisplayMetrics();
        activity1.getWindowManager().getDefaultDisplay().getMetrics(displaymetrics);
        j = displaymetrics.heightPixels - viewgroup1.getMeasuredHeight();
        if (j < 0) goto _L22; else goto _L21
_L21:
        if (admarvelwebview.f != 0x80000000) goto _L22; else goto _L23
_L23:
        admarvelwebview.f = j;
          goto _L22
_L15:
        l3 = k3;
        i4 = j3;
        j4 = i3;
        k4 = l2;
        s4 = "0,90";
          goto _L24
_L10:
        j = 0;
          goto _L22
_L8:
        l1 = 0;
        i2 = 0;
        j2 = 0;
        k2 = 0;
          goto _L25
_L18:
        c1 = '\uFFFF';
          goto _L19
_L2:
        return;
        if (i != 3) goto _L18; else goto _L26
_L26:
        c1 = '\uFFA6';
          goto _L19
        s2 = "null";
          goto _L27
    }

    public bView(String s, AdMarvelInternalWebView admarvelinternalwebview, AdMarvelWebView admarvelwebview)
    {
        a = s;
        b = new WeakReference(admarvelinternalwebview);
        c = new WeakReference(admarvelwebview);
    }
}
