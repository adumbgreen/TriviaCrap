// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.app.Activity;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.KeyEvent;
import android.view.Window;
import android.webkit.URLUtil;
import android.widget.RelativeLayout;
import com.admarvel.android.a.a;
import com.admarvel.android.util.Logging;
import java.io.ByteArrayInputStream;
import java.io.ObjectInputStream;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

// Referenced classes of package com.admarvel.android.ads:
//            ac, AdMarvelUtils, AdMarvelAd, AdMarvelInterstitialAds, 
//            i, n, AdMarvelInternalWebView, o, 
//            g, ak, c, AdMarvelAnalyticsAdapter, 
//            al, ab, w

public class AdMarvelActivity extends Activity
{

    static int b = 0x193fe;
    private String A;
    private String B;
    private String C;
    private String D;
    private boolean E;
    private String F;
    private boolean G;
    private boolean H;
    private boolean I;
    private String J;
    private Handler K;
    private Handler L;
    WeakReference a;
    public boolean c;
    public boolean d;
    public String e;
    public String f;
    private boolean g;
    private boolean h;
    private b i;
    private int j;
    private Runnable k;
    private Runnable l;
    private String m;
    private String n;
    private String o;
    private int p;
    private boolean q;
    private boolean r;
    private String s;
    private final Handler t = new Handler();
    private String u;
    private AdMarvelAd v;
    private aa w;
    private String x;
    private String y;
    private String z;

