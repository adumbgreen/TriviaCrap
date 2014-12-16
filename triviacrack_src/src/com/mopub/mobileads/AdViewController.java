// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;

import android.content.Context;
import android.location.Location;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Handler;
import android.util.Log;
import android.view.View;
import com.mopub.common.AdUrlGenerator;
import com.mopub.common.GpsHelper;
import com.mopub.common.LocationService;
import com.mopub.common.MoPub;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Dips;
import com.mopub.mobileads.factories.AdFetcherFactory;
import com.mopub.mobileads.factories.HttpClientFactory;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.impl.client.DefaultHttpClient;

// Referenced classes of package com.mopub.mobileads:
//            WebViewAdUrlGenerator, AdConfiguration, g, MoPubErrorCode, 
//            MoPubView, AdFetcher

public class AdViewController
{

    private static final android.widget.FrameLayout.LayoutParams a = new android.widget.FrameLayout.LayoutParams(-2, -2, 17);
    private static WeakHashMap b = new WeakHashMap();
    private final Context c;
    private com.mopub.common.GpsHelper.GpsHelperListener d;
    private MoPubView e;
    private final WebViewAdUrlGenerator f;
    private AdFetcher g;
    private AdConfiguration h;
    private final Runnable i = new Runnable() {

        final AdViewController a;

        public void run()
        {
            a.loadAd();
        }

            
            {
                a = AdViewController.this;
                super();
            }
    };
    private boolean j;
    private Handler k;
    private boolean l;
    private String m;
    private Map n;
    private boolean o;
    private boolean p;
    private String q;
    private Location r;
    private boolean s;
    private boolean t;

    public AdViewController(Context context, MoPubView mopubview)
    {
        n = new HashMap();
        o = true;
        p = true;
        c = context;
        e = mopubview;
        f = new WebViewAdUrlGenerator(context);
        h = new AdConfiguration(c);
        g = AdFetcherFactory.create(this, h.r());
        d = new g(this);
        GpsHelper.fetchAdvertisingInfoAsync(c, null);
        k = new Handler();
    }

    static android.widget.FrameLayout.LayoutParams a(AdViewController adviewcontroller, View view)
    {
        return adviewcontroller.d(view);
    }

    static AdConfiguration a(AdViewController adviewcontroller)
    {
        return adviewcontroller.h;
    }

    protected static void a(View view)
    {
        b.put(view, Boolean.valueOf(true));
    }

    private void b(boolean flag)
    {
        boolean flag1;
        if (t && o != flag)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        if (flag1)
        {
            String s1;
            String s2;
            if (flag)
            {
                s1 = "enabled";
            } else
            {
                s1 = "disabled";
            }
            if (h != null)
            {
                s2 = h.b();
            } else
            {
                s2 = null;
            }
            MoPubLog.d((new StringBuilder()).append("Refresh ").append(s1).append(" for ad unit (").append(s2).append(").").toString());
        }
        o = flag;
        if (t && o)
        {
            m();
        } else
        if (!o)
        {
            o();
            return;
        }
    }

    private static boolean c(View view)
    {
        return b.get(view) != null;
    }

    private android.widget.FrameLayout.LayoutParams d(View view)
    {
        int i1 = h.l();
        int j1 = h.m();
        if (c(view) && i1 > 0 && j1 > 0)
        {
            return new android.widget.FrameLayout.LayoutParams(Dips.asIntPixels(i1, c), Dips.asIntPixels(j1, c), 17);
        } else
        {
            return a;
        }
    }

    private void o()
    {
        k.removeCallbacks(i);
    }

    private String p()
    {
        if (s)
        {
            return "testing.ads.mopub.com";
        } else
        {
            return "ads.mopub.com";
        }
    }

    private boolean q()
    {
        if (c.checkCallingPermission("android.permission.ACCESS_NETWORK_STATE") == -1)
        {
            return true;
        }
        NetworkInfo networkinfo = ((ConnectivityManager)c.getSystemService("connectivity")).getActiveNetworkInfo();
        boolean flag;
        if (networkinfo != null && networkinfo.isConnected())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        return flag;
    }

