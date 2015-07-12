// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import java.lang.ref.WeakReference;
import java.util.List;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelInternalWebView, ab

class l
{

    private static l a = null;
    private static a b = null;
    private static a c = null;
    private String d;
    private String e;
    private WeakReference f;

    private l()
    {
    }

    public static l a()
    {
        if (a == null)
        {
            a = new l();
        }
        return a;
    }

    static String a(l l1, String s)
    {
        l1.d = s;
        return s;
    }

    static WeakReference a(l l1)
    {
        return l1.f;
    }

    private boolean a(Context context, String s)
    {
        LocationManager locationmanager = (LocationManager)context.getSystemService("location");
        List list;
        int i;
        try
        {
            list = locationmanager.getAllProviders();
        }
        catch (Throwable throwable)
        {
            return false;
        }
        i = 0;
        do
        {
label0:
            {
                int j = list.size();
                boolean flag = false;
                if (i < j)
                {
                    if (!s.equals((String)list.get(i)))
                    {
                        break label0;
                    }
                    flag = true;
                }
                return flag;
            }
            i++;
        } while (true);
    }

    static String b(l l1)
    {
        return l1.e;
    }

    static String c(l l1)
    {
        return l1.d;
    }

    public Location a(AdMarvelInternalWebView admarvelinternalwebview)
    {
        Location location = null;
        if (!ab.d(admarvelinternalwebview.getContext(), "android.permission.ACCESS_COARSE_LOCATION") && !ab.d(admarvelinternalwebview.getContext(), "android.permission.ACCESS_FINE_LOCATION"))
        {
            return null;
        }
        LocationManager locationmanager = (LocationManager)admarvelinternalwebview.getContext().getSystemService("location");
        List list = locationmanager.getProviders(true);
        for (int i = -1 + list.size(); i >= 0; i--)
        {
            location = locationmanager.getLastKnownLocation((String)list.get(i));
            if (location != null)
            {
                return location;
            }
        }

        return location;
    }

    public void a(Context context)
    {
        LocationManager locationmanager = (LocationManager)context.getSystemService("location");
        if (c != null)
        {
            locationmanager.removeUpdates(c);
        }
        if (b != null)
        {
            locationmanager.removeUpdates(b);
        }
        c = null;
        b = null;
    }

    public void a(AdMarvelInternalWebView admarvelinternalwebview, String s)
    {
        if (ab.d(admarvelinternalwebview.getContext(), "android.permission.ACCESS_COARSE_LOCATION") || ab.d(admarvelinternalwebview.getContext(), "android.permission.ACCESS_FINE_LOCATION"))
        {
            LocationManager locationmanager = (LocationManager)admarvelinternalwebview.getContext().getSystemService("location");
            f = new WeakReference(admarvelinternalwebview);
            e = s;
            try
            {
                if (a(admarvelinternalwebview.getContext(), "gps") && locationmanager.getProvider("gps") != null)
                {
                    b = new a("gps", locationmanager);
                }
            }
            catch (Exception exception) { }
            try
            {
                if (a(admarvelinternalwebview.getContext(), "network") && locationmanager.getProvider("network") != null)
                {
                    c = new a("network", locationmanager);
                }
            }
            catch (Exception exception1) { }
            if (c != null)
            {
                c.a();
            }
            if (b != null)
            {
                b.a();
                return;
            }
        }
    }


    private class a
        implements LocationListener
    {

        LocationManager a;
        final l b;
        private boolean c;

        public void a()
        {
            if (!c)
            {
                a.requestLocationUpdates(l.c(b), 0L, 0.0F, this);
                c = true;
            }
        }

        public void onLocationChanged(Location location)
        {
            AdMarvelInternalWebView admarvelinternalwebview;
            if (l.a(b) != null)
            {
                admarvelinternalwebview = (AdMarvelInternalWebView)l.a(b).get();
            } else
            {
                admarvelinternalwebview = null;
            }
            if (admarvelinternalwebview != null && admarvelinternalwebview.getHandler() != null && l.b(b) != null && location != null)
            {
                admarvelinternalwebview.getHandler().post(new Runnable(location) {

                    final Location a;
                    final a b;

                    public void run()
                    {
                        AdMarvelInternalWebView admarvelinternalwebview1 = (AdMarvelInternalWebView)l.a(b.b).get();
                        if (l.a(b.b) != null)
                        {
                            admarvelinternalwebview1.loadUrl((new StringBuilder()).append("javascript:").append(l.b(b.b)).append("(").append(a.getLatitude()).append(",").append(a.getLongitude()).append(",").append(a.getAccuracy()).append(")").toString());
                        }
                    }

                
                {
                    b = a.this;
                    a = location;
                    super();
                }
                });
            }
        }

        public void onProviderDisabled(String s)
        {
        }

        public void onProviderEnabled(String s)
        {
        }

        public void onStatusChanged(String s, int i, Bundle bundle)
        {
        }

        public a(String s, LocationManager locationmanager)
        {
            b = l.this;
            super();
            c = false;
            a = locationmanager;
            l.a(l.this, s);
        }
    }

}
