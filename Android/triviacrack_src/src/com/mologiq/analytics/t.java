// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mologiq.analytics;

import android.app.Activity;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.location.Location;
import android.location.LocationManager;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;

// Referenced classes of package com.mologiq.analytics:
//            ac, ad, f, ag, 
//            af, aj, ai, j, 
//            n

public class t
    implements Runnable
{

    private final WeakReference a;

    public t(Context context)
    {
        a = new WeakReference(context);
    }

    private void a(ad ad1, Context context)
    {
        ac ac1 = ac.d(context);
        if (!ac1.i()) goto _L2; else goto _L1
_L1:
        Map map;
        Iterator iterator1;
        List list1 = context.getPackageManager().getInstalledApplications(128);
        map = ad1.e(context);
        iterator1 = list1.iterator();
        Object obj;
        Object obj1;
        obj = null;
        obj1 = null;
_L34:
        if (iterator1.hasNext()) goto _L4; else goto _L3
_L3:
        ad1.a(((List) (obj1)));
        ad1.a(((Map) (obj)));
_L2:
        ApplicationInfo applicationinfo;
        PackageManager packagemanager;
        applicationinfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 0);
        packagemanager = context.getApplicationContext().getPackageManager();
        if (applicationinfo == null || packagemanager == null)
        {
            break MISSING_BLOCK_LABEL_119;
        }
        ad1.b(packagemanager.getApplicationLabel(applicationinfo).toString());
_L23:
        String s4;
        boolean flag;
        f f1 = f.a(context);
        s4 = f1.a();
        flag = f1.b();
        if (s4 == null) goto _L6; else goto _L5
_L5:
        if (s4.length() <= 0) goto _L6; else goto _L7
_L7:
        ad1.i(s4);
        ad1.a(flag);
_L24:
        TimeZone timezone;
        String s;
        ad1.c(android.os.Build.VERSION.RELEASE);
        ad1.d(Build.MODEL);
        ad1.e(Build.DEVICE);
        ad1.k(Build.MANUFACTURER);
        ad1.g(Build.BRAND);
        timezone = TimeZone.getDefault();
        s = timezone.getDisplayName(Locale.getDefault());
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_225;
        }
        ad1.l(s);
        String s1 = timezone.getID();
        if (s1 == null)
        {
            break MISSING_BLOCK_LABEL_243;
        }
        ad1.m(s1);
        DisplayMetrics displaymetrics;
        ad1.n(Locale.getDefault().getCountry());
        if (!(context instanceof Activity))
        {
            break MISSING_BLOCK_LABEL_312;
        }
        displaymetrics = context.getApplicationContext().getResources().getDisplayMetrics();
        if (displaymetrics == null)
        {
            break MISSING_BLOCK_LABEL_312;
        }
        ad1.o((new StringBuilder(String.valueOf(displaymetrics.widthPixels))).append("*").append(displaymetrics.heightPixels).toString());
        ad1.h(Locale.getDefault().getDisplayLanguage());
        if (!ag.a(context, "android.permission.ACCESS_WIFI_STATE") || !ac1.j()) goto _L9; else goto _L8
_L8:
        af af1;
        WifiManager wifimanager;
        List list;
        ArrayList arraylist;
        ad1.getClass();
        af1 = new af(ad1);
        wifimanager = (WifiManager)context.getSystemService("wifi");
        list = wifimanager.getScanResults();
        arraylist = new ArrayList();
        if (list == null) goto _L11; else goto _L10
_L10:
        Iterator iterator = list.iterator();
_L26:
        if (iterator.hasNext()) goto _L13; else goto _L12
_L12:
        af1.a(arraylist);
        WifiInfo wifiinfo = wifimanager.getConnectionInfo();
        aj aj2 = new aj();
        aj2.a(wifiinfo.getSSID());
        af1.a(aj2);
        ad1.a(af1);
_L11:
        ad1.p(((TelephonyManager)context.getSystemService("phone")).getNetworkOperatorName());
_L9:
        ad1.f(String.valueOf(ai.a()));
        if (!ac1.h()) goto _L15; else goto _L14
_L14:
        LocationManager locationmanager = (LocationManager)context.getSystemService("location");
        if (!ag.a(context, "android.permission.ACCESS_FINE_LOCATION")) goto _L17; else goto _L16
_L16:
        Location location = locationmanager.getLastKnownLocation("gps");
_L31:
        Object obj2;
        if (location != null)
        {
            Exception exception1;
            ApplicationInfo applicationinfo1;
            j j1;
            int i;
            try
            {
                double d = location.getLatitude();
                double d1 = location.getLongitude();
                String s2 = (new StringBuilder()).append((int)(d * (double)ac1.o())).append((int)(d1 * (double)ac1.o())).toString();
                if (!(new StringBuilder()).append((int)(ad1.l() * (double)ac1.o())).append((int)(ad1.m() * (double)ac1.o())).toString().equals(s2))
                {
                    ad1.a(d);
                    ad1.b(d1);
                }
                ad1.d(location.getAccuracy());
                ad1.c(location.getAltitude());
                ad1.e(location.getSpeed());
                ad1.a(location.getTime());
                return;
            }
            catch (Exception exception)
            {
                ag.a(exception.getStackTrace().toString());
            }
            return;
        }
          goto _L18