    public AdMarvelActivity()
    {
        g = false;
        h = false;
        j = 0;
        k = new Runnable() {

            final AdMarvelActivity a;

            public void run()
            {
                com.admarvel.android.ads.AdMarvelActivity.a(a, false);
                if (a.a == null) goto _L2; else goto _L1
_L1:
                g g1 = (g)a.a.get();
_L4:
                if (g1 == null)
                {
                    break MISSING_BLOCK_LABEL_42;
                }
                g1.setCancelable(true);
                return;
_L2:
                g1 = null;
                if (true) goto _L4; else goto _L3
_L3:
                Exception exception;
                exception;
                Logging.log((new StringBuilder()).append("Exception in disable Back press button ").append(exception.getMessage()).toString());
                return;
            }

            
            {
                a = AdMarvelActivity.this;
                super();
            }

            private class g extends RelativeLayout
            {

                TextView a;
                ProgressBar b;
                final AdMarvelActivity c;
                private final Context d;
                private boolean e;
                private boolean f;
                private boolean g;
                private int h;

                private int a(float f1)
                {
                    return (int)TypedValue.applyDimension(1, f1, getResources().getDisplayMetrics());
                }

                static void a(g g1)
                {
                    g1.d();
                }

                private void d()
                {
                    RelativeLayout relativelayout;
                    w w1;
                    AdMarvelInternalWebView admarvelinternalwebview;
label0:
                    {
                        AdMarvelActivity admarvelactivity = c;
                        com.admarvel.android.ads.AdMarvelActivity.a(admarvelactivity, false);
                        relativelayout = (RelativeLayout)admarvelactivity.findViewById(AdMarvelActivity.b);
                        if (relativelayout != null)
                        {
                            w1 = (w)relativelayout.findViewWithTag((new StringBuilder()).append(AdMarvelActivity.c(admarvelactivity)).append("CONTROLS").toString());
                            admarvelinternalwebview = (AdMarvelInternalWebView)relativelayout.findViewWithTag((new StringBuilder()).append(AdMarvelActivity.c(admarvelactivity)).append("WEBVIEW").toString());
                            if (e)
                            {
                                break label0;
                            }
                            if (w1 != null && admarvelinternalwebview != null)
                            {
                                admarvelinternalwebview.clearHistory();
                                admarvelinternalwebview.setVisibility(0);
                                w1.setVisibility(0);
                                relativelayout.requestLayout();
                            }
                        }
                        return;
                    }
                    if (admarvelinternalwebview != null)
                    {
                        admarvelinternalwebview.stopLoading();
                        admarvelinternalwebview.d();
                        admarvelinternalwebview.setVisibility(8);
                    }
                    if (w1 != null)
                    {
                        w1.setVisibility(8);
                    }
                    relativelayout.requestLayout();
                }

                public boolean a()
                {
                    return g;
                }

                public void b()
                {
                    e = true;
                }

                public void c()
                {
                    setShowing(false);
                    b.setVisibility(8);
                    setVisibility(8);
                }

                public int getProgress()
                {
                    return h;
                }

                public void setCancelable(boolean flag)
                {
                    f = flag;
                }

                public void setProgress(int i1)
                {
                    h = i1;
                    b.setProgress(i1);
                    if (i1 >= 100)
                    {
                        c();
                    }
                    a.setText((new StringBuilder()).append("Loading...").append(i1).append("% ").toString());
                    a.invalidate();
                }

                public void setShowing(boolean flag)
                {
                    g = flag;
                }

                public g(Context context)
                {
                    c = AdMarvelActivity.this;
                    super(context);
                    e = false;
                    f = true;
                    g = true;
                    h = 0;
                    d = context;
                    android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(-1, -1);
                    layoutparams.addRule(13);
                    setLayoutParams(layoutparams);
                    setBackgroundColor(getResources().getColor(0x106000d));
                    new android.widget.RelativeLayout.LayoutParams(-1, a(100F));
                    a = new TextView(context);
                    android.widget.RelativeLayout.LayoutParams layoutparams1 = new android.widget.RelativeLayout.LayoutParams(-2, -2);
                    a.setLayoutParams(layoutparams1);
                    android.widget.RelativeLayout.LayoutParams layoutparams2;
                    if (com.admarvel.android.ads.ac.a() < 9)
                    {
                        b = new ProgressBar(d, null, 0x1010078);
                        layoutparams2 = new android.widget.RelativeLayout.LayoutParams(-2, -2);
                    } else
                    {
                        b = new ProgressBar(d, null, 0x1010289);
                        layoutparams2 = new android.widget.RelativeLayout.LayoutParams(a(50F), a(50F));
                    }
                    b.setId(0xb4be5ec);
                    b.setVisibility(0);
                    layoutparams2.addRule(13);
                    addView(b, layoutparams2);
                    layoutparams1.addRule(3, b.getId());
                    layoutparams1.addRule(14);
                    layoutparams1.addRule(13);
                    addView(a);
                    a.setText((new StringBuilder()).append("Loading...").append(h).append("% ").toString());
                    if (com.admarvel.android.ads.AdMarvelActivity.a(AdMarvelActivity.this))
                    {
                        f = false;
                        com.admarvel.android.ads.AdMarvelActivity.a(AdMarvelActivity.this, true);
                        AdMarvelActivity.f(AdMarvelActivity.this).postDelayed(AdMarvelActivity.E(AdMarvelActivity.this), 5000L);
                    }
                }
            }

        };
        l = new Runnable() {

            final AdMarvelActivity a;

            public void run()
            {
                AdMarvelActivity.b(a, false);
            }

            
            {
                a = AdMarvelActivity.this;
                super();
            }
        };
        q = false;
        r = false;
        c = false;
        d = false;
        E = false;
        G = false;
        H = false;
        I = false;
        K = new Handler() {

            final AdMarvelActivity a;

            public void handleMessage(Message message)
            {
                if (a.a == null) goto _L2; else goto _L1
_L1:
                g g1 = (g)a.a.get();
_L4:
                if (g1 == null)
                {
                    break MISSING_BLOCK_LABEL_36;
                }
                g1.b();
                com.admarvel.android.ads.g.a(g1);
                RelativeLayout relativelayout;
                if (!com.admarvel.android.ads.AdMarvelActivity.a(a))
                {
                    break MISSING_BLOCK_LABEL_208;
                }
                AdMarvelActivity.b(a);
                if (!AdMarvelInterstitialAds.getListener().b())
                {
                    a.finish();
                }
                if (a.e == null || a.e.length() <= 0)
                {
                    break MISSING_BLOCK_LABEL_189;
                }
                relativelayout = (RelativeLayout)a.findViewById(AdMarvelActivity.b);
                if (relativelayout == null)
                {
                    break MISSING_BLOCK_LABEL_189;
                }
                AdMarvelInternalWebView admarvelinternalwebview = (AdMarvelInternalWebView)relativelayout.findViewWithTag((new StringBuilder()).append(AdMarvelActivity.c(a)).append("WEBVIEW").toString());
                if (admarvelinternalwebview == null)
                {
                    break MISSING_BLOCK_LABEL_189;
                }
                admarvelinternalwebview.loadUrl((new StringBuilder()).append("javascript:").append(a.e).append("()").toString());
                if (AdMarvelActivity.d(a) > 2)
                {
                    a.finish();
                    return;
                }
                break MISSING_BLOCK_LABEL_242;
                try
                {
                    a.finish();
                    return;
                }
                catch (NullPointerException nullpointerexception)
                {
                    Logging.log((new StringBuilder()).append("Nullpointer exception occured in close").append(nullpointerexception.getMessage()).toString());
                }
                return;
_L2:
                g1 = null;
                if (true) goto _L4; else goto _L3
_L3:
            }

            
            {
                a = AdMarvelActivity.this;
                super();
            }
        };
        L = new Handler() {

            final AdMarvelActivity a;

            public void handleMessage(Message message)
            {
                RelativeLayout relativelayout = (RelativeLayout)a.findViewById(AdMarvelActivity.b);
                AdMarvelActivity admarvelactivity = a;
                boolean flag;
                AdMarvelInternalWebView admarvelinternalwebview;
                if (com.admarvel.android.ads.AdMarvelActivity.a(a))
                {
                    flag = false;
                } else
                {
                    flag = true;
                }
                admarvelinternalwebview = new AdMarvelInternalWebView(admarvelactivity, flag, AdMarvelActivity.e(a), AdMarvelActivity.c(a), AdMarvelActivity.f(a), null, null, AdMarvelActivity.g(a));
                admarvelinternalwebview.setVisibility(4);
                admarvelinternalwebview.setTag((new StringBuilder()).append(AdMarvelActivity.c(a)).append("WEBVIEW").toString());
                admarvelinternalwebview.i();
                if (com.admarvel.android.ads.ac.a() >= 11)
                {
                    com.admarvel.android.ads.ak.a(admarvelinternalwebview);
                } else
                {
                    com.admarvel.android.ads.al.a(admarvelinternalwebview);
                }
                admarvelinternalwebview.addJavascriptInterface(new InnerInterstitialJS(admarvelinternalwebview, a, AdMarvelActivity.g(a)), "ADMARVEL");
                admarvelinternalwebview.addJavascriptInterface(new BrightRollInnerInterstitialJS(admarvelinternalwebview, a), "AndroidBridge");
                if (ab.d(a.getApplicationContext(), "android.permission.RECORD_AUDIO"))
                {
                    Class aclass[] = {
                        com/admarvel/android/ads/AdMarvelInternalWebView, java/lang/String, java/lang/String
                    };
                    w w1;
                    try
                    {
                        if (AdMarvelActivity.g(a) != null)
                        {
                            Class class1 = Class.forName("com.admarvel.android.admarvelspeechkitadapter.Speech");
                            Object obj = class1.newInstance();
                            Method method = class1.getDeclaredMethod("initSpeechMembers", aclass);
                            Object aobj[] = new Object[3];
                            aobj[0] = admarvelinternalwebview;
                            aobj[1] = AdMarvelActivity.g(a).getBannerid();
                            aobj[2] = AdMarvelActivity.g(a).getSiteId();
                            method.invoke(obj, aobj);
                            admarvelinternalwebview.addJavascriptInterface(obj, "ADMARVEL_SPEECH");
                        }
                    }
                    catch (ClassNotFoundException classnotfoundexception)
                    {
                        Logging.log(classnotfoundexception.getMessage());
                    }
                    catch (InstantiationException instantiationexception)
                    {
                        Logging.log(instantiationexception.getMessage());
                    }
                    catch (IllegalAccessException illegalaccessexception)
                    {
                        Logging.log(illegalaccessexception.getMessage());
                    }
                    catch (NoSuchMethodException nosuchmethodexception)
                    {
                        Logging.log(nosuchmethodexception.getMessage());
                    }
                    catch (IllegalArgumentException illegalargumentexception)
                    {
                        Logging.log(illegalargumentexception.getMessage());
                    }
                    catch (InvocationTargetException invocationtargetexception)
                    {
                        Logging.log(invocationtargetexception.getMessage());
                    }
                    catch (NullPointerException nullpointerexception)
                    {
                        Logging.log(nullpointerexception.getMessage());
                    }
                }
                relativelayout.addView(admarvelinternalwebview);
                if (!com.admarvel.android.ads.AdMarvelActivity.a(a) && !AdMarvelActivity.h(a))
                {
                    w1 = new w(a, a.getApplicationContext(), AdMarvelActivity.c(a));
                    w1.setVisibility(4);
                    w1.setTag((new StringBuilder()).append(AdMarvelActivity.c(a)).append("CONTROLS").toString());
                    relativelayout.addView(w1);
                }
                if (com.admarvel.android.ads.AdMarvelActivity.a(a))
                {
                    com.admarvel.android.ads.AdMarvelInternalWebView.a(AdMarvelActivity.c(a), AdMarvelActivity.i(a));
                }
                if (AdMarvelActivity.j(a) != null && AdMarvelActivity.j(a).length() > 0)
                {
                    admarvelinternalwebview.loadUrl(AdMarvelActivity.j(a));
                } else
                if (a.e() && AdMarvelActivity.k(a) != null && AdMarvelActivity.k(a).length() > 0)
                {
                    if (AdMarvelInterstitialAds.enableOfflineSDK)
                    {
                        if (URLUtil.isNetworkUrl(AdMarvelActivity.k(a)) && ab.f(a))
                        {
                            admarvelinternalwebview.loadUrl(AdMarvelActivity.k(a));
                        }
                        if (!URLUtil.isNetworkUrl(AdMarvelActivity.k(a)))
                        {
                            SharedPreferences sharedpreferences = a.getSharedPreferences("admarvel_preferences", 0);
                            String s2 = (new StringBuilder()).append(sharedpreferences.getString("childDirectory", "NULL")).append("/").append(sharedpreferences.getString("banner_folder", "NULL")).toString();
                            if (s2 != null)
                            {
                                com.admarvel.android.ads.AdMarvelActivity.a(a, com.admarvel.android.b.a.a(s2, AdMarvelActivity.k(a)));
                                Logging.log((new StringBuilder()).append("Offline SDK:Admarvel XML Response:").append(AdMarvelActivity.e(a)).toString());
                            }
                            admarvelinternalwebview.loadDataWithBaseURL((new StringBuilder()).append(AdMarvelActivity.g(a).getOfflineBaseUrl()).append("/").toString(), AdMarvelActivity.l(a), "text/html", "utf-8", null);
                        }
                    } else
                    {
                        admarvelinternalwebview.loadUrl(AdMarvelActivity.k(a));
                    }
                    if (!AdMarvelActivity.m(a))
                    {
                        admarvelinternalwebview.a(AdMarvelActivity.n(a));
                    }
                    if (AdMarvelActivity.o(a) != null && AdMarvelActivity.o(a).length() > 0)
                    {
                        a.a(AdMarvelActivity.o(a));
                        return;
                    }
                } else
                {
                    admarvelinternalwebview.setBackgroundColor(AdMarvelActivity.p(a));
                    String s1 = (new StringBuilder()).append("content://").append(a.getPackageName()).append(".AdMarvelLocalFileContentProvider").toString();
                    if (AdMarvelInterstitialAds.enableOfflineSDK)
                    {
                        admarvelinternalwebview.loadDataWithBaseURL((new StringBuilder()).append(AdMarvelActivity.g(a).getOfflineBaseUrl()).append("/").toString(), AdMarvelActivity.l(a), "text/html", "utf-8", null);
                        return;
                    }
                    if (com.admarvel.android.ads.ac.a() < 11)
                    {
                        admarvelinternalwebview.loadDataWithBaseURL(s1, AdMarvelActivity.l(a), "text/html", "utf-8", null);
                        return;
                    } else
                    {
                        admarvelinternalwebview.loadDataWithBaseURL("http://baseurl.admarvel.com", AdMarvelActivity.l(a), "text/html", "utf-8", null);
                        return;
                    }
                }
            }

            
            {
                a = AdMarvelActivity.this;
                super();
            }

            private class InnerInterstitialJS
            {

                private final WeakReference adMarvelActivityReference;
                private final AdMarvelAd adMarvelAd;
                private final WeakReference adMarvelInternalWebViewReference;
                private int lastOrientation;
                private String videoUrl;

                public void admarvelCheckFrameValues(String s1)
                {
                }

                public void checkForApplicationSupportedOrientations(final String mCallback)
                {
                    if (adMarvelInternalWebViewReference != null)
                    {
                        final AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get();
                        AdMarvelActivity admarvelactivity;
                        if (adMarvelInternalWebView == null || !adMarvelInternalWebView.isSignalShutdown())
                        {
                            if ((admarvelactivity = (AdMarvelActivity)adMarvelActivityReference.get()) != null)
                            {
                                String as[] = com.admarvel.android.ads.ab.a(admarvelactivity).split(",");
                                HashMap hashmap = new HashMap();
                                hashmap.put("portrait", "NO");
                                hashmap.put("landscapeLeft", "NO");
                                hashmap.put("landscapeRight", "NO");
                                hashmap.put("portraitUpsideDown", "NO");
                                int i1 = as.length;
                                int j1 = 0;
                                while (j1 < i1) 
                                {
                                    String s1 = as[j1];
                                    if (s1.equals("0"))
                                    {
                                        hashmap.put("portrait", "YES");
                                    } else
                                    if (s1.equals("90"))
                                    {
                                        hashmap.put("landscapeLeft", "YES");
                                    } else
                                    if (s1.equals("-90"))
                                    {
                                        hashmap.put("landscapeRight", "YES");
                                    } else
                                    if (s1.equals("180"))
                                    {
                                        hashmap.put("portraitUpsideDown", "YES");
                                    }
                                    j1++;
                                }
                                final String supportedScreenOrientationParam = (new StringBuilder()).append("\"{portrait:").append((String)hashmap.get("portrait")).append(",").append("landscapeLeft:").append((String)hashmap.get("landscapeLeft")).append(",").append("landscapeRight:").append((String)hashmap.get("landscapeRight")).append(",").append("portraitUpsideDown:").append((String)hashmap.get("portraitUpsideDown")).append("}\"").toString();
                                if (adMarvelInternalWebView != null && mCallback != null)
                                {
                                    AdMarvelActivity.f(admarvelactivity).post(new Runnable() {

                                        final InnerInterstitialJS this$0;
                                        final AdMarvelInternalWebView val$adMarvelInternalWebView;
                                        final String val$mCallback;
                                        final String val$supportedScreenOrientationParam;

                                        public void run()
                                        {
                                            adMarvelInternalWebView.loadUrl((new StringBuilder()).append("javascript:").append(mCallback).append("(").append(supportedScreenOrientationParam).append(")").toString());
                                        }

                        
                        {
                            this$0 = InnerInterstitialJS.this;
                            adMarvelInternalWebView = admarvelinternalwebview;
                            mCallback = s1;
                            supportedScreenOrientationParam = s2;
                            super();
                        }
                                    });
                                    return;
                                }
                            }
                        }
                    }
                }

                public void checkNetworkAvailable(String s1)
                {
                    AdMarvelActivity admarvelactivity = (AdMarvelActivity)adMarvelActivityReference.get();
                    AdMarvelInternalWebView admarvelinternalwebview;
                    if (admarvelactivity != null)
                    {
                        if ((admarvelinternalwebview = (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get()) != null && !admarvelinternalwebview.isSignalShutdown())
                        {
                            AdMarvelActivity.f(admarvelactivity).post(new c(admarvelinternalwebview, s1));
                            return;
                        }
                    }
                }

                public void cleanup()
                {
                    Logging.log("window.ADMARVEL.cleanup()");
                    AdMarvelActivity admarvelactivity;
                    for (admarvelactivity = (AdMarvelActivity)adMarvelActivityReference.get(); admarvelactivity == null || (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get() == null;)
                    {
                        return;
                    }

                    d d1 = admarvelactivity. new d();
                    AdMarvelActivity.f(admarvelactivity).post(d1);
                }

                public void closeinterstitialad()
                {
                    AdMarvelActivity admarvelactivity = (AdMarvelActivity)adMarvelActivityReference.get();
                    AdMarvelInternalWebView admarvelinternalwebview;
                    if (admarvelactivity != null)
                    {
                        if ((admarvelinternalwebview = (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get()) == null || !admarvelinternalwebview.isSignalShutdown())
                        {
                            AdMarvelActivity.q(admarvelactivity).sendEmptyMessage(0);
                            return;
                        }
                    }
                }

                public void createcalendarevent(final String date, final String title, final String description)
                {
                    AdMarvelActivity admarvelactivity = (AdMarvelActivity)adMarvelActivityReference.get();
                    final AdMarvelInternalWebView adMarvelInternalWebView;
                    if (admarvelactivity != null)
                    {
                        if ((adMarvelInternalWebView = (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get()) != null && !adMarvelInternalWebView.isSignalShutdown() && ab.d(admarvelactivity, "android.permission.READ_CALENDAR") && ab.d(admarvelactivity, "android.permission.WRITE_CALENDAR"))
                        {
                            android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(admarvelactivity);
                            builder.setMessage("Allow access to Calendar?").setCancelable(false).setPositiveButton("Yes", admarvelactivity. new android.content.DialogInterface.OnClickListener() {

                                final InnerInterstitialJS this$0;
                                final AdMarvelActivity val$adMarvelActivity;
                                final AdMarvelInternalWebView val$adMarvelInternalWebView;
                                final String val$date;
                                final String val$description;
                                final String val$title;

                                public void onClick(DialogInterface dialoginterface, int i1)
                                {
                                    if (com.admarvel.android.ads.ac.a() >= 14)
                                    {
                                        AdMarvelActivity.f(adMarvelActivity).post(new f(adMarvelInternalWebView, adMarvelActivity, date, title, description));
                                        return;
                                    } else
                                    {
                                        AdMarvelActivity.f(adMarvelActivity).post(new e(adMarvelInternalWebView, adMarvelActivity, date, title, description));
                                        return;
                                    }
                                }


// JavaClassFileOutputException: Invalid index accessing method local variables table of <init>

                                private class f
                                    implements Runnable
                                {

                                    SimpleDateFormat a;
                                    Long b;
                                    Long c;
                                    String d;
                                    String e;
                                    String f;
                                    String g;
                                    String h;
                                    String i;
                                    String j;
                                    String k;
                                    int l;
                                    int m;
                                    int n;
                                    private final WeakReference o;
                                    private final WeakReference p;

                                    public void run()
                                    {
                                        Cursor cursor;
                                        AdMarvelActivity admarvelactivity;
                                        AdMarvelInternalWebView admarvelinternalwebview;
                                        cursor = null;
                                        if (o != null)
                                        {
                                            admarvelactivity = (AdMarvelActivity)o.get();
                                        } else
                                        {
                                            admarvelactivity = null;
                                        }
                                        if (p != null)
                                        {
                                            admarvelinternalwebview = (AdMarvelInternalWebView)p.get();
                                        } else
                                        {
                                            admarvelinternalwebview = null;
                                        }
                                        if (admarvelactivity != null && admarvelinternalwebview != null) goto _L2; else goto _L1
_L1:
                                        return;
_L2:
                                        ContentResolver contentresolver = admarvelactivity.getContentResolver();
                                        cursor = contentresolver.query(android.provider.CalendarContract.Calendars.CONTENT_URI, new String[] {
                                            "_id", "calendar_displayName"
                                        }, null, null, null);
                                        if (cursor == null) goto _L4; else goto _L3
_L3:
                                        if (!cursor.moveToFirst()) goto _L4; else goto _L5
_L5:
                                        String as[];
                                        int ai[];
                                        as = new String[cursor.getCount()];
                                        ai = new int[cursor.getCount()];
                                        int i1 = 0;
_L7:
                                        if (i1 >= as.length)
                                        {
                                            break; /* Loop/switch isn't completed */
                                        }
                                        ai[i1] = cursor.getInt(0);
                                        as[i1] = cursor.getString(1);
                                        cursor.moveToNext();
                                        i1++;
                                        if (true) goto _L7; else goto _L6
_L6:
                                        ContentValues contentvalues;
                                        contentvalues = new ContentValues();
                                        contentvalues.put("calendar_id", Integer.valueOf(ai[0]));
                                        if (d != null)
                                        {
                                            contentvalues.put("title", d);
                                        }
                                        if (e != null)
                                        {
                                            contentvalues.put("description", e);
                                        }
                                        if (f != null)
                                        {
                                            contentvalues.put("eventLocation", f);
                                        }
                                        if (b != null)
                                        {
                                            contentvalues.put("dtstart", b);
                                        }
                                        if (c != null)
                                        {
                                            contentvalues.put("dtend", c);
                                        }
                                        if (g != null && (g.toLowerCase().equals("true") || g.toLowerCase().equals("yes")))
                                        {
                                            contentvalues.put("allDay", Integer.valueOf(1));
                                        }
                                        if (l <= 0)
                                        {
                                            contentvalues.put("hasAlarm", Integer.valueOf(1));
                                        }
                                        if (h == null || h.length() <= 0) goto _L9; else goto _L8
_L8:
                                        contentvalues.put("eventTimezone", h);
_L13:
                                        Uri uri;
                                        if (i != null && i.length() > 0)
                                        {
                                            contentvalues.put("rrule", i);
                                        }
                                        if (j != null && j.length() > 0)
                                        {
                                            contentvalues.put("exdate", j);
                                        }
                                        contentvalues.put("eventStatus", Integer.valueOf(m));
                                        contentvalues.put("availability", Integer.valueOf(n));
                                        uri = contentresolver.insert(android.provider.CalendarContract.Events.CONTENT_URI, contentvalues);
                                        if (uri == null) goto _L11; else goto _L10
_L10:
                                        if (l <= 0)
                                        {
                                            ContentValues contentvalues1 = new ContentValues();
                                            contentvalues1.put("event_id", Long.valueOf(Long.parseLong(uri.getLastPathSegment())));
                                            contentvalues1.put("method", Integer.valueOf(1));
                                            contentvalues1.put("minutes", Integer.valueOf(Math.abs(l)));
                                            contentresolver.insert(android.provider.CalendarContract.Reminders.CONTENT_URI, contentvalues1);
                                        }
                                        if (k != null && k.length() > 0)
                                        {
                                            admarvelinternalwebview.loadUrl((new StringBuilder()).append("javascript:").append(k).append("(\"YES\")").toString());
                                        }
_L16:
                                        if (cursor == null) goto _L1; else goto _L12
_L12:
                                        cursor.close();
                                        return;
_L9:
                                        contentvalues.put("eventTimezone", TimeZone.getDefault().getID());
                                          goto _L13
                                        Exception exception1;
                                        exception1;
                                        exception1.printStackTrace();
                                        if (k != null && k.length() > 0)
                                        {
                                            admarvelinternalwebview.loadUrl((new StringBuilder()).append("javascript:").append(k).append("(\"NO\")").toString());
                                        }
                                        if (cursor == null) goto _L1; else goto _L14
_L14:
                                        cursor.close();
                                        return;
_L11:
                                        if (k == null || k.length() <= 0) goto _L16; else goto _L15
_L15:
                                        admarvelinternalwebview.loadUrl((new StringBuilder()).append("javascript:").append(k).append("(\"NO\")").toString());
                                          goto _L16
                                        Exception exception;
                                        exception;
                                        if (cursor != null)
                                        {
                                            cursor.close();
                                        }
                                        throw exception;
_L4:
                                        if (k == null || k.length() <= 0) goto _L16; else goto _L17
_L17:
                                        admarvelinternalwebview.loadUrl((new StringBuilder()).append("javascript:").append(k).append("(\"NO\")").toString());
                                          goto _L16
                                    }

                                    public f(AdMarvelInternalWebView admarvelinternalwebview, AdMarvelActivity admarvelactivity, String s1, String s2, String s3)
                                    {
                                        a = new SimpleDateFormat("yyyyMMddhhmm");
                                        b = null;
                                        c = null;
                                        l = 1;
                                        m = 0;
                                        n = 0;
                                        o = new WeakReference(admarvelactivity);
                                        p = new WeakReference(admarvelinternalwebview);
                                        if (s1 == null)
                                        {
                                            break MISSING_BLOCK_LABEL_110;
                                        }
                                        b = Long.valueOf(a.parse(s1).getTime());
                                        c = Long.valueOf(0x36ee80L + a.parse(s1).getTime());
                                        d = s2;
                                        e = s3;
                                        return;
                                        Exception exception;
                                        exception;
                                        exception.printStackTrace();
                                        return;
                                    }

                                    public f(AdMarvelInternalWebView admarvelinternalwebview, AdMarvelActivity admarvelactivity, String s1, String s2, String s3, String s4, String s5, 
                                            String s6, int i1)
                                    {
                                        a = new SimpleDateFormat("yyyyMMddhhmm");
                                        b = null;
                                        c = null;
                                        l = 1;
                                        m = 0;
                                        n = 0;
                                        o = new WeakReference(admarvelactivity);
                                        p = new WeakReference(admarvelinternalwebview);
                                        if (s1 == null)
                                        {
                                            break MISSING_BLOCK_LABEL_88;
                                        }
                                        b = Long.valueOf(a.parse(s1).getTime());
                                        if (s6 == null)
                                        {
                                            break MISSING_BLOCK_LABEL_151;
                                        }
                                        c = Long.valueOf(a.parse(s6).getTime());
_L1:
                                        d = s2;
                                        e = s3;
                                        f = s4;
                                        g = s5;
                                        if (i1 <= 0)
                                        {
                                            try
                                            {
                                                l = i1 / 60;
                                                return;
                                            }
                                            catch (Exception exception)
                                            {
                                                exception.printStackTrace();
                                            }
                                        }
                                        break MISSING_BLOCK_LABEL_183;
                                        c = Long.valueOf(0x36ee80L + a.parse(s1).getTime());
                                          goto _L1
                                    }

                                    public f(AdMarvelInternalWebView admarvelinternalwebview, AdMarvelActivity admarvelactivity, String s1, String s2, String s3, String s4, String s5, 
                                            String s6, int i1, String s7, String s8, String s9, String s10, int j1, 
                                            int k1, String s11)
                                    {
                                        a = new SimpleDateFormat("yyyyMMddhhmm");
                                        b = null;
                                        c = null;
                                        l = 1;
                                        m = 0;
                                        n = 0;
                                        o = new WeakReference(admarvelactivity);
                                        p = new WeakReference(admarvelinternalwebview);
                                        if (s1 == null)
                                        {
                                            break MISSING_BLOCK_LABEL_88;
                                        }
                                        b = Long.valueOf(a.parse(s1).getTime());
                                        if (s6 == null) goto _L2; else goto _L1
_L1:
                                        c = Long.valueOf(a.parse(s6).getTime());
_L11:
                                        d = s2;
                                        e = s3;
                                        f = s4;
                                        g = s5;
                                        if (i1 > 0)
                                        {
                                            break MISSING_BLOCK_LABEL_150;
                                        }
                                        l = i1 / 60;
                                        if (s7 == null) goto _L4; else goto _L3
_L3:
                                        int l1 = s7.length();
                                        if (l1 <= 0) goto _L4; else goto _L5
_L5:
                                        String as[] = s7.split(":");
                                        if (as.length != 2) goto _L7; else goto _L6
_L6:
                                        if (!as[0].startsWith("+")) goto _L9; else goto _L8
_L8:
                                        int j2 = 60 * Integer.parseInt(as[0].substring(1)) + Integer.parseInt(as[1]);
_L13:
                                        String as1[] = TimeZone.getAvailableIDs(1000 * (j2 * 60));
                                        if (as1 == null) goto _L4; else goto _L10
_L10:
                                        if (as1.length > 0)
                                        {
                                            h = as1[0];
                                        }
                                          goto _L4
_L2:
                                        c = Long.valueOf(0x36ee80L + a.parse(s1).getTime());
                                          goto _L11
_L4:
                                        try
                                        {
                                            i = s9;
                                            j = s10;
                                            k = s11;
                                            m = j1;
                                            n = k1;
                                            return;
                                        }
                                        catch (Exception exception)
                                        {
                                            exception.printStackTrace();
                                        }
                                        return;
_L9:
                                        boolean flag1 = as[0].startsWith("-");
                                        j2 = 0;
                                        if (!flag1) goto _L13; else goto _L12
_L12:
                                        j2 = -1 * (60 * Integer.parseInt(as[0].substring(1)) + Integer.parseInt(as[1]));
                                          goto _L13
_L7:
                                        int i2 = as.length;
                                        j2 = 0;
                                        if (i2 != 1) goto _L13; else goto _L14
_L14:
label0:
                                        {
                                            if (!as[0].startsWith("+"))
                                            {
                                                break label0;
                                            }
                                            j2 = 60 * Integer.parseInt(as[0].substring(1));
                                        }
                                          goto _L13
                                        boolean flag = as[0].startsWith("-");
                                        j2 = 0;
                                        if (!flag) goto _L13; else goto _L15
_L15:
                                        int k2 = Integer.parseInt(as[0].substring(1));
                                        j2 = -1 * (k2 * 60);
                                          goto _L13
                                        Exception exception1;
                                        exception1;
                                        exception1.printStackTrace();
                                          goto _L4
                                    }
                                }


                                private class e
                                    implements Runnable
                                {

                                    SimpleDateFormat a;
                                    Long b;
                                    Long c;
                                    String d;
                                    String e;
                                    String f;
                                    String g;
                                    String h;
                                    String i;
                                    int j;
                                    private final WeakReference k;
                                    private final WeakReference l;

                                    String a()
                                    {
                                        if (com.admarvel.android.ads.ac.a() >= 8)
                                        {
                                            return "content://com.android.calendar/";
                                        } else
                                        {
                                            return "content://calendar/";
                                        }
                                    }

                                    public void run()
                                    {
                                        Cursor cursor;
                                        AdMarvelActivity admarvelactivity;
                                        AdMarvelInternalWebView admarvelinternalwebview;
                                        cursor = null;
                                        if (k != null)
                                        {
                                            admarvelactivity = (AdMarvelActivity)k.get();
                                        } else
                                        {
                                            admarvelactivity = null;
                                        }
                                        if (l != null)
                                        {
                                            admarvelinternalwebview = (AdMarvelInternalWebView)l.get();
                                        } else
                                        {
                                            admarvelinternalwebview = null;
                                        }
                                        if (admarvelactivity != null && admarvelinternalwebview != null) goto _L2; else goto _L1
_L1:
                                        return;
_L2:
                                        ContentResolver contentresolver = admarvelactivity.getContentResolver();
                                        cursor = contentresolver.query(Uri.parse((new StringBuilder()).append(a()).append("calendars").toString()), new String[] {
                                            "_id", "displayname"
                                        }, null, null, null);
                                        if (cursor == null) goto _L4; else goto _L3
_L3:
                                        if (!cursor.moveToFirst()) goto _L4; else goto _L5
_L5:
                                        String as[];
                                        int ai[];
                                        as = new String[cursor.getCount()];
                                        ai = new int[cursor.getCount()];
                                        int i1 = 0;
_L7:
                                        if (i1 >= as.length)
                                        {
                                            break; /* Loop/switch isn't completed */
                                        }
                                        ai[i1] = cursor.getInt(0);
                                        as[i1] = cursor.getString(1);
                                        cursor.moveToNext();
                                        i1++;
                                        if (true) goto _L7; else goto _L6
_L6:
                                        Uri uri1;
                                        Uri uri2;
                                        ContentValues contentvalues = new ContentValues();
                                        contentvalues.put("calendar_id", Integer.valueOf(ai[0]));
                                        if (d != null)
                                        {
                                            contentvalues.put("title", d);
                                        }
                                        if (e != null)
                                        {
                                            contentvalues.put("description", e);
                                        }
                                        if (f != null)
                                        {
                                            contentvalues.put("eventLocation", f);
                                        }
                                        if (b != null)
                                        {
                                            contentvalues.put("dtstart", b);
                                        }
                                        if (c != null)
                                        {
                                            contentvalues.put("dtend", c);
                                        }
                                        if (g != null && (g.toLowerCase().equals("true") || g.toLowerCase().equals("yes")))
                                        {
                                            contentvalues.put("allDay", Integer.valueOf(1));
                                        }
                                        if (j <= 0)
                                        {
                                            contentvalues.put("hasAlarm", Integer.valueOf(1));
                                        }
                                        if (h != null && h.length() > 0)
                                        {
                                            contentvalues.put("eventTimezone", h);
                                        }
                                        Uri uri = Uri.parse((new StringBuilder()).append(a()).append("events").toString());
                                        uri1 = Uri.parse((new StringBuilder()).append(a()).append("reminders").toString());
                                        uri2 = contentresolver.insert(uri, contentvalues);
                                        if (uri2 == null) goto _L9; else goto _L8
_L8:
                                        if (j <= 0)
                                        {
                                            ContentValues contentvalues1 = new ContentValues();
                                            contentvalues1.put("event_id", Long.valueOf(Long.parseLong(uri2.getLastPathSegment())));
                                            contentvalues1.put("method", Integer.valueOf(1));
                                            contentvalues1.put("minutes", Integer.valueOf(Math.abs(j)));
                                            contentresolver.insert(uri1, contentvalues1);
                                        }
                                        if (i != null && i.length() > 0)
                                        {
                                            admarvelinternalwebview.loadUrl((new StringBuilder()).append("javascript:").append(i).append("(\"YES\")").toString());
                                        }
_L4:
                                        if (cursor == null) goto _L1; else goto _L10
_L10:
                                        cursor.close();
                                        return;
_L9:
                                        if (i == null || i.length() <= 0) goto _L4; else goto _L11
_L11:
                                        admarvelinternalwebview.loadUrl((new StringBuilder()).append("javascript:").append(i).append("(\"NO\")").toString());
                                          goto _L4
                                        Exception exception1;
                                        exception1;
                                        if (i != null && i.length() > 0)
                                        {
                                            admarvelinternalwebview.loadUrl((new StringBuilder()).append("javascript:").append(i).append("(\"NO\")").toString());
                                        }
                                        exception1.printStackTrace();
                                        if (cursor == null) goto _L1; else goto _L12
_L12:
                                        cursor.close();
                                        return;
                                        Exception exception;
                                        exception;
                                        if (cursor != null)
                                        {
                                            cursor.close();
                                        }
                                        throw exception;
                                    }

                                    public e(AdMarvelInternalWebView admarvelinternalwebview, AdMarvelActivity admarvelactivity, String s1, String s2, String s3)
                                    {
                                        a = new SimpleDateFormat("yyyyMMddhhmm");
                                        b = null;
                                        c = null;
                                        j = 1;
                                        k = new WeakReference(admarvelactivity);
                                        l = new WeakReference(admarvelinternalwebview);
                                        if (s1 == null)
                                        {
                                            break MISSING_BLOCK_LABEL_100;
                                        }
                                        b = Long.valueOf(a.parse(s1).getTime());
                                        c = Long.valueOf(0x36ee80L + a.parse(s1).getTime());
                                        d = s2;
                                        e = s3;
                                        return;
                                        Exception exception;
                                        exception;
                                        exception.printStackTrace();
                                        return;
                                    }

                                    public e(AdMarvelInternalWebView admarvelinternalwebview, AdMarvelActivity admarvelactivity, String s1, String s2, String s3, String s4, String s5, 
                                            String s6, int i1)
                                    {
                                        a = new SimpleDateFormat("yyyyMMddhhmm");
                                        b = null;
                                        c = null;
                                        j = 1;
                                        k = new WeakReference(admarvelactivity);
                                        l = new WeakReference(admarvelinternalwebview);
                                        if (s1 == null)
                                        {
                                            break MISSING_BLOCK_LABEL_78;
                                        }
                                        b = Long.valueOf(a.parse(s1).getTime());
                                        if (s6 == null)
                                        {
                                            break MISSING_BLOCK_LABEL_141;
                                        }
                                        c = Long.valueOf(a.parse(s6).getTime());
_L1:
                                        d = s2;
                                        e = s3;
                                        f = s4;
                                        g = s5;
                                        if (i1 <= 0)
                                        {
                                            try
                                            {
                                                j = i1 / 60;
                                                return;
                                            }
                                            catch (Exception exception)
                                            {
                                                exception.printStackTrace();
                                            }
                                        }
                                        break MISSING_BLOCK_LABEL_173;
                                        c = Long.valueOf(0x36ee80L + a.parse(s1).getTime());
                                          goto _L1
                                    }

                                    public e(AdMarvelInternalWebView admarvelinternalwebview, AdMarvelActivity admarvelactivity, String s1, String s2, String s3, String s4, String s5, 
                                            String s6, int i1, String s7, String s8, String s9, String s10, int j1, 
                                            int k1, String s11)
                                    {
                                        a = new SimpleDateFormat("yyyyMMddhhmm");
                                        b = null;
                                        c = null;
                                        j = 1;
                                        k = new WeakReference(admarvelactivity);
                                        l = new WeakReference(admarvelinternalwebview);
                                        if (s1 != null)
                                        {
                                            try
                                            {
                                                b = Long.valueOf(a.parse(s1).getTime());
                                            }
                                            catch (Exception exception)
                                            {
                                                exception.printStackTrace();
                                                return;
                                            }
                                        }
                                        if (s6 == null)
                                        {
                                            break MISSING_BLOCK_LABEL_166;
                                        }
                                        c = Long.valueOf(a.parse(s6).getTime());
_L1:
                                        d = s2;
                                        e = s3;
                                        f = s4;
                                        g = s5;
                                        if (i1 > 0)
                                        {
                                            break MISSING_BLOCK_LABEL_140;
                                        }
                                        j = i1 / 60;
                                        if (s7 == null)
                                        {
                                            break MISSING_BLOCK_LABEL_159;
                                        }
                                        if (s7.length() > 0)
                                        {
                                            h = s7;
                                        }
                                        i = s11;
                                        return;
                                        c = Long.valueOf(0x36ee80L + a.parse(s1).getTime());
                                          goto _L1
                                    }
                                }

                            }).setNegativeButton("No", new android.content.DialogInterface.OnClickListener() {

                                final InnerInterstitialJS this$0;

                                public void onClick(DialogInterface dialoginterface, int i1)
                                {
                                    dialoginterface.cancel();
                                }

                        
                        {
                            this$0 = InnerInterstitialJS.this;
                            super();
                        }
                            });
                            builder.create().show();
                            return;
                        }
                    }
                }

                public void createcalendarevent(final String date, final String title, final String description, final String location, final String allday, final String endDate, final int reminderoffset)
                {
                    AdMarvelActivity admarvelactivity = (AdMarvelActivity)adMarvelActivityReference.get();
                    final AdMarvelInternalWebView adMarvelInternalWebView;
                    if (admarvelactivity != null)
                    {
                        if ((adMarvelInternalWebView = (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get()) != null && !adMarvelInternalWebView.isSignalShutdown() && ab.d(admarvelactivity, "android.permission.READ_CALENDAR") && ab.d(admarvelactivity, "android.permission.WRITE_CALENDAR"))
                        {
                            android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(admarvelactivity);
                            builder.setMessage("Allow access to Calendar?").setCancelable(false).setPositiveButton("Yes", admarvelactivity. new android.content.DialogInterface.OnClickListener() {

                                final InnerInterstitialJS this$0;
                                final AdMarvelActivity val$adMarvelActivity;
                                final AdMarvelInternalWebView val$adMarvelInternalWebView;
                                final String val$allday;
                                final String val$date;
                                final String val$description;
                                final String val$endDate;
                                final String val$location;
                                final int val$reminderoffset;
                                final String val$title;

                                public void onClick(DialogInterface dialoginterface, int i1)
                                {
                                    if (com.admarvel.android.ads.ac.a() >= 14)
                                    {
                                        AdMarvelActivity.f(adMarvelActivity).post(new f(adMarvelInternalWebView, adMarvelActivity, date, title, description, location, allday, endDate, reminderoffset));
                                        return;
                                    } else
                                    {
                                        AdMarvelActivity.f(adMarvelActivity).post(new e(adMarvelInternalWebView, adMarvelActivity, date, title, description, location, allday, endDate, reminderoffset));
                                        return;
                                    }
                                }


// JavaClassFileOutputException: Invalid index accessing method local variables table of <init>
                            }).setNegativeButton("No", new android.content.DialogInterface.OnClickListener() {

                                final InnerInterstitialJS this$0;

                                public void onClick(DialogInterface dialoginterface, int i1)
                                {
                                    dialoginterface.cancel();
                                }

                        
                        {
                            this$0 = InnerInterstitialJS.this;
                            super();
                        }
                            });
                            builder.create().show();
                            return;
                        }
                    }
                }

                public void createcalendarevent(final String date, final String title, final String description, final String location, final String allday, final String endDate, final int reminderoffset, 
                        final String timezone, final String url, final String recurrenceRules, final String exceptionDateString, final int status, final int availability, final String callback)
                {
                    final AdMarvelActivity adMarvelActivity = (AdMarvelActivity)adMarvelActivityReference.get();
                    final AdMarvelInternalWebView adMarvelInternalWebView;
                    if (adMarvelActivity != null)
                    {
                        if ((adMarvelInternalWebView = (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get()) != null && !adMarvelInternalWebView.isSignalShutdown())
                        {
                            if (!ab.d(adMarvelActivity, "android.permission.READ_CALENDAR") || !ab.d(adMarvelActivity, "android.permission.WRITE_CALENDAR"))
                            {
                                if (callback != null)
                                {
                                    AdMarvelActivity.f(adMarvelActivity).post(new Runnable() {

                                        final InnerInterstitialJS this$0;
                                        final AdMarvelInternalWebView val$adMarvelInternalWebView;
                                        final String val$callback;

                                        public void run()
                                        {
                                            adMarvelInternalWebView.loadUrl((new StringBuilder()).append("javascript:").append(callback).append("(NO)").toString());
                                        }

                        
                        {
                            this$0 = InnerInterstitialJS.this;
                            adMarvelInternalWebView = admarvelinternalwebview;
                            callback = s1;
                            super();
                        }
                                    });
                                    return;
                                }
                            } else
                            {
                                android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(adMarvelActivity);
                                builder.setMessage("Allow access to Calendar?").setCancelable(false).setPositiveButton("Yes", adMarvelActivity. new android.content.DialogInterface.OnClickListener() {

                                    final InnerInterstitialJS this$0;
                                    final AdMarvelActivity val$adMarvelActivity;
                                    final AdMarvelInternalWebView val$adMarvelInternalWebView;
                                    final String val$allday;
                                    final int val$availability;
                                    final String val$callback;
                                    final String val$date;
                                    final String val$description;
                                    final String val$endDate;
                                    final String val$exceptionDateString;
                                    final String val$location;
                                    final String val$recurrenceRules;
                                    final int val$reminderoffset;
                                    final int val$status;
                                    final String val$timezone;
                                    final String val$title;
                                    final String val$url;

                                    public void onClick(DialogInterface dialoginterface, int i1)
                                    {
                                        if (com.admarvel.android.ads.ac.a() >= 14)
                                        {
                                            AdMarvelActivity.f(adMarvelActivity).post(new f(adMarvelInternalWebView, adMarvelActivity, date, title, description, location, allday, endDate, reminderoffset, timezone, url, recurrenceRules, exceptionDateString, status, availability, callback));
                                            return;
                                        } else
                                        {
                                            AdMarvelActivity.f(adMarvelActivity).post(new e(adMarvelInternalWebView, adMarvelActivity, date, title, description, location, allday, endDate, reminderoffset, timezone, url, recurrenceRules, exceptionDateString, status, availability, callback));
                                            return;
                                        }
                                    }


// JavaClassFileOutputException: Invalid index accessing method local variables table of <init>
                                }).setNegativeButton("No", new android.content.DialogInterface.OnClickListener() {

                                    final InnerInterstitialJS this$0;
                                    final AdMarvelActivity val$adMarvelActivity;
                                    final AdMarvelInternalWebView val$adMarvelInternalWebView;
                                    final String val$callback;

                                    public void onClick(DialogInterface dialoginterface, int i1)
                                    {
                                        if (callback != null)
                                        {
                                            AdMarvelActivity.f(adMarvelActivity).post(new Runnable() {

                                                final _cls7 this$1;

                                                public void run()
                                                {
                                                    adMarvelInternalWebView.loadUrl((new StringBuilder()).append("javascript:").append(callback).append("(\"NO\")").toString());
                                                }

                        
                        {
                            this$1 = _cls7.this;
                            super();
                        }
                                            });
                                        }
                                        dialoginterface.cancel();
                                    }

                        
                        {
                            this$0 = InnerInterstitialJS.this;
                            callback = s1;
                            adMarvelActivity = admarvelactivity;
                            adMarvelInternalWebView = admarvelinternalwebview;
                            super();
                        }
                                });
                                builder.create().show();
                                return;
                            }
                        }
                    }
                }

                public void detectlocation(String s1)
                {
                    AdMarvelInternalWebView admarvelinternalwebview = (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get();
                    if (admarvelinternalwebview != null && !admarvelinternalwebview.isSignalShutdown())
                    {
                        l l1 = com.admarvel.android.ads.l.a();
                        if (l1 != null)
                        {
                            l1.a(admarvelinternalwebview, s1);
                        }
                    }
                }

                public void detectsizechange(String s1)
                {
                    AdMarvelInternalWebView admarvelinternalwebview = (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get();
                    if (admarvelinternalwebview != null && !admarvelinternalwebview.isSignalShutdown())
                    {
                        admarvelinternalwebview.sizeChangeCallback = s1;
                    }
                }

                public void detectvisibility(String s1)
                {
                    AdMarvelInternalWebView admarvelinternalwebview = (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get();
                    if (admarvelinternalwebview != null && !admarvelinternalwebview.isSignalShutdown() && !admarvelinternalwebview.isLastStateVisible)
                    {
                        admarvelinternalwebview.visibilityCallback = s1;
                        if (admarvelinternalwebview.isInterstitialAdDisplayed)
                        {
                            admarvelinternalwebview.injectJavaScript((new StringBuilder()).append(s1).append("(").append(true).append(")").toString());
                            admarvelinternalwebview.isLastStateVisible = true;
                        }
                    }
                }

                public void disableautodetect()
                {
                    AdMarvelInternalWebView admarvelinternalwebview = (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get();
                    if (admarvelinternalwebview != null && !admarvelinternalwebview.isSignalShutdown())
                    {
                        admarvelinternalwebview.getEnableAutoDetect().set(false);
                    }
                }

                public void disablebackbutton()
                {
                    AdMarvelActivity admarvelactivity = (AdMarvelActivity)adMarvelActivityReference.get();
                    AdMarvelInternalWebView admarvelinternalwebview;
                    if (admarvelactivity != null)
                    {
                        if ((admarvelinternalwebview = (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get()) != null && !admarvelinternalwebview.isSignalShutdown())
                        {
                            if (AdMarvelActivity.D(admarvelactivity) != null)
                            {
                                AdMarvelActivity.f(admarvelactivity).removeCallbacks(AdMarvelActivity.D(admarvelactivity));
                            }
                            AdMarvelActivity.b(admarvelactivity, true);
                            return;
                        }
                    }
                }

                public void disablebackbutton(int i1)
                {
                    AdMarvelActivity admarvelactivity = (AdMarvelActivity)adMarvelActivityReference.get();
                    AdMarvelInternalWebView admarvelinternalwebview;
                    if (admarvelactivity != null)
                    {
                        if ((admarvelinternalwebview = (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get()) != null && !admarvelinternalwebview.isSignalShutdown() && i1 > 0)
                        {
                            AdMarvelActivity.b(admarvelactivity, true);
                            if (AdMarvelActivity.D(admarvelactivity) != null)
                            {
                                AdMarvelActivity.f(admarvelactivity).removeCallbacks(AdMarvelActivity.D(admarvelactivity));
                            }
                            AdMarvelActivity.f(admarvelactivity).postDelayed(AdMarvelActivity.D(admarvelactivity), i1);
                            return;
                        }
                    }
                }

                public void disableclosebutton(String s1)
                {
                    for (AdMarvelInternalWebView admarvelinternalwebview = (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get(); admarvelinternalwebview != null && admarvelinternalwebview.isSignalShutdown() || s1 == null || !s1.equals("true");)
                    {
                        return;
                    }

                    sdkclosebutton("false", "false");
                }

                public void disablerotations()
                {
                    while (adMarvelInternalWebViewReference.get() != null && ((AdMarvelInternalWebView)adMarvelInternalWebViewReference.get()).isSignalShutdown() || (AdMarvelActivity)adMarvelActivityReference.get() == null) 
                    {
                        return;
                    }
                    disablerotations(null);
                }

                public void disablerotations(String s1)
                {
                    AdMarvelActivity admarvelactivity;
                    admarvelactivity = (AdMarvelActivity)adMarvelActivityReference.get();
                    break MISSING_BLOCK_LABEL_11;
                    while (true) 
                    {
                        int i1;
                        do
                        {
                            do
                            {
                                return;
                            } while (admarvelactivity == null || adMarvelInternalWebViewReference.get() != null && ((AdMarvelInternalWebView)adMarvelInternalWebViewReference.get()).isSignalShutdown());
                            lastOrientation = admarvelactivity.getRequestedOrientation();
                            if (com.admarvel.android.ads.ac.a() < 9)
                            {
                                i1 = admarvelactivity.getResources().getConfiguration().orientation;
                            } else
                            {
                                n n1 = new n(admarvelactivity);
                                AdMarvelActivity.f(admarvelactivity).post(n1);
                                i1 = 0x80000000;
                                while (i1 == 0x80000000) 
                                {
                                    i1 = com.admarvel.android.ads.n.a(n1);
                                }
                            }
                            if (s1 == null)
                            {
                                break;
                            }
                            if (com.admarvel.android.ads.ac.a() < 9)
                            {
                                if (s1.equalsIgnoreCase("Portrait"))
                                {
                                    admarvelactivity.setRequestedOrientation(1);
                                    return;
                                }
                                if (s1.equalsIgnoreCase("LandscapeLeft"))
                                {
                                    admarvelactivity.setRequestedOrientation(0);
                                    return;
                                }
                            } else
                            {
                                if (s1.equalsIgnoreCase("Portrait"))
                                {
                                    admarvelactivity.setRequestedOrientation(1);
                                    return;
                                }
                                if (s1.equalsIgnoreCase("LandscapeLeft"))
                                {
                                    admarvelactivity.setRequestedOrientation(0);
                                    return;
                                } else
                                {
                                    AdMarvelActivity.f(admarvelactivity).post(new w(admarvelactivity, s1));
                                    return;
                                }
                            }
                        } while (true);
                        if (com.admarvel.android.ads.ac.a() < 9)
                        {
                            if (i1 == 1)
                            {
                                admarvelactivity.setRequestedOrientation(1);
                                return;
                            }
                            if (i1 == 2)
                            {
                                admarvelactivity.setRequestedOrientation(0);
                                return;
                            }
                        } else
                        {
                            if (i1 == 0)
                            {
                                AdMarvelActivity.f(admarvelactivity).post(new w(admarvelactivity, "Portrait"));
                                return;
                            }
                            if (i1 == 1)
                            {
                                AdMarvelActivity.f(admarvelactivity).post(new w(admarvelactivity, "LandscapeLeft"));
                                return;
                            } else
                            {
                                AdMarvelActivity.f(admarvelactivity).post(new w(admarvelactivity, "none"));
                                return;
                            }
                        }
                    }
                }

                public void enableVideoCloseInBackground()
                {
                    AdMarvelActivity admarvelactivity = (AdMarvelActivity)adMarvelActivityReference.get();
                    if (admarvelactivity == null)
                    {
                        return;
                    } else
                    {
                        AdMarvelActivity.c(admarvelactivity, true);
                        return;
                    }
                }

                public void enableautodetect()
                {
                    AdMarvelInternalWebView admarvelinternalwebview = (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get();
                    if (admarvelinternalwebview != null && !admarvelinternalwebview.isSignalShutdown())
                    {
                        admarvelinternalwebview.getEnableAutoDetect().set(true);
                    }
                }

                public void enablebackbutton()
                {
                    AdMarvelActivity admarvelactivity = (AdMarvelActivity)adMarvelActivityReference.get();
                    AdMarvelInternalWebView admarvelinternalwebview;
                    if (admarvelactivity != null)
                    {
                        if ((admarvelinternalwebview = (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get()) != null && !admarvelinternalwebview.isSignalShutdown())
                        {
                            AdMarvelActivity.b(admarvelactivity, false);
                            return;
                        }
                    }
                }

                public void enablerotations()
                {
                    AdMarvelActivity admarvelactivity;
                    if (adMarvelInternalWebViewReference.get() == null || !((AdMarvelInternalWebView)adMarvelInternalWebViewReference.get()).isSignalShutdown())
                    {
                        if ((admarvelactivity = (AdMarvelActivity)adMarvelActivityReference.get()) != null)
                        {
                            admarvelactivity.setRequestedOrientation(lastOrientation);
                            return;
                        }
                    }
                }

                public void fetchWebViewHtmlContent(String s1)
                {
                    if (adMarvelAd != null)
                    {
                        adMarvelAd.setHtmlJson(s1);
                    }
                }

                public void firePixel(String s1)
                {
                    AdMarvelActivity admarvelactivity = (AdMarvelActivity)adMarvelActivityReference.get();
                    AdMarvelInternalWebView admarvelinternalwebview;
                    if (admarvelactivity != null)
                    {
                        if ((admarvelinternalwebview = (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get()) != null && !admarvelinternalwebview.isSignalShutdown())
                        {
                            AdMarvelActivity.f(admarvelactivity).post(new l(admarvelinternalwebview, admarvelactivity, s1));
                            return;
                        }
                    }
                }

                public int getAndroidOSVersionAPI()
                {
                    return com.admarvel.android.ads.ac.a();
                }

                public void getLocation(String s1)
                {
                    AdMarvelActivity admarvelactivity = (AdMarvelActivity)adMarvelActivityReference.get();
                    AdMarvelInternalWebView admarvelinternalwebview;
                    if (admarvelactivity != null)
                    {
                        if ((admarvelinternalwebview = (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get()) != null && !admarvelinternalwebview.isSignalShutdown())
                        {
                            AdMarvelActivity.f(admarvelactivity).post(new m(admarvelinternalwebview, s1));
                            return;
                        }
                    }
                }

                public void initAdMarvel(String s1)
                {
                    AdMarvelActivity admarvelactivity = (AdMarvelActivity)adMarvelActivityReference.get();
                    AdMarvelInternalWebView admarvelinternalwebview;
                    if (admarvelactivity != null)
                    {
                        if ((admarvelinternalwebview = (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get()) != null && !admarvelinternalwebview.isSignalShutdown())
                        {
                            AdMarvelActivity.f(admarvelactivity).post(new p(s1, admarvelinternalwebview, admarvelactivity));
                            return;
                        }
                    }
                }

                public int isinstalled(String s1)
                {
                    AdMarvelActivity admarvelactivity = (AdMarvelActivity)adMarvelActivityReference.get();
                    if (admarvelactivity == null)
                    {
                        return 0;
                    }
                    AdMarvelInternalWebView admarvelinternalwebview = (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get();
                    if (admarvelinternalwebview != null && admarvelinternalwebview.isSignalShutdown())
                    {
                        return 0;
                    }
                    return !com.admarvel.android.ads.ab.a(admarvelactivity, s1) ? 0 : 1;
                }

                public void loadVideo()
                {
                    Logging.log("window.ADMARVEL.loadVideo()");
                    AdMarvelActivity admarvelactivity = (AdMarvelActivity)adMarvelActivityReference.get();
                    AdMarvelInternalWebView admarvelinternalwebview;
                    if (admarvelactivity != null)
                    {
                        if ((admarvelinternalwebview = (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get()) != null)
                        {
                            admarvelactivity.d = true;
                            if (videoUrl != null && videoUrl.length() > 0)
                            {
                                q q1 = new q(videoUrl, admarvelactivity, admarvelinternalwebview);
                                AdMarvelActivity.f(admarvelactivity).post(q1);
                                return;
                            }
                        }
                    }
                }

                public void notifyInAppBrowserCloseAction(String s1)
                {
                    AdMarvelInternalWebView admarvelinternalwebview = (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get();
                    if (admarvelinternalwebview != null && !admarvelinternalwebview.isSignalShutdown())
                    {
                        admarvelinternalwebview.mInAppBrowserCloseCallback = s1;
                    }
                }

                public void notifyInterstitialBackgroundState(String s1)
                {
                    AdMarvelActivity admarvelactivity;
                    if (s1 != null && s1.length() > 0)
                    {
                        if ((admarvelactivity = (AdMarvelActivity)adMarvelActivityReference.get()) != null)
                        {
                            admarvelactivity.f = s1;
                            return;
                        }
                    }
                }

                public void pauseVideo()
                {
                    Logging.log("window.ADMARVEL.pauseVideo()");
                    AdMarvelActivity admarvelactivity = (AdMarvelActivity)adMarvelActivityReference.get();
                    AdMarvelInternalWebView admarvelinternalwebview;
                    if (admarvelactivity != null)
                    {
                        if ((admarvelinternalwebview = (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get()) != null)
                        {
                            r r1 = admarvelactivity. new r(admarvelinternalwebview);
                            AdMarvelActivity.f(admarvelactivity).post(r1);
                            return;
                        }
                    }
                }

                public void playVideo()
                {
                    Logging.log("window.ADMARVEL.playVideo()");
                    AdMarvelActivity admarvelactivity = (AdMarvelActivity)adMarvelActivityReference.get();
                    AdMarvelInternalWebView admarvelinternalwebview;
                    if (admarvelactivity != null)
                    {
                        if ((admarvelinternalwebview = (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get()) != null && videoUrl != null && videoUrl.length() > 0)
                        {
                            s s1 = admarvelactivity. new s(admarvelinternalwebview);
                            AdMarvelActivity.f(admarvelactivity).post(s1);
                            return;
                        }
                    }
                }

                public void redirect(String s1)
                {
                    AdMarvelActivity admarvelactivity = (AdMarvelActivity)adMarvelActivityReference.get();
                    AdMarvelInternalWebView admarvelinternalwebview;
                    if (admarvelactivity != null)
                    {
                        if ((admarvelinternalwebview = (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get()) != null && !admarvelinternalwebview.isSignalShutdown() && s1 != null && s1.length() > 0)
                        {
                            u u1 = new u(s1, admarvelactivity, adMarvelAd);
                            AdMarvelActivity.f(admarvelactivity).post(u1);
                            return;
                        }
                    }
                }

                public void registerEventsForAdMarvelVideo(String s1, String s2)
                {
                    AdMarvelActivity admarvelactivity;
                    if (s1 != null && s1.length() != 0 && s2 != null && s2.length() != 0)
                    {
                        if ((admarvelactivity = (AdMarvelActivity)adMarvelActivityReference.get()) != null)
                        {
                            if (s1.equals("loadeddata"))
                            {
                                AdMarvelActivity.b(admarvelactivity, s2);
                                return;
                            }
                            if (s1.equals("play"))
                            {
                                AdMarvelActivity.c(admarvelactivity, s2);
                                return;
                            }
                            if (s1.equals("canplay"))
                            {
                                AdMarvelActivity.d(admarvelactivity, s2);
                                return;
                            }
                            if (s1.equals("timeupdate"))
                            {
                                AdMarvelActivity.e(admarvelactivity, s2);
                                return;
                            }
                            if (s1.equals("ended"))
                            {
                                AdMarvelActivity.f(admarvelactivity, s2);
                                return;
                            }
                            if (s1.equals("pause"))
                            {
                                AdMarvelActivity.g(admarvelactivity, s2);
                                return;
                            }
                            if (s1.equals("error"))
                            {
                                AdMarvelActivity.h(admarvelactivity, s2);
                                return;
                            }
                        }
                    }
                }

                public void registerInterstitialCloseCallback(String s1)
                {
                    AdMarvelActivity admarvelactivity;
                    if (s1 != null && s1.length() > 0)
                    {
                        if ((admarvelactivity = (AdMarvelActivity)adMarvelActivityReference.get()) != null)
                        {
                            admarvelactivity.e = s1;
                            return;
                        }
                    }
                }

                public void registeraccelerationevent(String s1)
                {
                    AdMarvelActivity admarvelactivity = (AdMarvelActivity)adMarvelActivityReference.get();
                    AdMarvelInternalWebView admarvelinternalwebview;
                    n n1;
                    if (admarvelactivity != null)
                    {
                        if ((admarvelinternalwebview = (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get()) != null && !admarvelinternalwebview.isSignalShutdown() && (n1 = com.admarvel.android.ads.n.a()).a(admarvelactivity.getBaseContext()))
                        {
                            n1.b(s1);
                            n1.a(admarvelactivity.getBaseContext(), admarvelinternalwebview);
                            return;
                        }
                    }
                }

                public void registerheadingevent(String s1)
                {
                    AdMarvelActivity admarvelactivity = (AdMarvelActivity)adMarvelActivityReference.get();
                    AdMarvelInternalWebView admarvelinternalwebview;
                    n n1;
                    if (admarvelactivity != null)
                    {
                        if ((admarvelinternalwebview = (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get()) != null && !admarvelinternalwebview.isSignalShutdown() && ((n1 = com.admarvel.android.ads.n.a()) != null && n1.a(admarvelactivity.getBaseContext())))
                        {
                            n1.c(s1);
                            n1.a(admarvelactivity.getBaseContext(), admarvelinternalwebview);
                            return;
                        }
                    }
                }

                public void registernetworkchangeevent(String s1)
                {
                    AdMarvelInternalWebView admarvelinternalwebview = (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get();
                    if (admarvelinternalwebview != null && !admarvelinternalwebview.isSignalShutdown())
                    {
                        com.admarvel.android.ads.e.a(admarvelinternalwebview, s1);
                    }
                }

                public void registershakeevent(String s1, String s2, String s3)
                {
                    AdMarvelActivity admarvelactivity = (AdMarvelActivity)adMarvelActivityReference.get();
                    AdMarvelInternalWebView admarvelinternalwebview;
                    n n1;
                    if (admarvelactivity != null)
                    {
                        if ((admarvelinternalwebview = (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get()) != null && !admarvelinternalwebview.isSignalShutdown() && (n1 = com.admarvel.android.ads.n.a()).a(admarvelactivity.getBaseContext()))
                        {
                            n1.a(s1);
                            n1.a(s2, s3);
                            n1.a(admarvelactivity.getBaseContext(), admarvelinternalwebview);
                            return;
                        }
                    }
                }

                public void reportAdMarvelAdHistory()
                {
                    AdMarvelActivity admarvelactivity = (AdMarvelActivity)adMarvelActivityReference.get();
                    if (admarvelactivity == null)
                    {
                        return;
                    } else
                    {
                        AdMarvelUtils.reportAdMarvelAdHistory(admarvelactivity);
                        return;
                    }
                }

                public void reportAdMarvelAdHistory(int i1)
                {
                    AdMarvelActivity admarvelactivity = (AdMarvelActivity)adMarvelActivityReference.get();
                    if (admarvelactivity == null)
                    {
                        return;
                    } else
                    {
                        AdMarvelUtils.reportAdMarvelAdHistory(i1, admarvelactivity);
                        return;
                    }
                }

                public void sdkclosebutton(String s1, String s2)
                {
                    AdMarvelInternalWebView admarvelinternalwebview;
                    admarvelinternalwebview = (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get();
                    break MISSING_BLOCK_LABEL_11;
label0:
                    while (s1 == null || !s1.equals("true")) 
                    {
label1:
                        do
                        {
                            do
                            {
                                do
                                {
                                    return;
                                } while (admarvelinternalwebview == null || admarvelinternalwebview != null && admarvelinternalwebview.isSignalShutdown());
                                if (s1 == null || !s1.equals("false"))
                                {
                                    continue label0;
                                }
                                if (s2 == null || !s2.equals("true"))
                                {
                                    continue label1;
                                }
                            } while (admarvelinternalwebview == null);
                            admarvelinternalwebview.a(true);
                            return;
                        } while (admarvelinternalwebview == null);
                        admarvelinternalwebview.a(false);
                        return;
                    }
                    admarvelinternalwebview.j();
                    return;
                }

                public void seekVideoTo(float f1)
                {
                    Logging.log("window.ADMARVEL.seekToVideo()");
                    AdMarvelActivity admarvelactivity = (AdMarvelActivity)adMarvelActivityReference.get();
                    AdMarvelInternalWebView admarvelinternalwebview;
                    if (admarvelactivity != null)
                    {
                        if ((admarvelinternalwebview = (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get()) != null && videoUrl != null && videoUrl.length() > 0)
                        {
                            v v1 = admarvelactivity. new v(admarvelinternalwebview, f1);
                            AdMarvelActivity.f(admarvelactivity).post(v1);
                            return;
                        }
                    }
                }

                public void setVideoUrl(String s1)
                {
                    Logging.log((new StringBuilder()).append("window.ADMARVEL.setVideoUrl(\"").append(s1).append("\")").toString());
                    AdMarvelActivity admarvelactivity = (AdMarvelActivity)adMarvelActivityReference.get();
                    if (admarvelactivity == null)
                    {
                        return;
                    } else
                    {
                        videoUrl = s1;
                        admarvelactivity.d = true;
                        return;
                    }
                }

                public void setbackgroundcolor(String s1)
                {
                    if (adMarvelInternalWebViewReference != null)
                    {
                        AdMarvelInternalWebView admarvelinternalwebview = (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get();
                        if (admarvelinternalwebview != null && !admarvelinternalwebview.isSignalShutdown())
                        {
                            int i1;
                            if ("0".equals(s1))
                            {
                                i1 = 0;
                            } else
                            {
                                long l1 = Long.parseLong(s1.replace("#", ""), 16);
                                if (s1.length() == 7 || s1.length() == 6)
                                {
                                    l1 |= 0xffffffffff000000L;
                                }
                                i1 = (int)l1;
                            }
                            admarvelinternalwebview.setBackgroundColor(i1);
                        }
                    }
                }

                public void stopVideo()
                {
                    Logging.log("window.ADMARVEL.stopVideo()");
                    AdMarvelActivity admarvelactivity = (AdMarvelActivity)adMarvelActivityReference.get();
                    AdMarvelInternalWebView admarvelinternalwebview;
                    if (admarvelactivity != null)
                    {
                        if ((admarvelinternalwebview = (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get()) != null)
                        {
                            x x1 = admarvelactivity. new x(admarvelinternalwebview);
                            AdMarvelActivity.f(admarvelactivity).post(x1);
                            return;
                        }
                    }
                }

                public void storepicture(final String url, final String callback)
                {
                    final AdMarvelActivity adMarvelActivity = (AdMarvelActivity)adMarvelActivityReference.get();
                    final AdMarvelInternalWebView adMarvelInternalWebView;
                    if (adMarvelActivity != null)
                    {
                        if ((adMarvelInternalWebView = (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get()) != null && !adMarvelInternalWebView.isSignalShutdown())
                        {
                            if (!ab.d(adMarvelInternalWebView.getContext(), "android.permission.WRITE_EXTERNAL_STORAGE") || !"mounted".equals(Environment.getExternalStorageState()))
                            {
                                if (callback != null)
                                {
                                    AdMarvelActivity.f(adMarvelActivity).post(new Runnable() {

                                        final InnerInterstitialJS this$0;
                                        final AdMarvelInternalWebView val$adMarvelInternalWebView;
                                        final String val$callback;

                                        public void run()
                                        {
                                            adMarvelInternalWebView.loadUrl((new StringBuilder()).append("javascript:").append(callback).append("(NO)").toString());
                                        }

                        
                        {
                            this$0 = InnerInterstitialJS.this;
                            adMarvelInternalWebView = admarvelinternalwebview;
                            callback = s1;
                            super();
                        }
                                    });
                                    return;
                                }
                            } else
                            {
                                android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(adMarvelActivity);
                                builder.setMessage("Allow storing image in your Gallery?").setCancelable(false).setPositiveButton("Yes", adMarvelActivity. new android.content.DialogInterface.OnClickListener() {

                                    final InnerInterstitialJS this$0;
                                    final AdMarvelActivity val$adMarvelActivity;
                                    final AdMarvelInternalWebView val$adMarvelInternalWebView;
                                    final String val$callback;
                                    final String val$url;

                                    public void onClick(DialogInterface dialoginterface, int i1)
                                    {
                                        if (com.admarvel.android.ads.ac.a() < 8)
                                        {
                                            AdMarvelActivity.f(adMarvelActivity).post(new z(adMarvelInternalWebView, url, callback));
                                            return;
                                        } else
                                        {
                                            AdMarvelActivity.f(adMarvelActivity).post(new y(adMarvelInternalWebView, url, callback));
                                            return;
                                        }
                                    }


// JavaClassFileOutputException: Invalid index accessing method local variables table of <init>

                                    private class z
                                        implements Runnable
                                    {

                                        String a;
                                        String b;
                                        InputStream c;
                                        Bitmap d;
                                        private final WeakReference e;

                                        public void run()
                                        {
                                            AdMarvelInternalWebView admarvelinternalwebview = (AdMarvelInternalWebView)e.get();
                                            if (admarvelinternalwebview != null) goto _L2; else goto _L1
_L1:
                                            return;
_L2:
                                            String s1 = (new StringBuilder()).append(Environment.getExternalStorageDirectory().toString()).append("/Pictures/").toString();
                                            if (a == null) goto _L4; else goto _L3
_L3:
                                            if (!a.startsWith("/mnt/sdcard")) goto _L6; else goto _L5
_L5:
                                            if (!(new File(a)).exists()) goto _L8; else goto _L7
_L7:
                                            d = BitmapFactory.decodeFile(a);
_L4:
                                            if (d == null && c != null)
                                            {
                                                Thread thread = new Thread(new Runnable() {

                                                    final z a;

                                                    public void run()
                                                    {
                                                        a.d = BitmapFactory.decodeStream(a.c);
                                                    }

                                                
                                                {
                                                    a = z.this;
                                                    super();
                                                }
                                                });
                                                thread.start();
                                                thread.join();
                                            }
                                            if (d != null)
                                            {
                                                break MISSING_BLOCK_LABEL_422;
                                            }
                                            admarvelinternalwebview.loadUrl((new StringBuilder()).append("javascript:").append(b).append("(\"NO\")").toString());
                                            if (d != null)
                                            {
                                                d.recycle();
                                                d = null;
                                                return;
                                            }
                                            continue; /* Loop/switch isn't completed */
_L8:
                                            admarvelinternalwebview.loadUrl((new StringBuilder()).append("javascript:").append(b).append("(\"NO\")").toString());
                                              goto _L4
                                            Exception exception1;
                                            exception1;
                                            admarvelinternalwebview.loadUrl((new StringBuilder()).append("javascript:").append(b).append("(\"NO\")").toString());
                                            Logging.log(Log.getStackTraceString(exception1));
                                            if (d != null)
                                            {
                                                d.recycle();
                                                d = null;
                                                return;
                                            }
                                            continue; /* Loop/switch isn't completed */
_L6:
                                            if (!a.startsWith("http:") && !a.startsWith("https:")) goto _L10; else goto _L9
_L9:
                                            a = com.admarvel.android.ads.ab.a(a, admarvelinternalwebview.getContext());
                                            Thread thread1 = new Thread(new Runnable() {

                                                final z a;

                                                public void run()
                                                {
                                                    try
                                                    {
                                                        a.c = (new URL(a.a)).openStream();
                                                        return;
                                                    }
                                                    catch (MalformedURLException malformedurlexception)
                                                    {
                                                        malformedurlexception.printStackTrace();
                                                        return;
                                                    }
                                                    catch (IOException ioexception)
                                                    {
                                                        ioexception.printStackTrace();
                                                        return;
                                                    }
                                                    catch (Exception exception2)
                                                    {
                                                        exception2.printStackTrace();
                                                    }
                                                }

                                                
                                                {
                                                    a = z.this;
                                                    super();
                                                }
                                            });
                                            thread1.start();
                                            thread1.join();
                                              goto _L4
                                            Exception exception;
                                            exception;
                                            if (d != null)
                                            {
                                                d.recycle();
                                                d = null;
                                            }
                                            throw exception;
_L10:
                                            if (!a.startsWith("file:///android_asset/")) goto _L4; else goto _L11
_L11:
                                            int i1 = "file:///android_asset/".length();
                                            String s3 = a.substring(i1);
                                            c = admarvelinternalwebview.getContext().getAssets().open(s3);
                                              goto _L4
                                            String s2;
                                            FileOutputStream fileoutputstream;
                                            File file = new File(s1);
                                            if (!file.exists())
                                            {
                                                file.mkdirs();
                                            }
                                            s2 = (new StringBuilder()).append(s1).append(System.currentTimeMillis()).append(".jpg").toString();
                                            fileoutputstream = new FileOutputStream(s2);
                                            if (fileoutputstream == null)
                                            {
                                                break MISSING_BLOCK_LABEL_521;
                                            }
                                            if (d != null)
                                            {
                                                d.compress(android.graphics.Bitmap.CompressFormat.JPEG, 90, fileoutputstream);
                                                fileoutputstream.flush();
                                                fileoutputstream.close();
                                            }
                                            Intent intent = new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE");
                                            intent.setData(Uri.fromFile(new File(s2)));
                                            admarvelinternalwebview.getContext().sendBroadcast(intent);
                                            admarvelinternalwebview.loadUrl((new StringBuilder()).append("javascript:").append(b).append("(\"YES\")").toString());
                                            if (d != null)
                                            {
                                                d.recycle();
                                                d = null;
                                                return;
                                            }
                                            if (true) goto _L1; else goto _L12
_L12:
                                        }

                                        public z(AdMarvelInternalWebView admarvelinternalwebview, String s1, String s2)
                                        {
                                            c = null;
                                            d = null;
                                            e = new WeakReference(admarvelinternalwebview);
                                            a = s1;
                                            b = s2;
                                        }
                                    }


                                    private class y
                                        implements Runnable
                                    {

                                        String a;
                                        String b;
                                        InputStream c;
                                        Bitmap d;
                                        private final WeakReference e;

                                        public void run()
                                        {
                                            AdMarvelInternalWebView admarvelinternalwebview = (AdMarvelInternalWebView)e.get();
                                            if (admarvelinternalwebview != null) goto _L2; else goto _L1
_L1:
                                            return;
_L2:
                                            String s1 = (new StringBuilder()).append(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES).toString()).append("/").toString();
                                            if (a == null) goto _L4; else goto _L3
_L3:
                                            if (!a.startsWith("/mnt/sdcard")) goto _L6; else goto _L5
_L5:
                                            if (!(new File(a)).exists()) goto _L8; else goto _L7
_L7:
                                            d = BitmapFactory.decodeFile(a);
_L4:
                                            if (d == null && c != null)
                                            {
                                                Thread thread = new Thread(new Runnable() {

                                                    final y a;

                                                    public void run()
                                                    {
                                                        a.d = BitmapFactory.decodeStream(a.c);
                                                    }

                                                
                                                {
                                                    a = y.this;
                                                    super();
                                                }
                                                });
                                                thread.start();
                                                thread.join();
                                            }
                                            if (d != null)
                                            {
                                                break MISSING_BLOCK_LABEL_425;
                                            }
                                            admarvelinternalwebview.loadUrl((new StringBuilder()).append("javascript:").append(b).append("(\"NO\")").toString());
                                            if (d != null)
                                            {
                                                d.recycle();
                                                d = null;
                                                return;
                                            }
                                            continue; /* Loop/switch isn't completed */
_L8:
                                            admarvelinternalwebview.loadUrl((new StringBuilder()).append("javascript:").append(b).append("(\"NO\")").toString());
                                              goto _L4
                                            Exception exception1;
                                            exception1;
                                            admarvelinternalwebview.loadUrl((new StringBuilder()).append("javascript:").append(b).append("(\"NO\")").toString());
                                            Logging.log(Log.getStackTraceString(exception1));
                                            if (d != null)
                                            {
                                                d.recycle();
                                                d = null;
                                                return;
                                            }
                                            continue; /* Loop/switch isn't completed */
_L6:
                                            if (!a.startsWith("http:") && !a.startsWith("https:")) goto _L10; else goto _L9
_L9:
                                            a = com.admarvel.android.ads.ab.a(a, admarvelinternalwebview.getContext());
                                            Thread thread1 = new Thread(new Runnable() {

                                                final y a;

                                                public void run()
                                                {
                                                    try
                                                    {
                                                        a.c = (new URL(a.a)).openStream();
                                                        return;
                                                    }
                                                    catch (MalformedURLException malformedurlexception)
                                                    {
                                                        malformedurlexception.printStackTrace();
                                                        return;
                                                    }
                                                    catch (IOException ioexception)
                                                    {
                                                        ioexception.printStackTrace();
                                                        return;
                                                    }
                                                    catch (Exception exception2)
                                                    {
                                                        exception2.printStackTrace();
                                                    }
                                                }

                                                
                                                {
                                                    a = y.this;
                                                    super();
                                                }
                                            });
                                            thread1.start();
                                            thread1.join();
                                              goto _L4
                                            Exception exception;
                                            exception;
                                            if (d != null)
                                            {
                                                d.recycle();
                                                d = null;
                                            }
                                            throw exception;
_L10:
                                            if (!a.startsWith("file:///android_asset/")) goto _L4; else goto _L11
_L11:
                                            int i1 = "file:///android_asset/".length();
                                            String s3 = a.substring(i1);
                                            c = admarvelinternalwebview.getContext().getAssets().open(s3);
                                              goto _L4
                                            String s2;
                                            FileOutputStream fileoutputstream;
                                            File file = new File(s1);
                                            if (!file.exists())
                                            {
                                                file.mkdirs();
                                            }
                                            s2 = (new StringBuilder()).append(s1).append(System.currentTimeMillis()).append(".jpg").toString();
                                            fileoutputstream = new FileOutputStream(s2);
                                            if (fileoutputstream == null)
                                            {
                                                break MISSING_BLOCK_LABEL_524;
                                            }
                                            if (d != null)
                                            {
                                                d.compress(android.graphics.Bitmap.CompressFormat.JPEG, 90, fileoutputstream);
                                                fileoutputstream.flush();
                                                fileoutputstream.close();
                                            }
                                            Intent intent = new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE");
                                            intent.setData(Uri.fromFile(new File(s2)));
                                            admarvelinternalwebview.getContext().sendBroadcast(intent);
                                            admarvelinternalwebview.loadUrl((new StringBuilder()).append("javascript:").append(b).append("(\"YES\")").toString());
                                            if (d != null)
                                            {
                                                d.recycle();
                                                d = null;
                                                return;
                                            }
                                            if (true) goto _L1; else goto _L12
_L12:
                                        }

                                        public y(AdMarvelInternalWebView admarvelinternalwebview, String s1, String s2)
                                        {
                                            c = null;
                                            d = null;
                                            e = new WeakReference(admarvelinternalwebview);
                                            a = s1;
                                            b = s2;
                                        }
                                    }

                                }).setNegativeButton("No", new android.content.DialogInterface.OnClickListener() {

                                    final InnerInterstitialJS this$0;
                                    final AdMarvelActivity val$adMarvelActivity;
                                    final AdMarvelInternalWebView val$adMarvelInternalWebView;
                                    final String val$callback;

                                    public void onClick(DialogInterface dialoginterface, int i1)
                                    {
                                        if (callback != null)
                                        {
                                            AdMarvelActivity.f(adMarvelActivity).post(new Runnable() {

                                                final _cls10 this$1;

                                                public void run()
                                                {
                                                    adMarvelInternalWebView.loadUrl((new StringBuilder()).append("javascript:").append(callback).append("(\"NO\")").toString());
                                                }

                        
                        {
                            this$1 = _cls10.this;
                            super();
                        }
                                            });
                                        }
                                        dialoginterface.cancel();
                                    }

                        
                        {
                            this$0 = InnerInterstitialJS.this;
                            callback = s1;
                            adMarvelActivity = admarvelactivity;
                            adMarvelInternalWebView = admarvelinternalwebview;
                            super();
                        }
                                });
                                builder.create().show();
                                return;
                            }
                        }
                    }
                }

                public void triggerVibration(String s1)
                {
                    int i1 = 10000;
                    if (s1 == null || s1.trim().length() <= 0) goto _L2; else goto _L1
_L1:
                    int j1 = Integer.parseInt(s1);
                    if (j1 <= i1) goto _L4; else goto _L3
_L3:
                    Logging.log("Time mentioned is greater than Max duration ");
_L7:
                    char c1 = i1;
_L5:
                    AdMarvelActivity admarvelactivity = (AdMarvelActivity)adMarvelActivityReference.get();
                    NumberFormatException numberformatexception;
                    if (admarvelactivity == null)
                    {
                        return;
                    } else
                    {
                        com.admarvel.android.ads.ab.a(admarvelactivity, c1);
                        return;
                    }
                    numberformatexception;
                    Logging.log("NumberFormatException so setting vibrate time to 500 Milli Sec");
_L2:
                    c1 = '\u01F4';
                      goto _L5
_L4:
                    i1 = j1;
                    if (true) goto _L7; else goto _L6
_L6:
                }

                public InnerInterstitialJS(AdMarvelInternalWebView admarvelinternalwebview, AdMarvelActivity admarvelactivity, AdMarvelAd admarvelad)
                {
                    adMarvelInternalWebViewReference = new WeakReference(admarvelinternalwebview);
                    adMarvelActivityReference = new WeakReference(admarvelactivity);
                    adMarvelAd = admarvelad;
                    lastOrientation = admarvelactivity.getRequestedOrientation();
                }

                private class c
                    implements Runnable
                {

                    private final WeakReference a;
                    private final String b;

                    public void run()
                    {
                        AdMarvelInternalWebView admarvelinternalwebview;
                        try
                        {
                            admarvelinternalwebview = (AdMarvelInternalWebView)a.get();
                        }
                        catch (Exception exception)
                        {
                            Logging.log(Log.getStackTraceString(exception));
                            return;
                        }
                        if (admarvelinternalwebview == null)
                        {
                            return;
                        }
                        if (ab.f(admarvelinternalwebview.getContext()))
                        {
                            admarvelinternalwebview.loadUrl((new StringBuilder()).append("javascript:").append(b).append("(\"YES\")").toString());
                            return;
                        }
                        admarvelinternalwebview.loadUrl((new StringBuilder()).append("javascript:").append(b).append("(\"NO\")").toString());
                        return;
                    }

                    public c(AdMarvelInternalWebView admarvelinternalwebview, String s1)
                    {
                        a = new WeakReference(admarvelinternalwebview);
                        b = s1;
                    }
                }


                private class d
                    implements Runnable
                {

                    private final WeakReference a;

                    public void run()
                    {
                        AdMarvelActivity admarvelactivity = (AdMarvelActivity)a.get();
                        if (admarvelactivity == null)
                        {
                            return;
                        }
                        RelativeLayout relativelayout;
                        p p1;
                        admarvelactivity.c = false;
                        relativelayout = (RelativeLayout)admarvelactivity.findViewById(AdMarvelActivity.b);
                        p1 = (p)relativelayout.findViewWithTag((new StringBuilder()).append(AdMarvelActivity.c(admarvelactivity)).append("BR_VIDEO").toString());
                        if (p1 == null)
                        {
                            break MISSING_BLOCK_LABEL_79;
                        }
                        p1.a();
                        relativelayout.removeView(p1);
                        if (AdMarvelActivity.z(admarvelactivity) != null)
                        {
                            AdMarvelActivity.f(admarvelactivity).removeCallbacks(AdMarvelActivity.z(admarvelactivity));
                            com.admarvel.android.ads.AdMarvelActivity.a(admarvelactivity, null);
                            return;
                        }
                        break MISSING_BLOCK_LABEL_112;
                        Exception exception;
                        exception;
                        Logging.log(Log.getStackTraceString(exception));
                    }

                    public d()
                    {
                        a = new WeakReference(AdMarvelActivity.this);
                    }
                }


                private class n
                    implements Runnable
                {

                    private static int a = 0x80000000;
                    private final WeakReference b;

                    private int a()
                    {
                        return a;
                    }

                    static int a(n n1)
                    {
                        return n1.a();
                    }

                    public void run()
                    {
                        try
                        {
                            if (b.get() != null)
                            {
                                a = ((WindowManager)((Activity)b.get()).getSystemService("window")).getDefaultDisplay().getRotation();
                            }
                            return;
                        }
                        catch (Exception exception)
                        {
                            Logging.log(Log.getStackTraceString(exception));
                        }
                    }


                    public n(Activity activity)
                    {
                        b = new WeakReference(activity);
                    }
                }


                private class w
                    implements Runnable
                {

                    private final WeakReference a;
                    private String b;
                    private Activity c;

                    public void run()
                    {
                        Display display;
                        try
                        {
                            c = (Activity)a.get();
                            if (c == null)
                            {
                                break MISSING_BLOCK_LABEL_286;
                            }
                            if (b == null)
                            {
                                return;
                            }
                        }
                        catch (Exception exception)
                        {
                            Logging.log(Log.getStackTraceString(exception));
                            return;
                        }
                        display = ((WindowManager)c.getSystemService("window")).getDefaultDisplay();
                        if (b.equalsIgnoreCase("Portrait"))
                        {
                            c.setRequestedOrientation(1);
                            if (display.getRotation() != 0)
                            {
                                c.setRequestedOrientation(9);
                                return;
                            }
                            break MISSING_BLOCK_LABEL_286;
                        }
                        if (b.equalsIgnoreCase("LandscapeLeft"))
                        {
                            c.setRequestedOrientation(0);
                            if (display.getRotation() != 1)
                            {
                                c.setRequestedOrientation(8);
                                return;
                            }
                            break MISSING_BLOCK_LABEL_286;
                        }
                        if (b.equalsIgnoreCase("PortraitUpSideDown"))
                        {
                            c.setRequestedOrientation(9);
                            if (display.getRotation() != 2)
                            {
                                c.setRequestedOrientation(1);
                                return;
                            }
                            break MISSING_BLOCK_LABEL_286;
                        }
                        if (b.equalsIgnoreCase("LandscapeRight"))
                        {
                            c.setRequestedOrientation(8);
                            if (display.getRotation() != 3)
                            {
                                c.setRequestedOrientation(0);
                                return;
                            }
                            break MISSING_BLOCK_LABEL_286;
                        }
                        if (!b.equalsIgnoreCase("none"))
                        {
                            break MISSING_BLOCK_LABEL_286;
                        }
                        if (display.getRotation() == 2)
                        {
                            c.setRequestedOrientation(9);
                            if (display.getRotation() != 2)
                            {
                                c.setRequestedOrientation(1);
                                return;
                            }
                            break MISSING_BLOCK_LABEL_286;
                        }
                        if (display.getRotation() == 3)
                        {
                            c.setRequestedOrientation(8);
                            if (display.getRotation() != 3)
                            {
                                c.setRequestedOrientation(0);
                            }
                        }
                    }

                    public w(Activity activity, String s1)
                    {
                        b = null;
                        c = null;
                        a = new WeakReference(activity);
                        b = s1;
                    }
                }


                private class l
                    implements Runnable
                {

                    private final WeakReference a;
                    private final WeakReference b;
                    private final String c;

                    public void run()
                    {
                        AdMarvelActivity admarvelactivity;
                        try
                        {
                            if ((AdMarvelInternalWebView)a.get() == null)
                            {
                                return;
                            }
                        }
                        catch (Exception exception)
                        {
                            Logging.log(Log.getStackTraceString(exception));
                            return;
                        }
                        admarvelactivity = (AdMarvelActivity)b.get();
                        if (admarvelactivity == null)
                        {
                            break MISSING_BLOCK_LABEL_100;
                        }
                        if (c == null || c.length() <= 0)
                        {
                            break MISSING_BLOCK_LABEL_100;
                        }
                        if (AdMarvelInterstitialAds.enableOfflineSDK)
                        {
                            (new com.admarvel.android.b.a()).a(c, admarvelactivity, AdMarvelActivity.f(admarvelactivity));
                            return;
                        }
                        (new ab(admarvelactivity, AdMarvelActivity.f(admarvelactivity))).a(c);
                    }

                    public l(AdMarvelInternalWebView admarvelinternalwebview, AdMarvelActivity admarvelactivity, String s1)
                    {
                        a = new WeakReference(admarvelinternalwebview);
                        b = new WeakReference(admarvelactivity);
                        c = s1;
                    }
                }


                private class m
                    implements Runnable
                {

                    private final WeakReference a;
                    private final String b;
                    private String c;

                    public void run()
                    {
                        AdMarvelInternalWebView admarvelinternalwebview;
                        try
                        {
                            admarvelinternalwebview = (AdMarvelInternalWebView)a.get();
                        }
                        catch (Exception exception)
                        {
                            Logging.log(Log.getStackTraceString(exception));
                            return;
                        }
                        if (admarvelinternalwebview == null)
                        {
                            return;
                        }
                        if (!ab.d(admarvelinternalwebview.getContext(), "android.permission.ACCESS_COARSE_LOCATION") && !ab.d(admarvelinternalwebview.getContext(), "android.permission.ACCESS_FINE_LOCATION"))
                        {
                            admarvelinternalwebview.loadUrl((new StringBuilder()).append("javascript:").append(b).append("(").append(c).append(")").toString());
                            return;
                        }
                        Location location;
                        if (!ab.c(admarvelinternalwebview.getContext(), "location"))
                        {
                            break MISSING_BLOCK_LABEL_205;
                        }
                        location = com.admarvel.android.ads.l.a().a(admarvelinternalwebview);
                        if (location == null)
                        {
                            break MISSING_BLOCK_LABEL_162;
                        }
                        c = (new StringBuilder()).append(location.getLatitude()).append(",").append(location.getLongitude()).append(",").append(location.getAccuracy()).toString();
                        admarvelinternalwebview.loadUrl((new StringBuilder()).append("javascript:").append(b).append("(").append(c).append(")").toString());
                    }

                    public m(AdMarvelInternalWebView admarvelinternalwebview, String s1)
                    {
                        c = "null";
                        a = new WeakReference(admarvelinternalwebview);
                        b = s1;
                    }
                }


                private class p
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
                        String s1;
                        int i1;
                        s1 = com.admarvel.android.ads.ab.a(admarvelactivity.getBaseContext());
                        i1 = ab.d(admarvelactivity.getBaseContext());
                        byte byte0;
                        String s2;
                        Location location;
                        String s3;
                        String s4;
                        StringBuilder stringbuilder;
                        boolean flag;
                        StringBuilder stringbuilder1;
                        boolean flag1;
                        String s5;
                        ViewGroup viewgroup;
                        String s6;
                        if (i1 == 1)
                        {
                            byte0 = 0;
                        } else
                        if (i1 == 2)
                        {
                            byte0 = 90;
                        } else
                        {
                            byte0 = -1;
                        }
                        if (!s1.equals("wifi") && !s1.equals("mobile"))
                        {
                            s2 = "NO";
                        } else
                        {
                            s2 = "YES";
                        }
                        if (!ab.c(admarvelactivity.getBaseContext(), "location")) goto _L7; else goto _L6
_L6:
                        location = com.admarvel.android.ads.l.a().a(admarvelinternalwebview);
_L8:
                        if (location == null)
                        {
                            break MISSING_BLOCK_LABEL_822;
                        }
                        s3 = (new StringBuilder()).append("{lat:").append(location.getLatitude()).append(", lon:").append(location.getLongitude()).append(", acc:").append(location.getAccuracy()).append("}").toString();
_L12:
                        if (AdMarvelActivity.h(admarvelactivity))
                        {
                            s4 = "Expanded";
                        } else
                        {
                            s4 = "Interstitial";
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
                        s5 = stringbuilder1.append(flag1).append(", camera: ").append(ab.c(admarvelactivity.getBaseContext(), "camera")).append(",map:true, audio:true, video:true, 'level-1':true,'level-2': true, 'level-3':false}").toString();
                        viewgroup = (ViewGroup)admarvelactivity.getWindow().findViewById(0x1020002);
                        viewgroup.getWidth();
                        s6 = com.admarvel.android.ads.ab.a(admarvelactivity);
                        try
                        {
                            admarvelinternalwebview.loadUrl((new StringBuilder()).append("javascript:").append(a).append("({x:").append(admarvelinternalwebview.getLeft()).append(",y:").append(admarvelinternalwebview.getTop()).append(",width:").append(admarvelinternalwebview.getWidth()).append(",height:").append(admarvelinternalwebview.getHeight()).append(",appX:").append(viewgroup.getLeft()).append(",appY:").append(viewgroup.getTop()).append(",appWidth:").append(viewgroup.getWidth()).append(",appHeight:").append(viewgroup.getHeight()).append(",orientation:").append(byte0).append(",networkType:").append("'").append(s1).append("'").append(",network:").append("'").append(s2).append("'").append(",screenWidth:").append(ab.g(admarvelactivity.getBaseContext())).append(",screenHeight:").append(ab.h(admarvelactivity.getBaseContext())).append(",adType:").append("'").append(s4).append("'").append(",supportedFeatures:").append(s5).append(",sdkVersion:").append("'").append("2.4.5.1").append("'").append(",location:").append(s3).append(",applicationSupportedOrientations:").append("'").append(s6).append("'").append("})").toString());
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
                        s3 = "null";
                          goto _L12
                    }

                    public p(String s1, AdMarvelInternalWebView admarvelinternalwebview, AdMarvelActivity admarvelactivity)
                    {
                        a = s1;
                        b = new WeakReference(admarvelinternalwebview);
                        c = new WeakReference(admarvelactivity);
                    }
                }


                private class q
                    implements Runnable
                {

                    private final WeakReference a;
                    private final WeakReference b;
                    private String c;

                    public void run()
                    {
                        AdMarvelActivity admarvelactivity;
                        AdMarvelInternalWebView admarvelinternalwebview;
                        RelativeLayout relativelayout;
                        p p1;
                        p p2;
                        int i1;
                        int j1;
                        int k1;
                        try
                        {
                            admarvelactivity = (AdMarvelActivity)a.get();
                            admarvelinternalwebview = (AdMarvelInternalWebView)b.get();
                        }
                        catch (Exception exception)
                        {
                            Logging.log(Log.getStackTraceString(exception));
                            return;
                        }
                        if (admarvelactivity == null || admarvelinternalwebview == null) goto _L2; else goto _L1
_L1:
                        if (c == null) goto _L2; else goto _L3
_L3:
                        if (c.length() <= 0)
                        {
                            return;
                        }
                        admarvelactivity.c = true;
                        relativelayout = (RelativeLayout)admarvelactivity.findViewById(AdMarvelActivity.b);
                        p1 = (p)relativelayout.findViewWithTag((new StringBuilder()).append(AdMarvelActivity.c(admarvelactivity)).append("BR_VIDEO").toString());
                        if (p1 != null) goto _L5; else goto _L4
_L4:
                        p2 = new p(admarvelactivity);
                        p2.setTag((new StringBuilder()).append(AdMarvelActivity.c(admarvelactivity)).append("BR_VIDEO").toString());
                        if (!admarvelactivity.d) goto _L7; else goto _L6
_L6:
                        android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(-1, -1);
                        layoutparams.addRule(13);
                        p2.setLayoutParams(layoutparams);
                        i1 = relativelayout.getChildCount();
                        j1 = 0;
_L13:
                        if (j1 >= i1) goto _L9; else goto _L8
_L8:
                        if (relativelayout.getChildAt(j1) != admarvelinternalwebview) goto _L10; else goto _L9
_L9:
                        relativelayout.addView(p2, j1);
                        relativelayout.removeView(admarvelinternalwebview);
                        admarvelinternalwebview.setBackgroundColor(0);
                        admarvelinternalwebview.setBackgroundDrawable(null);
                        k1 = com.admarvel.android.ads.ac.a();
                        if (k1 >= 11)
                        {
                            try
                            {
                                Class aclass[] = new Class[2];
                                aclass[0] = Integer.TYPE;
                                aclass[1] = android/graphics/Paint;
                                Method method = android/view/View.getMethod("setLayerType", aclass);
                                Object aobj[] = new Object[2];
                                aobj[0] = Integer.valueOf(1);
                                aobj[1] = null;
                                method.invoke(admarvelinternalwebview, aobj);
                            }
                            catch (Exception exception1) { }
                        }
                        relativelayout.addView(admarvelinternalwebview);
_L11:
                        p2.a(Uri.parse(c));
                        p2.setVisibility(0);
                        p2.a(admarvelactivity. new android.media.MediaPlayer.OnPreparedListener(admarvelinternalwebview) {

                            final AdMarvelActivity a;
                            final AdMarvelInternalWebView b;
                            final q c;

                            public void onPrepared(MediaPlayer mediaplayer)
                            {
                                if (a.d)
                                {
                                    if (AdMarvelActivity.v(a) != null && AdMarvelActivity.v(a).length() > 0)
                                    {
                                        b.loadUrl((new StringBuilder()).append("javascript:").append(AdMarvelActivity.v(a)).append("()").toString());
                                    }
                                    if (AdMarvelActivity.w(a) != null && AdMarvelActivity.w(a).length() > 0)
                                    {
                                        b.loadUrl((new StringBuilder()).append("javascript:").append(AdMarvelActivity.w(a)).append("()").toString());
                                    }
                                    return;
                                } else
                                {
                                    b.loadUrl((new StringBuilder()).append("javascript:AdApp.videoView().setDuration(").append(mediaplayer.getDuration() / 1000).append(")").toString());
                                    b.loadUrl("javascript:AdApp.videoView().setCanPlay(true)");
                                    b.loadUrl("javascript:AdApp.adView().play()");
                                    return;
                                }
                            }

                            
                            {
                                c = q.this;
                                a = AdMarvelActivity.this;
                                b = admarvelinternalwebview;
                                super();
                            }
                        });
                        p2.a(admarvelactivity. new android.media.MediaPlayer.OnCompletionListener(admarvelinternalwebview) {

                            final AdMarvelActivity a;
                            final AdMarvelInternalWebView b;
                            final q c;

                            public void onCompletion(MediaPlayer mediaplayer)
                            {
                                d d1;
                                if (a.d)
                                {
                                    if (AdMarvelActivity.x(a) != null && AdMarvelActivity.x(a).length() > 0)
                                    {
                                        b.loadUrl((new StringBuilder()).append("javascript:").append(AdMarvelActivity.x(a)).append("()").toString());
                                    }
                                } else
                                {
                                    b.loadUrl("javascript:AdApp.videoView().end();");
                                }
                                d1 = a. new d();
                                AdMarvelActivity.f(a).post(d1);
                            }

                            
                            {
                                c = q.this;
                                a = AdMarvelActivity.this;
                                b = admarvelinternalwebview;
                                super();
                            }
                        });
                        p2.a(admarvelactivity. new android.media.MediaPlayer.OnErrorListener(admarvelinternalwebview) {

                            final AdMarvelActivity a;
                            final AdMarvelInternalWebView b;
                            final q c;

                            public boolean onError(MediaPlayer mediaplayer, int l1, int i2)
                            {
                                d d1 = a. new d();
                                AdMarvelActivity.f(a).post(d1);
                                if (a.d && AdMarvelActivity.y(a) != null && AdMarvelActivity.y(a).length() > 0)
                                {
                                    b.loadUrl((new StringBuilder()).append("javascript:").append(AdMarvelActivity.y(a)).append("()").toString());
                                }
                                return false;
                            }

                            
                            {
                                c = q.this;
                                a = AdMarvelActivity.this;
                                b = admarvelinternalwebview;
                                super();
                            }
                        });
                        return;
_L5:
                        if (c != null)
                        {
                            p1.a(Uri.parse(c));
                            return;
                        }
                          goto _L2
_L7:
                        p2.setLayoutParams(new android.widget.RelativeLayout.LayoutParams(1, 1));
                        relativelayout.addView(p2);
                          goto _L11
_L2:
                        return;
_L10:
                        j1++;
                        if (true) goto _L13; else goto _L12
_L12:
                    }

                    public q(String s1, AdMarvelActivity admarvelactivity, AdMarvelInternalWebView admarvelinternalwebview)
                    {
                        c = s1;
                        a = new WeakReference(admarvelactivity);
                        b = new WeakReference(admarvelinternalwebview);
                    }
                }


                private class r
                    implements Runnable
                {

                    private final WeakReference a;
                    private final WeakReference b;

                    public void run()
                    {
                        AdMarvelActivity admarvelactivity;
                        AdMarvelInternalWebView admarvelinternalwebview;
                        admarvelactivity = (AdMarvelActivity)a.get();
                        admarvelinternalwebview = (AdMarvelInternalWebView)b.get();
                        if (admarvelactivity == null)
                        {
                            break MISSING_BLOCK_LABEL_153;
                        }
                        if (admarvelinternalwebview == null)
                        {
                            return;
                        }
                        p p1 = (p)((RelativeLayout)admarvelactivity.findViewById(AdMarvelActivity.b)).findViewWithTag((new StringBuilder()).append(AdMarvelActivity.c(admarvelactivity)).append("BR_VIDEO").toString());
                        if (p1 != null)
                        {
                            try
                            {
                                if (p1.isPlaying())
                                {
                                    p1.pause();
                                    if (admarvelactivity.d && AdMarvelActivity.B(admarvelactivity) != null && AdMarvelActivity.B(admarvelactivity).length() > 0)
                                    {
                                        admarvelinternalwebview.loadUrl((new StringBuilder()).append("javascript:").append(AdMarvelActivity.B(admarvelactivity)).append("()").toString());
                                        return;
                                    }
                                }
                            }
                            catch (Exception exception)
                            {
                                Logging.log(Log.getStackTraceString(exception));
                            }
                        }
                    }

                    public r(AdMarvelInternalWebView admarvelinternalwebview)
                    {
                        a = new WeakReference(AdMarvelActivity.this);
                        b = new WeakReference(admarvelinternalwebview);
                    }
                }


                private class s
                    implements Runnable
                {

                    private final WeakReference a;
                    private final WeakReference b;

                    public void run()
                    {
                        p p1;
                        AdMarvelActivity admarvelactivity;
                        AdMarvelInternalWebView admarvelinternalwebview;
                        try
                        {
                            admarvelactivity = (AdMarvelActivity)a.get();
                            admarvelinternalwebview = (AdMarvelInternalWebView)b.get();
                        }
                        catch (Exception exception)
                        {
                            Logging.log(Log.getStackTraceString(exception));
                            return;
                        }
                        if (admarvelactivity == null)
                        {
                            break MISSING_BLOCK_LABEL_216;
                        }
                        if (admarvelinternalwebview == null)
                        {
                            return;
                        }
                        p1 = (p)((RelativeLayout)admarvelactivity.findViewById(AdMarvelActivity.b)).findViewWithTag((new StringBuilder()).append(AdMarvelActivity.c(admarvelactivity)).append("BR_VIDEO").toString());
                        if (p1 == null)
                        {
                            break MISSING_BLOCK_LABEL_216;
                        }
                        if (p1.getHeight() != 0)
                        {
                            break MISSING_BLOCK_LABEL_208;
                        }
                        AdMarvelActivity.f(admarvelactivity).postDelayed(new Runnable(p1, admarvelinternalwebview, admarvelactivity) {

                            final p a;
                            final AdMarvelInternalWebView b;
                            final AdMarvelActivity c;
                            final s d;

                            public void run()
                            {
                                if (a.getHeight() == 0)
                                {
                                    b.loadUrl((new StringBuilder()).append("javascript:").append(AdMarvelActivity.y(c)).append("()").toString());
                                    return;
                                } else
                                {
                                    a.start();
                                    return;
                                }
                            }

                            
                            {
                                d = s.this;
                                a = p1;
                                b = admarvelinternalwebview;
                                c = admarvelactivity;
                                super();
                            }
                        }, 500L);
_L1:
                        if (AdMarvelActivity.z(admarvelactivity) == null)
                        {
                            com.admarvel.android.ads.AdMarvelActivity.a(admarvelactivity, admarvelactivity. new aa(admarvelinternalwebview));
                            AdMarvelActivity.f(admarvelactivity).postDelayed(AdMarvelActivity.z(admarvelactivity), 1000L);
                        }
                        if (admarvelactivity.d && AdMarvelActivity.A(admarvelactivity) != null && AdMarvelActivity.A(admarvelactivity).length() > 0)
                        {
                            admarvelinternalwebview.loadUrl((new StringBuilder()).append("javascript:").append(AdMarvelActivity.A(admarvelactivity)).append("()").toString());
                            return;
                        }
                        break MISSING_BLOCK_LABEL_216;
                        p1.start();
                          goto _L1
                    }

                    public s(AdMarvelInternalWebView admarvelinternalwebview)
                    {
                        a = new WeakReference(AdMarvelActivity.this);
                        b = new WeakReference(admarvelinternalwebview);
                    }

                    private class aa
                        implements Runnable
                    {

                        private final WeakReference a;
                        private final WeakReference b;

                        public void run()
                        {
                            AdMarvelActivity admarvelactivity;
                            AdMarvelInternalWebView admarvelinternalwebview;
                            admarvelactivity = (AdMarvelActivity)a.get();
                            admarvelinternalwebview = (AdMarvelInternalWebView)b.get();
                            if (admarvelactivity == null) goto _L2; else goto _L1
_L1:
                            if (admarvelinternalwebview == null)
                            {
                                return;
                            }
                            p p1 = (p)((RelativeLayout)admarvelactivity.findViewById(AdMarvelActivity.b)).findViewWithTag((new StringBuilder()).append(AdMarvelActivity.c(admarvelactivity)).append("BR_VIDEO").toString());
                            if (admarvelinternalwebview == null || p1 == null) goto _L4; else goto _L3
_L3:
                            if (!admarvelactivity.d) goto _L6; else goto _L5
_L5:
                            if (AdMarvelActivity.C(admarvelactivity) != null && AdMarvelActivity.C(admarvelactivity).length() > 0)
                            {
                                admarvelinternalwebview.loadUrl((new StringBuilder()).append("javascript:").append(AdMarvelActivity.C(admarvelactivity)).append("(").append((float)p1.getCurrentPosition() / 1000F).append(")").toString());
                            }
_L4:
                            try
                            {
                                AdMarvelActivity.f(admarvelactivity).postDelayed(AdMarvelActivity.z(admarvelactivity), 1000L);
                                return;
                            }
                            catch (Exception exception)
                            {
                                Logging.log(Log.getStackTraceString(exception));
                            }
                            return;
_L6:
                            admarvelinternalwebview.loadUrl((new StringBuilder()).append("javascript:AdApp.videoView().setCurrentTime(").append(p1.getCurrentPosition() / 1000).append(")").toString());
                            continue; /* Loop/switch isn't completed */
                            Exception exception1;
                            exception1;
                            exception1.printStackTrace();
                            if (true) goto _L4; else goto _L2
_L2:
                        }

                        public aa(AdMarvelInternalWebView admarvelinternalwebview)
                        {
                            a = new WeakReference(AdMarvelActivity.this);
                            b = new WeakReference(admarvelinternalwebview);
                        }
                    }

                }


                private class u
                    implements Runnable
                {

                    private String a;
                    private final WeakReference b;
                    private final AdMarvelAd c;

                    public void run()
                    {
                        AdMarvelActivity admarvelactivity;
                        if (b != null)
                        {
                            admarvelactivity = (AdMarvelActivity)b.get();
                        } else
                        {
                            admarvelactivity = null;
                        }
                        if (admarvelactivity == null)
                        {
                            return;
                        }
                        if (!AdMarvelInterstitialAds.getEnableClickRedirect()) goto _L2; else goto _L1
_L1:
                        if (a == null || !AdMarvelInterstitialAds.enableOfflineSDK || ab.e(a)) goto _L4; else goto _L3
_L3:
                        Exception exception;
                        if (URLUtil.isNetworkUrl(a) && ab.b(admarvelactivity, a))
                        {
                            AdMarvelInterstitialAds.getListener().a(admarvelactivity, a, c.getSiteId(), c.getId(), c.getTargetParams(), c.getIpAddress());
                            return;
                        }
                          goto _L5
_L2:
                        AdMarvelInterstitialAds.getListener().a(admarvelactivity, a, c.getSiteId(), c.getId(), c.getTargetParams(), c.getIpAddress());
                        return;
_L5:
                        String s2 = c.getOfflinekeyUrl();
                        if (ab.b(admarvelactivity, (new StringBuilder()).append(s2.substring(0, s2.lastIndexOf("/"))).append("/").append(a).toString()))
                        {
                            AdMarvelInterstitialAds.getListener().a(admarvelactivity, a, c.getSiteId(), c.getId(), c.getTargetParams(), c.getIpAddress());
                            return;
                        }
                          goto _L6
_L4:
                        if (a != null && !ab.e(a) && ab.b(admarvelactivity, a))
                        {
                            (new ab(admarvelactivity, AdMarvelActivity.f(admarvelactivity))).b(AdMarvelActivity.e(admarvelactivity));
                            AdMarvelInterstitialAds.getListener().a(admarvelactivity, a, c.getSiteId(), c.getId(), c.getTargetParams(), c.getIpAddress());
                            return;
                        }
_L6:
                        if (a != null && com.admarvel.android.ads.ab.a(a, "admarvelsdk") != ab.f.c)
                        {
                            AdMarvelInterstitialAds.getListener().a(admarvelactivity, com.admarvel.android.ads.ab.a(a, "admarvelsdk", "", com.admarvel.android.ads.ab.a(a, "admarvelsdk"), admarvelactivity), c.getSiteId(), c.getId(), c.getTargetParams(), c.getIpAddress());
                            (new ab(admarvelactivity, AdMarvelActivity.f(admarvelactivity))).b(AdMarvelActivity.e(admarvelactivity));
                            return;
                        }
                        if (a != null && com.admarvel.android.ads.ab.a(a, "admarvelinternal") != ab.f.c)
                        {
                            AdMarvelInterstitialAds.getListener().a(admarvelactivity, com.admarvel.android.ads.ab.a(a, "admarvelinternal", "", com.admarvel.android.ads.ab.a(a, "admarvelinternal"), admarvelactivity), c.getSiteId(), c.getId(), c.getTargetParams(), c.getIpAddress());
                            (new ab(admarvelactivity, AdMarvelActivity.f(admarvelactivity))).b(AdMarvelActivity.e(admarvelactivity));
                            return;
                        }
                        try
                        {
label0:
                            {
                                if (!ab.f(admarvelactivity) || a == null || com.admarvel.android.ads.ab.a(a, "admarvelvideo") == ab.f.c)
                                {
                                    break label0;
                                }
                                String s1 = com.admarvel.android.ads.ab.a(a, "admarvelvideo", "http://", com.admarvel.android.ads.ab.a(a, "admarvelvideo"), admarvelactivity);
                                Intent intent2 = new Intent("android.intent.action.VIEW");
                                intent2.addFlags(0x10000000);
                                intent2.setDataAndType(Uri.parse(s1), "video/*");
                                if (com.admarvel.android.ads.ab.a(admarvelactivity.getBaseContext(), intent2))
                                {
                                    admarvelactivity.startActivity(intent2);
                                }
                                (new ab(admarvelactivity, AdMarvelActivity.f(admarvelactivity))).b(AdMarvelActivity.e(admarvelactivity));
                            }
                        }
                        // Misplaced declaration of an exception variable
                        catch (Exception exception)
                        {
                            Logging.log((new StringBuilder()).append(exception.getMessage()).append("Exception in RedirectRunnable ").toString());
                        }
                          goto _L2
                        if (!ab.f(admarvelactivity) || a == null || com.admarvel.android.ads.ab.a(a, "admarvelexternal") == ab.f.c) goto _L8; else goto _L7
_L7:
                        Intent intent1 = new Intent("android.intent.action.VIEW", Uri.parse(com.admarvel.android.ads.ab.a(a, "admarvelexternal", "", com.admarvel.android.ads.ab.a(a, "admarvelexternal"), admarvelactivity)));
                        intent1.addFlags(0x10000000);
                        if (com.admarvel.android.ads.ab.a(admarvelactivity.getBaseContext(), intent1))
                        {
                            admarvelactivity.startActivity(intent1);
                        }
                        (new ab(admarvelactivity, AdMarvelActivity.f(admarvelactivity))).b(AdMarvelActivity.e(admarvelactivity));
                          goto _L2
_L8:
                        if (!ab.f(admarvelactivity) || a == null || a.length() <= 0) goto _L2; else goto _L9
_L9:
                        Intent intent;
                        intent = new Intent(admarvelactivity.getBaseContext(), com/admarvel/android/ads/AdMarvelActivity);
                        intent.addFlags(0x10000000);
                        intent.putExtra("url", a);
                        intent.putExtra("isInterstitial", false);
                        intent.putExtra("isInterstitialClick", true);
                        intent.putExtra("xml", AdMarvelActivity.e(admarvelactivity));
                        intent.putExtra("GUID", AdMarvelActivity.c(admarvelactivity));
                        c.removeNonStringEntriesTargetParam();
                        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
                        ObjectOutputStream objectoutputstream = new ObjectOutputStream(bytearrayoutputstream);
                        objectoutputstream.writeObject(c);
                        objectoutputstream.close();
                        intent.putExtra("serialized_admarvelad", bytearrayoutputstream.toByteArray());
_L10:
                        if (admarvelactivity.f() != null)
                        {
                            intent.putExtra("source", AdMarvelActivity.t(admarvelactivity));
                        }
                        admarvelactivity.startActivity(intent);
                        (new ab(admarvelactivity, AdMarvelActivity.f(admarvelactivity))).b(AdMarvelActivity.e(admarvelactivity));
                          goto _L2
                        IOException ioexception;
                        ioexception;
                        ioexception.printStackTrace();
                          goto _L10
                    }

                    public u(String s1, AdMarvelActivity admarvelactivity, AdMarvelAd admarvelad)
                    {
                        a = s1;
                        b = new WeakReference(admarvelactivity);
                        c = admarvelad;
                    }
                }


                private class v
                    implements Runnable
                {

                    private final WeakReference a;
                    private final WeakReference b;
                    private float c;

                    public void run()
                    {
                        AdMarvelActivity admarvelactivity;
                        AdMarvelInternalWebView admarvelinternalwebview;
                        admarvelactivity = (AdMarvelActivity)a.get();
                        admarvelinternalwebview = (AdMarvelInternalWebView)b.get();
                        if (admarvelactivity == null)
                        {
                            break MISSING_BLOCK_LABEL_107;
                        }
                        if (admarvelinternalwebview == null)
                        {
                            return;
                        }
                        RelativeLayout relativelayout = (RelativeLayout)admarvelactivity.findViewById(AdMarvelActivity.b);
                        if (relativelayout == null)
                        {
                            break MISSING_BLOCK_LABEL_107;
                        }
                        p p1 = (p)relativelayout.findViewWithTag((new StringBuilder()).append(AdMarvelActivity.c(admarvelactivity)).append("BR_VIDEO").toString());
                        if (p1 != null)
                        {
                            try
                            {
                                p1.seekTo((int)(1000F * c));
                                return;
                            }
                            catch (Exception exception)
                            {
                                Logging.log(Log.getStackTraceString(exception));
                            }
                        }
                    }

                    public v(AdMarvelInternalWebView admarvelinternalwebview, float f1)
                    {
                        a = new WeakReference(AdMarvelActivity.this);
                        b = new WeakReference(admarvelinternalwebview);
                        c = f1;
                    }
                }


                private class x
                    implements Runnable
                {

                    private final WeakReference a;
                    private final WeakReference b;

                    public void run()
                    {
                        AdMarvelActivity admarvelactivity;
                        AdMarvelInternalWebView admarvelinternalwebview;
                        admarvelactivity = (AdMarvelActivity)a.get();
                        admarvelinternalwebview = (AdMarvelInternalWebView)b.get();
                        if (admarvelactivity == null)
                        {
                            break MISSING_BLOCK_LABEL_104;
                        }
                        if (admarvelinternalwebview == null)
                        {
                            return;
                        }
                        p p1 = (p)((RelativeLayout)admarvelactivity.findViewById(AdMarvelActivity.b)).findViewWithTag((new StringBuilder()).append(AdMarvelActivity.c(admarvelactivity)).append("BR_VIDEO").toString());
                        if (p1 != null)
                        {
                            try
                            {
                                if (p1.isPlaying())
                                {
                                    p1.a();
                                    admarvelinternalwebview.loadUrl("javascript:stop()");
                                    return;
                                }
                            }
                            catch (Exception exception)
                            {
                                Logging.log(Log.getStackTraceString(exception));
                            }
                        }
                    }

                    public x(AdMarvelInternalWebView admarvelinternalwebview)
                    {
                        a = new WeakReference(AdMarvelActivity.this);
                        b = new WeakReference(admarvelinternalwebview);
                    }
                }

            }


            private class BrightRollInnerInterstitialJS
            {

                private final WeakReference adMarvelActivityReference;
                private final WeakReference adMarvelInternalWebViewReference;
                private String videoUrl;

                public void browseTo(String s1)
                {
                    AdMarvelActivity admarvelactivity = (AdMarvelActivity)adMarvelActivityReference.get();
                    AdMarvelInternalWebView admarvelinternalwebview;
                    if (admarvelactivity != null)
                    {
                        if ((admarvelinternalwebview = (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get()) == null || !admarvelinternalwebview.isSignalShutdown())
                        {
                            Intent intent = new Intent("android.intent.action.VIEW");
                            intent.setData(Uri.parse(s1));
                            if (com.admarvel.android.ads.ab.a(admarvelactivity.getBaseContext(), intent))
                            {
                                admarvelactivity.startActivity(intent);
                            }
                            finish();
                            return;
                        }
                    }
                }

                public void cleanup()
                {
                    AdMarvelActivity admarvelactivity = (AdMarvelActivity)adMarvelActivityReference.get();
                    AdMarvelInternalWebView admarvelinternalwebview;
                    if (admarvelactivity != null)
                    {
                        if ((admarvelinternalwebview = (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get()) != null && !admarvelinternalwebview.isSignalShutdown())
                        {
                            d d1 = admarvelactivity. new d();
                            AdMarvelActivity.f(admarvelactivity).post(d1);
                            return;
                        }
                    }
                }

                public void didPixel(String s1)
                {
                }

                public void enableVideoCloseInBackground()
                {
                    AdMarvelActivity admarvelactivity = (AdMarvelActivity)adMarvelActivityReference.get();
                    if (admarvelactivity == null)
                    {
                        return;
                    } else
                    {
                        AdMarvelActivity.c(admarvelactivity, true);
                        return;
                    }
                }

                public void finish()
                {
                    AdMarvelActivity admarvelactivity = (AdMarvelActivity)adMarvelActivityReference.get();
                    AdMarvelInternalWebView admarvelinternalwebview;
                    if (admarvelactivity != null)
                    {
                        if ((admarvelinternalwebview = (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get()) == null || !admarvelinternalwebview.isSignalShutdown())
                        {
                            AdMarvelActivity.q(admarvelactivity).sendEmptyMessage(0);
                            return;
                        }
                    }
                }

                public void hide()
                {
                    didPixel("Hide");
                    finish();
                }

                public void load()
                {
                    AdMarvelActivity admarvelactivity = (AdMarvelActivity)adMarvelActivityReference.get();
                    AdMarvelInternalWebView admarvelinternalwebview;
                    if (admarvelactivity != null)
                    {
                        if ((admarvelinternalwebview = (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get()) != null && !admarvelinternalwebview.isSignalShutdown())
                        {
                            admarvelinternalwebview.a(true);
                            if (videoUrl != null && videoUrl.length() > 0)
                            {
                                q q1 = new q(videoUrl, admarvelactivity, admarvelinternalwebview);
                                AdMarvelActivity.f(admarvelactivity).post(q1);
                                admarvelactivity.d = false;
                                return;
                            }
                        }
                    }
                }

                public void onBackPressed()
                {
                    finish();
                }

                public void play()
                {
                    AdMarvelActivity admarvelactivity = (AdMarvelActivity)adMarvelActivityReference.get();
                    AdMarvelInternalWebView admarvelinternalwebview;
                    if (admarvelactivity != null)
                    {
                        if ((admarvelinternalwebview = (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get()) != null && !admarvelinternalwebview.isSignalShutdown() && videoUrl != null && videoUrl.length() > 0)
                        {
                            s s1 = admarvelactivity. new s(admarvelinternalwebview);
                            AdMarvelActivity.f(admarvelactivity).post(s1);
                            return;
                        }
                    }
                }

                public void positionVideo(float f1, float f2, float f3, float f4)
                {
                    AdMarvelActivity admarvelactivity = (AdMarvelActivity)adMarvelActivityReference.get();
                    AdMarvelInternalWebView admarvelinternalwebview;
                    if (admarvelactivity != null)
                    {
                        if ((admarvelinternalwebview = (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get()) != null && !admarvelinternalwebview.isSignalShutdown() && videoUrl != null && videoUrl.length() > 0)
                        {
                            t t1 = admarvelactivity. new t(admarvelinternalwebview, f1, f2, f3, f4);
                            AdMarvelActivity.f(admarvelactivity).post(t1);
                            return;
                        }
                    }
                }

                public void seekTo(float f1)
                {
                    AdMarvelActivity admarvelactivity = (AdMarvelActivity)adMarvelActivityReference.get();
                    AdMarvelInternalWebView admarvelinternalwebview;
                    if (admarvelactivity != null)
                    {
                        if ((admarvelinternalwebview = (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get()) != null && !admarvelinternalwebview.isSignalShutdown() && videoUrl != null && videoUrl.length() > 0)
                        {
                            v v1 = admarvelactivity. new v(admarvelinternalwebview, f1);
                            AdMarvelActivity.f(admarvelactivity).post(v1);
                            return;
                        }
                    }
                }

                public void setVideoUrl(String s1)
                {
                    videoUrl = s1;
                }

                boolean videoIsLoaded()
                {
                    AdMarvelActivity admarvelactivity = (AdMarvelActivity)adMarvelActivityReference.get();
                    AdMarvelInternalWebView admarvelinternalwebview;
                    if (admarvelactivity != null)
                    {
                        if ((admarvelinternalwebview = (AdMarvelInternalWebView)adMarvelInternalWebViewReference.get()) == null || !admarvelinternalwebview.isSignalShutdown())
                        {
                            boolean flag;
                            if (AdMarvelActivity.z(admarvelactivity) != null)
                            {
                                flag = true;
                            } else
                            {
                                flag = false;
                            }
                            return flag;
                        }
                    }
                    return false;
                }

                public BrightRollInnerInterstitialJS(AdMarvelInternalWebView admarvelinternalwebview, AdMarvelActivity admarvelactivity)
                {
                    adMarvelInternalWebViewReference = new WeakReference(admarvelinternalwebview);
                    adMarvelActivityReference = new WeakReference(admarvelactivity);
                }

                private class t
                    implements Runnable
                {

                    private final WeakReference a;
                    private final WeakReference b;
                    private float c;
                    private float d;
                    private float e;
                    private float f;

                    public void run()
                    {
                        AdMarvelActivity admarvelactivity;
                        AdMarvelInternalWebView admarvelinternalwebview;
                        admarvelactivity = (AdMarvelActivity)a.get();
                        admarvelinternalwebview = (AdMarvelInternalWebView)b.get();
                        if (admarvelactivity == null)
                        {
                            break MISSING_BLOCK_LABEL_202;
                        }
                        if (admarvelinternalwebview == null)
                        {
                            return;
                        }
                        RelativeLayout relativelayout;
                        admarvelinternalwebview.loadUrl("javascript:console.log(\"Window Innerwidth \"+window.innerWidth);");
                        relativelayout = (RelativeLayout)admarvelactivity.findViewById(AdMarvelActivity.b);
                        p p1;
                        p1 = null;
                        if (relativelayout == null)
                        {
                            break MISSING_BLOCK_LABEL_89;
                        }
                        p1 = (p)relativelayout.findViewWithTag((new StringBuilder()).append(AdMarvelActivity.c(admarvelactivity)).append("BR_VIDEO").toString());
                        if (p1 != null)
                        {
                            try
                            {
                                if (AdMarvelActivity.z(admarvelactivity) != null)
                                {
                                    int i1 = relativelayout.getWidth();
                                    int j1 = relativelayout.getHeight();
                                    android.widget.RelativeLayout.LayoutParams layoutparams = (android.widget.RelativeLayout.LayoutParams)p1.getLayoutParams();
                                    layoutparams.width = (int)((float)i1 * e);
                                    layoutparams.height = (int)((float)j1 * f);
                                    layoutparams.leftMargin = (int)((float)i1 * c);
                                    layoutparams.topMargin = (int)((float)j1 * d);
                                    p1.setLayoutParams(layoutparams);
                                    p1.forceLayout();
                                    return;
                                }
                            }
                            catch (Exception exception)
                            {
                                Logging.log(Log.getStackTraceString(exception));
                            }
                        }
                    }

                    public t(AdMarvelInternalWebView admarvelinternalwebview, float f1, float f2, float f3, float f4)
                    {
                        a = new WeakReference(AdMarvelActivity.this);
                        b = new WeakReference(admarvelinternalwebview);
                        c = f1;
                        d = f2;
                        e = f3;
                        f = f4;
                    }
                }

            }

        };
    }

    static String A(AdMarvelActivity admarvelactivity)
    {
        return admarvelactivity.y;
    }

    static String B(AdMarvelActivity admarvelactivity)
    {
        return admarvelactivity.C;
    }

    static String C(AdMarvelActivity admarvelactivity)
    {
        return admarvelactivity.A;
    }

    static Runnable D(AdMarvelActivity admarvelactivity)
    {
        return admarvelactivity.l;
    }

    static Runnable E(AdMarvelActivity admarvelactivity)
    {
        return admarvelactivity.k;
    }

    static aa a(AdMarvelActivity admarvelactivity, aa aa)
    {
        admarvelactivity.w = aa;
        return aa;
    }

    static String a(AdMarvelActivity admarvelactivity, String s1)
    {
        admarvelactivity.o = s1;
        return s1;
    }

    static boolean a(AdMarvelActivity admarvelactivity)
    {
        return admarvelactivity.q;
    }

    static boolean a(AdMarvelActivity admarvelactivity, boolean flag)
    {
        admarvelactivity.g = flag;
        return flag;
    }

    static int b(AdMarvelActivity admarvelactivity)
    {
        int i1 = admarvelactivity.j;
        admarvelactivity.j = i1 + 1;
        return i1;
    }

    static String b(AdMarvelActivity admarvelactivity, String s1)
    {
        admarvelactivity.x = s1;
        return s1;
    }

    static boolean b(AdMarvelActivity admarvelactivity, boolean flag)
    {
        admarvelactivity.h = flag;
        return flag;
    }

    static String c(AdMarvelActivity admarvelactivity)
    {
        return admarvelactivity.u;
    }

    static String c(AdMarvelActivity admarvelactivity, String s1)
    {
        admarvelactivity.y = s1;
        return s1;
    }

    static boolean c(AdMarvelActivity admarvelactivity, boolean flag)
    {
        admarvelactivity.E = flag;
        return flag;
    }

    static int d(AdMarvelActivity admarvelactivity)
    {
        return admarvelactivity.j;
    }

    static String d(AdMarvelActivity admarvelactivity, String s1)
    {
        admarvelactivity.z = s1;
        return s1;
    }

    static String e(AdMarvelActivity admarvelactivity)
    {
        return admarvelactivity.s;
    }

    static String e(AdMarvelActivity admarvelactivity, String s1)
    {
        admarvelactivity.A = s1;
        return s1;
    }

    static Handler f(AdMarvelActivity admarvelactivity)
    {
        return admarvelactivity.t;
    }

    static String f(AdMarvelActivity admarvelactivity, String s1)
    {
        admarvelactivity.B = s1;
        return s1;
    }

    static AdMarvelAd g(AdMarvelActivity admarvelactivity)
    {
        return admarvelactivity.v;
    }

    static String g(AdMarvelActivity admarvelactivity, String s1)
    {
        admarvelactivity.C = s1;
        return s1;
    }

    static String h(AdMarvelActivity admarvelactivity, String s1)
    {
        admarvelactivity.D = s1;
        return s1;
    }

    static boolean h(AdMarvelActivity admarvelactivity)
    {
        return admarvelactivity.G;
    }

    static b i(AdMarvelActivity admarvelactivity)
    {
        return admarvelactivity.i;
    }

    static String j(AdMarvelActivity admarvelactivity)
    {
        return admarvelactivity.m;
    }

    static String k(AdMarvelActivity admarvelactivity)
    {
        return admarvelactivity.F;
    }

    static String l(AdMarvelActivity admarvelactivity)
    {
        return admarvelactivity.o;
    }

    static boolean m(AdMarvelActivity admarvelactivity)
    {
        return admarvelactivity.H;
    }

    static boolean n(AdMarvelActivity admarvelactivity)
    {
        return admarvelactivity.I;
    }

    static String o(AdMarvelActivity admarvelactivity)
    {
        return admarvelactivity.J;
    }

    static int p(AdMarvelActivity admarvelactivity)
    {
        return admarvelactivity.p;
    }

    static Handler q(AdMarvelActivity admarvelactivity)
    {
        return admarvelactivity.K;
    }

    static boolean r(AdMarvelActivity admarvelactivity)
    {
        return admarvelactivity.E;
    }

    static boolean s(AdMarvelActivity admarvelactivity)
    {
        return admarvelactivity.r;
    }

    static String t(AdMarvelActivity admarvelactivity)
    {
        return admarvelactivity.n;
    }

    static Handler u(AdMarvelActivity admarvelactivity)
    {
        return admarvelactivity.L;
    }

    static String v(AdMarvelActivity admarvelactivity)
    {
        return admarvelactivity.x;
    }

    static String w(AdMarvelActivity admarvelactivity)
    {
        return admarvelactivity.z;
    }

    static String x(AdMarvelActivity admarvelactivity)
    {
        return admarvelactivity.B;
    }

    static String y(AdMarvelActivity admarvelactivity)
    {
        return admarvelactivity.D;
    }

    static aa z(AdMarvelActivity admarvelactivity)
    {
        return admarvelactivity.w;
    }

    public int a()
    {
        return j;
    }

    void a(String s1)
    {
        int i1;
        Logging.log("DisableActivityOrientation");
        if (com.admarvel.android.ads.ac.a() < 9)
        {
            i1 = getResources().getConfiguration().orientation;
        } else
        {
            n n1 = new n(this);
            n1.run();
            i1 = 0x80000000;
            while (i1 == 0x80000000) 
            {
                i1 = com.admarvel.android.ads.n.a(n1);
            }
        }
        if (s1 == null) goto _L2; else goto _L1
_L1:
        if (com.admarvel.android.ads.ac.a() >= 9)
        {
            break MISSING_BLOCK_LABEL_127;
        }
        if (!s1.equalsIgnoreCase("Portrait")) goto _L4; else goto _L3
_L3:
        setRequestedOrientation(1);
_L2:
        return;
_L4:
        if (s1.equalsIgnoreCase("LandscapeLeft"))
        {
            setRequestedOrientation(0);
            return;
        }
        if (!s1.equalsIgnoreCase("Current")) goto _L2; else goto _L5
_L5:
        if (i1 == 1)
        {
            setRequestedOrientation(1);
            return;
        }
        if (i1 != 2) goto _L2; else goto _L6
_L6:
        setRequestedOrientation(0);
        return;
        if (s1.equalsIgnoreCase("Portrait"))
        {
            setRequestedOrientation(1);
            return;
        }
        if (s1.equalsIgnoreCase("LandscapeLeft"))
        {
            setRequestedOrientation(0);
            return;
        }
        if (s1.equalsIgnoreCase("Current"))
        {
            if (i1 == 0)
            {
                t.post(new w(this, "Portrait"));
                return;
            }
            if (i1 == 1)
            {
                t.post(new w(this, "LandscapeLeft"));
                return;
            } else
            {
                t.post(new w(this, "none"));
                return;
            }
        } else
        {
            t.post(new w(this, s1));
            return;
        }
    }

    public void b()
    {
        j = 1 + j;
    }

    boolean c()
    {
        return q;
    }

    boolean d()
    {
        return r;
    }

    boolean e()
    {
        return G;
    }

    String f()
    {
        return n;
    }

    void g()
    {
        K.sendEmptyMessage(0);
    }

    public void h()
    {
        t.postDelayed(new h(v, this), 1000L);
    }

    public void i()
    {
        t.postDelayed(new i(v, this), 3000L);
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        if (AdMarvelUtils.getAdmarvelActivityOrientationInfo(this) != null)
        {
            setRequestedOrientation(AdMarvelUtils.getAdmarvelActivityOrientationInfo(this).intValue());
        }
        if (com.admarvel.android.ads.ac.a() >= 11)
        {
            com.admarvel.android.ads.o.a(this);
        }
        Bundle bundle1 = getIntent().getExtras();
        if (bundle1 != null)
        {
            m = bundle1.getString("url");
            n = bundle1.getString("source");
            o = bundle1.getString("html");
            s = bundle1.getString("xml");
            q = bundle1.getBoolean("isInterstitial", false);
            r = bundle1.getBoolean("isInterstitialClick", false);
            u = bundle1.getString("GUID");
            byte abyte0[] = bundle1.getByteArray("serialized_admarvelad");
            RelativeLayout relativelayout;
            g g1;
            if (abyte0 != null)
            {
                try
                {
                    v = (AdMarvelAd)(new ObjectInputStream(new ByteArrayInputStream(abyte0))).readObject();
                }
                catch (Exception exception)
                {
                    Logging.log(Log.getStackTraceString(exception));
                }
            }
            p = bundle1.getInt("backgroundcolor");
            F = bundle1.getString("expand_url");
            if (F != null && F.length() > 0)
            {
                G = true;
                H = bundle1.getBoolean("closeBtnEnabled");
                I = bundle1.getBoolean("closeAreaEnabled");
                J = bundle1.getString("orientationState");
            }
        }
        if (AdMarvelUtils.isNotificationBarInFullScreenLaunchEnabled() || !q && (Build.MODEL.contains("Kindle") || Build.PRODUCT.contains("Kindle")))
        {
            getWindow().addFlags(256);
            getWindow().clearFlags(1024);
        } else
        {
            getWindow().setFlags(512, 512);
        }
        i = new b();
        relativelayout = new RelativeLayout(this);
        relativelayout.setId(b);
        relativelayout.setLayoutParams(new android.view.ViewGroup.LayoutParams(-1, -1));
        relativelayout.setBackgroundColor(0xff000000);
        setContentView(relativelayout);
        (new com.admarvel.android.a.a(this)).a();
        if (q)
        {
            AdMarvelInterstitialAds.getListener().a(this);
        }
        if (com.admarvel.android.ads.ac.a() >= 11)
        {
            t.post(new j(v));
        } else
        {
            (new a(v)).execute(new Object[0]);
        }
        g1 = new g(this);
        g1.setTag("ADM_DIALOG");
        addContentView(g1, g1.getLayoutParams());
        a = new WeakReference(g1);
    }

    protected void onDestroy()
    {
        g g1;
        n n1;
        d d1;
        RelativeLayout relativelayout;
        if (a != null)
        {
            g1 = (g)a.get();
        } else
        {
            g1 = null;
        }
        if (g1 != null)
        {
            g1.b();
            com.admarvel.android.ads.g.a(g1);
            g1.c();
            a.clear();
        }
        n1 = com.admarvel.android.ads.n.a();
        if (n1.b())
        {
            n1.c();
        }
        d1 = new d();
        t.post(d1);
        relativelayout = (RelativeLayout)findViewById(b);
        if (e() && AdMarvelInternalWebView.c(u) != null)
        {
            AdMarvelInternalWebView.c(u).a();
        }
        if (relativelayout != null)
        {
            AdMarvelInternalWebView admarvelinternalwebview1 = (AdMarvelInternalWebView)relativelayout.findViewWithTag((new StringBuilder()).append(u).append("WEBVIEW").toString());
            if (admarvelinternalwebview1 != null && admarvelinternalwebview1.visibilityCallback != null && admarvelinternalwebview1.visibilityCallback.length() > 0 && admarvelinternalwebview1.isLastStateVisible)
            {
                admarvelinternalwebview1.injectJavaScript((new StringBuilder()).append(admarvelinternalwebview1.visibilityCallback).append("(").append(false).append(")").toString());
                admarvelinternalwebview1.isLastStateVisible = false;
            }
        }
        if (relativelayout != null)
        {
            AdMarvelInternalWebView admarvelinternalwebview = (AdMarvelInternalWebView)relativelayout.findViewWithTag((new StringBuilder()).append(u).append("WEBVIEW").toString());
            if (admarvelinternalwebview != null)
            {
                relativelayout.removeView(admarvelinternalwebview);
                admarvelinternalwebview.loadUrl("");
                admarvelinternalwebview.a();
            }
        }
        if (q)
        {
            AdMarvelInternalWebView.b(u);
        }
        super.onDestroy();
    }

    public boolean onKeyDown(int i1, KeyEvent keyevent)
    {
        if (keyevent.getAction() != 0) goto _L2; else goto _L1
_L1:
        i1;
        JVM INSTR tableswitch 4 4: default 28
    //                   4 35;
           goto _L2 _L3
_L2:
        return super.onKeyDown(i1, keyevent);
_L3:
        if (g || h)
        {
            return false;
        }
        g();
        if (!c() && AdMarvelInternalWebView.d(u) != null)
        {
            AdMarvelInternalWebView.d(u).a(u);
        }
        return true;
    }

    protected void onPause()
    {
        RelativeLayout relativelayout = (RelativeLayout)findViewById(b);
        if (a != null)
        {
            g _tmp = (g)a.get();
        }
        if (relativelayout != null)
        {
            AdMarvelInternalWebView admarvelinternalwebview1 = (AdMarvelInternalWebView)relativelayout.findViewWithTag((new StringBuilder()).append(u).append("WEBVIEW").toString());
            if (admarvelinternalwebview1 != null)
            {
                RelativeLayout relativelayout1;
                AdMarvelInternalWebView admarvelinternalwebview;
                if (com.admarvel.android.ads.ac.a() >= 11)
                {
                    ak.b(admarvelinternalwebview1);
                } else
                {
                    al.b(admarvelinternalwebview1);
                }
                admarvelinternalwebview1.e();
            }
        }
        if (!isFinishing() && f != null && f.length() > 0)
        {
            relativelayout1 = (RelativeLayout)findViewById(b);
            if (relativelayout1 != null)
            {
                admarvelinternalwebview = (AdMarvelInternalWebView)relativelayout1.findViewWithTag((new StringBuilder()).append(u).append("WEBVIEW").toString());
                if (admarvelinternalwebview != null)
                {
                    admarvelinternalwebview.loadUrl((new StringBuilder()).append("javascript:").append(f).append("()").toString());
                }
            }
        }
        try
        {
            com.admarvel.android.ads.c.a("com.admarvel.android.admarvelmologiqadapter.AdMarvelMologiqAdapter", this).resume();
        }
        catch (Exception exception) { }
        super.onPause();
    }

    protected void onResume()
    {
        super.onResume();
        RelativeLayout relativelayout = (RelativeLayout)findViewById(b);
        if (relativelayout != null)
        {
            AdMarvelInternalWebView admarvelinternalwebview = (AdMarvelInternalWebView)relativelayout.findViewWithTag((new StringBuilder()).append(u).append("WEBVIEW").toString());
            if (admarvelinternalwebview != null)
            {
                if (com.admarvel.android.ads.ac.a() >= 11)
                {
                    com.admarvel.android.ads.ak.a(admarvelinternalwebview);
                } else
                {
                    com.admarvel.android.ads.al.a(admarvelinternalwebview);
                }
                Logging.log((new StringBuilder()).append("#### activity onResume ").append(admarvelinternalwebview.isLastStateVisible).toString());
                admarvelinternalwebview.f();
            }
        }
        try
        {
            com.admarvel.android.ads.c.a("com.admarvel.android.admarvelmologiqadapter.AdMarvelMologiqAdapter", this).resume();
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    protected void onStart()
    {
        try
        {
            com.admarvel.android.ads.c.a("com.admarvel.android.admarvelmologiqadapter.AdMarvelMologiqAdapter", this).start();
        }
        catch (Exception exception) { }
        super.onStart();
    }

    protected void onStop()
    {
        if (com.admarvel.android.ads.ac.a() >= 7)
        {
            t.post(new k());
        }
        try
        {
            com.admarvel.android.ads.c.a("com.admarvel.android.admarvelmologiqadapter.AdMarvelMologiqAdapter", this).stop();
        }
        catch (Exception exception) { }
        super.onStop();
    }


    private class h
        implements Runnable
    {

        private final AdMarvelAd a;
        private final Context b;

        public void run()
        {
            if (a != null)
            {
                a.setResponseJson();
            }
            com.admarvel.android.util.a a1 = com.admarvel.android.util.a.b(b);
            if (a1 != null && a != null)
            {
                int i1 = a1.a(b);
                a.setAdHistoryCounter(i1);
                a1.a(a.getAdHistoryDumpString(), i1);
            }
        }

        public h(AdMarvelAd admarvelad, Context context)
        {
            a = admarvelad;
            b = context;
        }
    }


    private class i
        implements Runnable
    {

        private final AdMarvelAd a;
        private final Context b;

        public void run()
        {
            com.admarvel.android.util.a a1 = com.admarvel.android.util.a.b(b);
            if (a1 != null && a != null)
            {
                int i1 = a.getAdHistoryCounter();
                StringBuilder stringbuilder = new StringBuilder();
                stringbuilder.append("/ssr_");
                stringbuilder.append(i1);
                stringbuilder.append(".jpg");
                a1.a(stringbuilder.toString());
            }
        }

        public i(AdMarvelAd admarvelad, Context context)
        {
            a = admarvelad;
            b = context;
        }
    }


    private class o
    {

        static void a(Activity activity)
        {
            activity.getWindow().setFlags(0x1000000, 0x1000000);
        }
    }


    private class b
        implements g
    {

        private final WeakReference a;

        public void a(String s1)
        {
            AdMarvelActivity admarvelactivity = (AdMarvelActivity)a.get();
            RelativeLayout relativelayout;
            AdMarvelInternalWebView admarvelinternalwebview;
            if (admarvelactivity != null)
            {
                if ((relativelayout = (RelativeLayout)admarvelactivity.findViewById(AdMarvelActivity.b)) != null && ((admarvelinternalwebview = (AdMarvelInternalWebView)relativelayout.findViewWithTag((new StringBuilder()).append(s1).append("WEBVIEW").toString())) != null && !admarvelinternalwebview.isSignalShutdown() && admarvelinternalwebview.mInAppBrowserCloseCallback != null && admarvelinternalwebview.mInAppBrowserCloseCallback.length() > 0))
                {
                    admarvelinternalwebview.loadUrl((new StringBuilder()).append("javascript:").append(admarvelinternalwebview.mInAppBrowserCloseCallback).append("()").toString());
                    return;
                }
            }
        }

        public b()
        {
            a = new WeakReference(AdMarvelActivity.this);
        }
    }


    private class j
        implements Runnable
    {

        final AdMarvelActivity a;
        private final AdMarvelAd b;

        public void run()
        {
            try
            {
                (a. new a(b)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Object[0]);
                return;
            }
            catch (Exception exception)
            {
                Logging.log(Log.getStackTraceString(exception));
            }
            AdMarvelActivity.q(a).sendEmptyMessage(0);
        }

        public j(AdMarvelAd admarvelad)
        {
            a = AdMarvelActivity.this;
            super();
            b = admarvelad;
        }
    }


    private class a extends AsyncTask
    {

        private final WeakReference a;
        private final AdMarvelAd b;

        protected transient Object doInBackground(Object aobj[])
        {
            AdMarvelActivity admarvelactivity;
            if (a != null)
            {
                admarvelactivity = (AdMarvelActivity)a.get();
            } else
            {
                admarvelactivity = null;
            }
            if (admarvelactivity != null) goto _L2; else goto _L1
_L1:
            return null;
_L2:
            if (AdMarvelActivity.j(admarvelactivity) == null || com.admarvel.android.ads.ab.a(AdMarvelActivity.j(admarvelactivity), "admarvelsdk") == ab.f.c)
            {
                break MISSING_BLOCK_LABEL_195;
            }
            if (!AdMarvelActivity.s(admarvelactivity) || AdMarvelInterstitialAds.getListener() == null) goto _L4; else goto _L3
_L3:
            AdMarvelInterstitialAds.getListener().a(admarvelactivity, com.admarvel.android.ads.ab.a(AdMarvelActivity.j(admarvelactivity), "admarvelsdk", "", com.admarvel.android.ads.ab.a(AdMarvelActivity.j(admarvelactivity), "admarvelsdk"), admarvelactivity), b.getSiteId(), b.getId(), b.getTargetParams(), b.getIpAddress());
_L6:
            AdMarvelActivity.q(admarvelactivity).sendEmptyMessage(0);
            Exception exception;
            return null;
_L4:
            if (com.admarvel.android.ads.AdMarvelWebView.a(AdMarvelActivity.c(admarvelactivity)) == null) goto _L6; else goto _L5
_L5:
            com.admarvel.android.ads.AdMarvelWebView.a(AdMarvelActivity.c(admarvelactivity)).a(b, com.admarvel.android.ads.ab.a(AdMarvelActivity.j(admarvelactivity), "admarvelsdk", "", com.admarvel.android.ads.ab.a(AdMarvelActivity.j(admarvelactivity), "admarvelsdk"), admarvelactivity));
              goto _L6
            if (AdMarvelActivity.j(admarvelactivity) == null || com.admarvel.android.ads.ab.a(AdMarvelActivity.j(admarvelactivity), "admarvelinternal") == ab.f.c)
            {
                break MISSING_BLOCK_LABEL_341;
            }
            if (!AdMarvelActivity.s(admarvelactivity)) goto _L8; else goto _L7
_L7:
            AdMarvelInterstitialAds.getListener().a(admarvelactivity, com.admarvel.android.ads.ab.a(AdMarvelActivity.j(admarvelactivity), "admarvelinternal", "", com.admarvel.android.ads.ab.a(AdMarvelActivity.j(admarvelactivity), "admarvelinternal"), admarvelactivity), b.getSiteId(), b.getId(), b.getTargetParams(), b.getIpAddress());
_L10:
            AdMarvelActivity.q(admarvelactivity).sendEmptyMessage(0);
            return null;
_L8:
            if (com.admarvel.android.ads.AdMarvelWebView.a(AdMarvelActivity.c(admarvelactivity)) == null) goto _L10; else goto _L9
_L9:
            com.admarvel.android.ads.AdMarvelWebView.a(AdMarvelActivity.c(admarvelactivity)).a(b, com.admarvel.android.ads.ab.a(AdMarvelActivity.j(admarvelactivity), "admarvelinternal", "", com.admarvel.android.ads.ab.a(AdMarvelActivity.j(admarvelactivity), "admarvelinternal"), admarvelactivity));
              goto _L10
            if (AdMarvelActivity.j(admarvelactivity) == null || com.admarvel.android.ads.ab.a(AdMarvelActivity.j(admarvelactivity), "admarvelvideo") == ab.f.c)
            {
                break MISSING_BLOCK_LABEL_526;
            }
            if (!AdMarvelActivity.s(admarvelactivity)) goto _L12; else goto _L11
_L11:
            AdMarvelInterstitialAds.getListener().a(admarvelactivity, AdMarvelActivity.j(admarvelactivity), b.getSiteId(), b.getId(), b.getTargetParams(), b.getIpAddress());
_L14:
            String s1 = com.admarvel.android.ads.ab.a(AdMarvelActivity.j(admarvelactivity), "admarvelvideo", "http://", com.admarvel.android.ads.ab.a(AdMarvelActivity.j(admarvelactivity), "admarvelvideo"), admarvelactivity);
            Intent intent2 = new Intent("android.intent.action.VIEW");
            intent2.addFlags(0x10000000);
            intent2.setDataAndType(Uri.parse(s1), "video/*");
            if (com.admarvel.android.ads.ab.a(admarvelactivity.getBaseContext(), intent2))
            {
                admarvelactivity.startActivity(intent2);
            }
            AdMarvelActivity.q(admarvelactivity).sendEmptyMessage(0);
            return null;
_L12:
            if (com.admarvel.android.ads.AdMarvelWebView.a(AdMarvelActivity.c(admarvelactivity)) == null) goto _L14; else goto _L13
_L13:
            com.admarvel.android.ads.AdMarvelWebView.a(AdMarvelActivity.c(admarvelactivity)).a(b, AdMarvelActivity.j(admarvelactivity));
              goto _L14
            if (AdMarvelActivity.j(admarvelactivity) == null || com.admarvel.android.ads.ab.a(AdMarvelActivity.j(admarvelactivity), "admarvelcustomvideo") == ab.f.c)
            {
                break MISSING_BLOCK_LABEL_804;
            }
            if (!AdMarvelActivity.s(admarvelactivity)) goto _L16; else goto _L15
_L15:
            AdMarvelInterstitialAds.getListener().a(admarvelactivity, AdMarvelActivity.j(admarvelactivity), b.getSiteId(), b.getId(), b.getTargetParams(), b.getIpAddress());
_L18:
            Intent intent1;
            intent1 = new Intent(admarvelactivity, com/admarvel/android/ads/AdMarvelVideoActivity);
            b.removeNonStringEntriesTargetParam();
            try
            {
                ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
                ObjectOutputStream objectoutputstream = new ObjectOutputStream(bytearrayoutputstream);
                objectoutputstream.writeObject(b);
                objectoutputstream.close();
                intent1.putExtra("serialized_admarvelad", bytearrayoutputstream.toByteArray());
            }
            catch (IOException ioexception)
            {
                try
                {
                    ioexception.printStackTrace();
                }
                // Misplaced declaration of an exception variable
                catch (Exception exception)
                {
                    Logging.log(Log.getStackTraceString(exception));
                    admarvelactivity.finish();
                    return null;
                }
            }
            intent1.addFlags(0x10000000);
            intent1.putExtra("url", AdMarvelActivity.j(admarvelactivity));
            intent1.putExtra("isCustomUrl", true);
            intent1.putExtra("xml", AdMarvelActivity.e(admarvelactivity));
            intent1.putExtra("source", AdMarvelActivity.t(admarvelactivity));
            intent1.putExtra("GUID", AdMarvelActivity.c(admarvelactivity));
            admarvelactivity.startActivity(intent1);
            (new ab(admarvelactivity, AdMarvelActivity.f(admarvelactivity))).b(AdMarvelActivity.e(admarvelactivity));
            AdMarvelActivity.q(admarvelactivity).sendEmptyMessage(0);
            return null;
_L16:
            if (com.admarvel.android.ads.AdMarvelWebView.a(AdMarvelActivity.c(admarvelactivity)) == null) goto _L18; else goto _L17
_L17:
            com.admarvel.android.ads.AdMarvelWebView.a(AdMarvelActivity.c(admarvelactivity)).a(b, AdMarvelActivity.j(admarvelactivity));
              goto _L18
            if (AdMarvelActivity.j(admarvelactivity) == null || com.admarvel.android.ads.ab.a(AdMarvelActivity.j(admarvelactivity), "admarvelexternal") == ab.f.c)
            {
                break MISSING_BLOCK_LABEL_924;
            }
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(com.admarvel.android.ads.ab.a(AdMarvelActivity.j(admarvelactivity), "admarvelexternal", "", com.admarvel.android.ads.ab.a(AdMarvelActivity.j(admarvelactivity), "admarvelexternal"), admarvelactivity)));
            intent.addFlags(0x10000000);
            if (com.admarvel.android.ads.ab.a(admarvelactivity.getBaseContext(), intent))
            {
                admarvelactivity.startActivity(intent);
            }
            if (AdMarvelActivity.e(admarvelactivity) != null)
            {
                (new ab(admarvelactivity, AdMarvelActivity.f(admarvelactivity))).b(AdMarvelActivity.e(admarvelactivity));
            }
            AdMarvelActivity.q(admarvelactivity).sendEmptyMessage(0);
            return null;
            if (!ab.b(admarvelactivity, AdMarvelActivity.j(admarvelactivity)))
            {
                break MISSING_BLOCK_LABEL_995;
            }
            (new ab(admarvelactivity, AdMarvelActivity.f(admarvelactivity))).b(AdMarvelActivity.e(admarvelactivity));
            AdMarvelActivity.q(admarvelactivity).sendEmptyMessage(0);
            if (com.admarvel.android.ads.AdMarvelWebView.a(AdMarvelActivity.c(admarvelactivity)) == null) goto _L1; else goto _L19
_L19:
            com.admarvel.android.ads.AdMarvelWebView.a(AdMarvelActivity.c(admarvelactivity)).a(b, AdMarvelActivity.j(admarvelactivity));
            return null;
            AdMarvelActivity.u(admarvelactivity).sendEmptyMessage(0);
            return null;
        }

        public a(AdMarvelAd admarvelad)
        {
            a = new WeakReference(AdMarvelActivity.this);
            b = admarvelad;
        }
    }


    private class k
        implements Runnable
    {

        final AdMarvelActivity a;

        public void run()
        {
            PowerManager powermanager = (PowerManager)a.getSystemService("power");
            if (a.isFinishing() || powermanager == null)
            {
                break MISSING_BLOCK_LABEL_445;
            }
            RelativeLayout relativelayout;
            if (!powermanager.isScreenOn())
            {
                break MISSING_BLOCK_LABEL_445;
            }
            relativelayout = (RelativeLayout)a.findViewById(AdMarvelActivity.b);
            if (relativelayout == null)
            {
                break MISSING_BLOCK_LABEL_172;
            }
            AdMarvelInternalWebView admarvelinternalwebview = (AdMarvelInternalWebView)relativelayout.findViewWithTag((new StringBuilder()).append(AdMarvelActivity.c(a)).append("WEBVIEW").toString());
            if (admarvelinternalwebview == null)
            {
                break MISSING_BLOCK_LABEL_172;
            }
            if (!admarvelinternalwebview.isSignalShutdown() && admarvelinternalwebview.visibilityCallback != null && admarvelinternalwebview.visibilityCallback.length() > 0 && admarvelinternalwebview.isLastStateVisible)
            {
                admarvelinternalwebview.injectJavaScript((new StringBuilder()).append(admarvelinternalwebview.visibilityCallback).append("(").append(false).append(")").toString());
                admarvelinternalwebview.isLastStateVisible = false;
            }
            if (!a.d)
            {
                break MISSING_BLOCK_LABEL_350;
            }
            if ((p)((RelativeLayout)a.findViewById(AdMarvelActivity.b)).findViewWithTag((new StringBuilder()).append(AdMarvelActivity.c(a)).append("BR_VIDEO").toString()) == null || !AdMarvelActivity.r(a))
            {
                break MISSING_BLOCK_LABEL_445;
            }
            if (a.e == null || a.e.length() <= 0 || relativelayout == null)
            {
                break MISSING_BLOCK_LABEL_342;
            }
            AdMarvelInternalWebView admarvelinternalwebview1 = (AdMarvelInternalWebView)relativelayout.findViewWithTag((new StringBuilder()).append(AdMarvelActivity.c(a)).append("WEBVIEW").toString());
            if (admarvelinternalwebview1 == null)
            {
                break MISSING_BLOCK_LABEL_342;
            }
            admarvelinternalwebview1.loadUrl((new StringBuilder()).append("javascript:").append(a.e).append("()").toString());
            a.g();
            return;
            try
            {
                if (a.c && AdMarvelActivity.r(a) && (p)((RelativeLayout)a.findViewById(AdMarvelActivity.b)).findViewWithTag((new StringBuilder()).append(AdMarvelActivity.c(a)).append("BR_VIDEO").toString()) != null)
                {
                    a.g();
                    return;
                }
            }
            catch (Exception exception)
            {
                Logging.log(Log.getStackTraceString(exception));
                AdMarvelActivity.q(a).sendEmptyMessage(0);
            }
        }

        private k()
        {
            a = AdMarvelActivity.this;
            super();
        }

    }

}
