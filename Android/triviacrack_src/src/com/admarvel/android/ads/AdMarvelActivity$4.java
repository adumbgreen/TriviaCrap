// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Message;
import android.webkit.URLUtil;
import android.widget.RelativeLayout;
import com.admarvel.android.b.a;
import com.admarvel.android.util.Logging;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelActivity, AdMarvelInternalWebView, ac, ak, 
//            ab, AdMarvelAd, w, al, 
//            AdMarvelInterstitialAds

class a extends Handler
{

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
        admarvelinternalwebview.addJavascriptInterface(new nerInterstitialJS(admarvelinternalwebview, a, AdMarvelActivity.g(a)), "ADMARVEL");
        admarvelinternalwebview.addJavascriptInterface(new ightRollInnerInterstitialJS(admarvelinternalwebview, a), "AndroidBridge");
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
                    String s1 = (new StringBuilder()).append(sharedpreferences.getString("childDirectory", "NULL")).append("/").append(sharedpreferences.getString("banner_folder", "NULL")).toString();
                    if (s1 != null)
                    {
                        com.admarvel.android.ads.AdMarvelActivity.a(a, com.admarvel.android.b.a.a(s1, AdMarvelActivity.k(a)));
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
            String s = (new StringBuilder()).append("content://").append(a.getPackageName()).append(".AdMarvelLocalFileContentProvider").toString();
            if (AdMarvelInterstitialAds.enableOfflineSDK)
            {
                admarvelinternalwebview.loadDataWithBaseURL((new StringBuilder()).append(AdMarvelActivity.g(a).getOfflineBaseUrl()).append("/").toString(), AdMarvelActivity.l(a), "text/html", "utf-8", null);
                return;
            }
            if (com.admarvel.android.ads.ac.a() < 11)
            {
                admarvelinternalwebview.loadDataWithBaseURL(s, AdMarvelActivity.l(a), "text/html", "utf-8", null);
                return;
            } else
            {
                admarvelinternalwebview.loadDataWithBaseURL("http://baseurl.admarvel.com", AdMarvelActivity.l(a), "text/html", "utf-8", null);
                return;
            }
        }
    }

    lAds(AdMarvelActivity admarvelactivity)
    {
        a = admarvelactivity;
        super();
    }
}