_L4:
        applicationinfo1 = (ApplicationInfo)iterator1.next();
        if (!map.containsKey(applicationinfo1.packageName))
        {
            continue; /* Loop/switch isn't completed */
        }
        if (obj1 != null) goto _L20; else goto _L19
_L19:
        obj2 = new ArrayList();
_L32:
        j1 = (j)map.get(applicationinfo1.packageName);
        ((List) (obj2)).add(Integer.valueOf(j1.c()));
        if (j1.a() <= 0) goto _L22; else goto _L21
_L21:
        if (obj != null)
        {
            break MISSING_BLOCK_LABEL_770;
        }
        obj = new HashMap();
        if (!((Map) (obj)).containsKey(Integer.valueOf(j1.a())))
        {
            break MISSING_BLOCK_LABEL_841;
        }
        i = 1 + ((Integer)((Map) (obj)).get(Integer.valueOf(j1.a()))).intValue();
        ((Map) (obj)).put(Integer.valueOf(j1.a()), Integer.valueOf(i));
        obj1 = obj2;
        continue; /* Loop/switch isn't completed */
        ((Map) (obj)).put(Integer.valueOf(j1.a()), Integer.valueOf(1));
          goto _L22
        exception1;
        ag.a("Application name not found");
          goto _L23
_L6:
        try
        {
            ad1.j(android.provider.Settings.Secure.getString(context.getContentResolver(), "android_id"));
        }
        catch (Exception exception2) { }
          goto _L24
_L13:
        ScanResult scanresult = (ScanResult)iterator.next();
        if (scanresult == null) goto _L26; else goto _L25
_L25:
        if (scanresult.SSID == null) goto _L26; else goto _L27
_L27:
        aj aj1 = new aj();
        aj1.a(scanresult.SSID);
        arraylist.add(aj1);
          goto _L26
_L18:
        if (!ag.a(context, "android.permission.ACCESS_FINE_LOCATION") && !ag.a(context, "android.permission.ACCESS_COARSE_LOCATION")) goto _L29; else goto _L28
_L28:
        Location location1 = locationmanager.getLastKnownLocation("network");
_L30:
        if (location1 == null)
        {
            break; /* Loop/switch isn't completed */
        }
        double d2 = location1.getLatitude();
        double d3 = location1.getLongitude();
        String s3 = (new StringBuilder()).append((int)(d2 * (double)ac1.o())).append((int)(d3 * (double)ac1.o())).toString();
        if (!(new StringBuilder()).append((int)(ad1.l() * (double)ac1.o())).append((int)(ad1.m() * (double)ac1.o())).toString().equals(s3))
        {
            ad1.a(d2);
            ad1.b(d3);
        }
        ad1.d(location1.getAccuracy());
        ad1.c(location1.getAltitude());
        ad1.e(location1.getSpeed());
        ad1.a(location1.getTime());
        return;
_L29:
        location1 = null;
        if (true) goto _L30; else goto _L15
_L17:
        location = null;
          goto _L31
_L20:
        obj2 = obj1;
          goto _L32
_L15:
        return;
_L22:
        obj1 = obj2;
        if (true) goto _L34; else goto _L33
_L33:
    }

    public void run()
    {
        Context context;
        ac ac1;
        ad ad1;
        ag ag1;
        WeakReference weakreference;
        String s4;
        try
        {
            weakreference = a;
        }
        catch (Exception exception)
        {
            ag.a(exception.getStackTrace().toString());
            return;
        }
        context = null;
        if (weakreference == null) goto _L2; else goto _L1
_L1:
        context = (Context)a.get();
          goto _L2
_L7:
        ac1 = ac.d(context);
        if (ac1.b())
        {
            break; /* Loop/switch isn't completed */
        }
        ad1 = ad.c();
        ad1.a(context);
        a(ad1, context);
        if (!ad1.b(context) && System.currentTimeMillis() - ac1.n() <= ac1.m())
        {
            break; /* Loop/switch isn't completed */
        }
        ag1 = new ag(context);
        if (ac1.t() != 0)
        {
            break MISSING_BLOCK_LABEL_168;
        }
        s4 = ag1.a(ac1.c(), "", context, 500, 1000, false);
        if (s4 == null)
        {
            break; /* Loop/switch isn't completed */
        }
        if (s4.length() > 0)
        {
            ac1.a(Integer.parseInt(s4));
            ac1.b(context);
            return;
        }
        break; /* Loop/switch isn't completed */
        String s;
        n n1;
        s = ac1.f();
        n1 = new n();
        n1.a("1.2.9");
        n1.b("2014-07-08");
        if (context.getPackageName() != null) goto _L4; else goto _L3
_L3:
        String s1 = "";
_L5:
        String s2;
        n1.c(s1);
        n1.a(ad1);
        s2 = ag1.a(s, n1.a(context), context, 500, 1000, true);
        if (s2 == null)
        {
            break MISSING_BLOCK_LABEL_284;
        }
        if (s2.length() > 0)
        {
            ac1.b(s2);
            ac1.a(System.currentTimeMillis());
            ac1.b(context);
        }
        a(ad1, context);
        ad1.b(context);
        return;
_L4:
        String s3 = context.getPackageName();
        s1 = s3;
        if (true) goto _L5; else goto _L2
_L2:
        if (context != null) goto _L7; else goto _L6
_L6:
    }
}