    void a()
    {
        l = false;
    }

    void a(int i1)
    {
        h.a(i1);
    }

    void a(MoPubErrorCode mopuberrorcode)
    {
        l = false;
        StringBuilder stringbuilder = (new StringBuilder()).append("MoPubErrorCode: ");
        String s1;
        if (mopuberrorcode == null)
        {
            s1 = "";
        } else
        {
            s1 = mopuberrorcode.toString();
        }
        Log.v("MoPub", stringbuilder.append(s1).toString());
        if (h.i() != null)
        {
            MoPubLog.d((new StringBuilder()).append("Loading failover url: ").append(h.i()).toString());
            a(h.i());
            return;
        } else
        {
            b(MoPubErrorCode.NO_FILL);
            return;
        }
    }

    void a(String s1)
    {
        if (s1 != null)
        {
            MoPubLog.d((new StringBuilder()).append("Loading url: ").append(s1).toString());
            if (l)
            {
                if (h.b() != null)
                {
                    MoPubLog.i((new StringBuilder()).append("Already loading an ad for ").append(h.b()).append(", wait to finish.").toString());
                    return;
                }
            } else
            {
                m = s1;
                h.d(null);
                l = true;
                b(m);
                return;
            }
        }
    }

    void a(Map map)
    {
        HashMap hashmap;
        if (map != null)
        {
            hashmap = new HashMap(map);
        } else
        {
            hashmap = new HashMap();
        }
        n = hashmap;
    }

    void a(HttpResponse httpresponse)
    {
        h.a(httpresponse);
    }

    void a(boolean flag)
    {
        p = flag;
        b(flag);
    }

    void b()
    {
        p = o;
        b(false);
    }

    void b(View view)
    {
        k.post(new Runnable(view) {

            final View a;
            final AdViewController b;

            public void run()
            {
                MoPubView mopubview = b.getMoPubView();
                if (mopubview == null)
                {
                    return;
                } else
                {
                    mopubview.removeAllViews();
                    mopubview.addView(a, AdViewController.a(b, a));
                    return;
                }
            }

            
            {
                b = AdViewController.this;
                a = view;
                super();
            }
        });
    }

    void b(MoPubErrorCode mopuberrorcode)
    {
        MoPubLog.i("Ad failed to load.");
        a();
        m();
        getMoPubView().a(mopuberrorcode);
    }

    void b(String s1)
    {
        if (g != null)
        {
            g.fetchAdForUrl(s1);
        }
    }

    void c()
    {
        b(p);
    }

    public void customEventActionWillBegin()
    {
        j();
    }

    public void customEventDidFailToLoadAd()
    {
        a(MoPubErrorCode.UNSPECIFIED);
    }

    public void customEventDidLoadAd()
    {
        a();
        i();
        m();
    }

    AdConfiguration d()
    {
        return h;
    }

    boolean e()
    {
        return j;
    }

    void f()
    {
        if (j)
        {
            return;
        } else
        {
            b(false);
            o();
            g.a();
            g = null;
            h.a();
            e = null;
            j = true;
            return;
        }
    }

    Integer g()
    {
        return h.n();
    }

    public int getAdHeight()
    {
        return h.m();
    }

    public String getAdUnitId()
    {
        return h.b();
    }

    public int getAdWidth()
    {
        return h.l();
    }

    public boolean getAutorefreshEnabled()
    {
        return o;
    }

    public String getClickthroughUrl()
    {
        return h.h();
    }

    public String getKeywords()
    {
        return q;
    }

    public Location getLocation()
    {
        return r;
    }

    public MoPubView getMoPubView()
    {
        return e;
    }

    public String getRedirectUrl()
    {
        return h.g();
    }

    public String getResponseString()
    {
        return h.c();
    }

    public boolean getTesting()
    {
        return s;
    }

    int h()
    {
        return h.o();
    }

    void i()
    {
        (new Thread(new Runnable() {

            final AdViewController a;

            public void run()
            {
                DefaultHttpClient defaulthttpclient;
                if (AdViewController.a(a).j() == null)
                {
                    return;
                }
                defaulthttpclient = HttpClientFactory.create();
                HttpGet httpget = new HttpGet(AdViewController.a(a).j());
                httpget.addHeader("User-Agent", AdViewController.a(a).r());
                defaulthttpclient.execute(httpget);
                defaulthttpclient.getConnectionManager().shutdown();
                return;
                Exception exception1;
                exception1;
                MoPubLog.d((new StringBuilder()).append("Impression tracking failed : ").append(AdViewController.a(a).j()).toString(), exception1);
                defaulthttpclient.getConnectionManager().shutdown();
                return;
                Exception exception;
                exception;
                defaulthttpclient.getConnectionManager().shutdown();
                throw exception;
            }

            
            {
                a = AdViewController.this;
                super();
            }
        })).start();
    }

    public boolean isFacebookSupported()
    {
        return false;
    }

    void j()
    {
        (new Thread(new Runnable() {

            final AdViewController a;

            public void run()
            {
                DefaultHttpClient defaulthttpclient;
                if (AdViewController.a(a).h() == null)
                {
                    return;
                }
                defaulthttpclient = HttpClientFactory.create();
                MoPubLog.d((new StringBuilder()).append("Tracking click for: ").append(AdViewController.a(a).h()).toString());
                HttpGet httpget = new HttpGet(AdViewController.a(a).h());
                httpget.addHeader("User-Agent", AdViewController.a(a).r());
                defaulthttpclient.execute(httpget);
                defaulthttpclient.getConnectionManager().shutdown();
                return;
                Exception exception1;
                exception1;
                MoPubLog.d((new StringBuilder()).append("Click tracking failed: ").append(AdViewController.a(a).h()).toString(), exception1);
                defaulthttpclient.getConnectionManager().shutdown();
                return;
                Exception exception;
                exception;
                defaulthttpclient.getConnectionManager().shutdown();
                throw exception;
            }

            
            {
                a = AdViewController.this;
                super();
            }
        })).start();
    }

    void k()
    {
        a();
        loadAd();
    }

    String l()
    {
        return f.withAdUnitId(h.b()).withKeywords(q).withLocation(r).generateUrlString(p());
    }

    public void loadAd()
    {
        t = true;
        if (h.b() == null)
        {
            MoPubLog.d("Can't load an ad in this ad view because the ad unit ID is null. Did you forget to call setAdUnitId()?");
            return;
        }
        if (!q())
        {
            MoPubLog.d("Can't load an ad because there is no network connectivity.");
            m();
            return;
        }
        if (r == null)
        {
            r = LocationService.getLastKnownLocation(c, MoPub.getLocationPrecision(), MoPub.getLocationAwareness());
        }
        GpsHelper.fetchAdvertisingInfoAsync(c, d);
    }

    void m()
    {
        o();
        if (o && h.o() > 0)
        {
            k.postDelayed(i, h.o());
        }
    }

    Map n()
    {
        if (n != null)
        {
            return new HashMap(n);
        } else
        {
            return new HashMap();
        }
    }

    public void reload()
    {
        MoPubLog.d((new StringBuilder()).append("Reload ad: ").append(m).toString());
        a(m);
    }

    public void setAdUnitId(String s1)
    {
        h.a(s1);
    }

    public void setClickthroughUrl(String s1)
    {
        h.c(s1);
    }

    public void setFacebookSupported(boolean flag)
    {
    }

    public void setKeywords(String s1)
    {
        q = s1;
    }

    public void setLocation(Location location)
    {
        r = location;
    }

    public void setTesting(boolean flag)
    {
        s = flag;
    }

    public void setTimeout(int i1)
    {
        if (g != null)
        {
            g.a(i1);
        }
    }

}
