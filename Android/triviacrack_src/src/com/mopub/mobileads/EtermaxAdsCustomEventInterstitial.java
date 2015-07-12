// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import android.support.v4.app.FragmentActivity;
import android.webkit.WebView;
import com.etermax.a.a;
import com.etermax.adsinterface.a.c;
import com.etermax.adsinterface.a.d;
import com.etermax.adsinterface.a.e;
import com.etermax.adsinterface.a.f;
import com.etermax.adsinterface.a.h;
import com.etermax.mopubads.custom.BaseCustomEventInterstitial;
import org.json.JSONObject;

// Referenced classes of package com.mopub.mobileads:
//            MoPubErrorCode

public class EtermaxAdsCustomEventInterstitial extends BaseCustomEventInterstitial
    implements e
{

    private Activity a;
    private f b;
    private com.etermax.adsinterface.a.a c;
    private Bitmap d;
    private WebView e;
    private CustomEventInterstitial.CustomEventInterstitialListener f;
    private d g;
    private Handler h;

    public EtermaxAdsCustomEventInterstitial()
    {
    }

    static Activity a(EtermaxAdsCustomEventInterstitial etermaxadscustomeventinterstitial)
    {
        return etermaxadscustomeventinterstitial.a;
    }

    static Bitmap a(EtermaxAdsCustomEventInterstitial etermaxadscustomeventinterstitial, Bitmap bitmap)
    {
        etermaxadscustomeventinterstitial.d = bitmap;
        return bitmap;
    }

    static WebView a(EtermaxAdsCustomEventInterstitial etermaxadscustomeventinterstitial, WebView webview)
    {
        etermaxadscustomeventinterstitial.e = webview;
        return webview;
    }

    static com.etermax.adsinterface.a.a a(EtermaxAdsCustomEventInterstitial etermaxadscustomeventinterstitial, com.etermax.adsinterface.a.a a1)
    {
        etermaxadscustomeventinterstitial.c = a1;
        return a1;
    }

    static f a(EtermaxAdsCustomEventInterstitial etermaxadscustomeventinterstitial, f f1)
    {
        etermaxadscustomeventinterstitial.b = f1;
        return f1;
    }

    static com.etermax.adsinterface.a.a b(EtermaxAdsCustomEventInterstitial etermaxadscustomeventinterstitial)
    {
        return etermaxadscustomeventinterstitial.c;
    }

    static CustomEventInterstitial.CustomEventInterstitialListener c(EtermaxAdsCustomEventInterstitial etermaxadscustomeventinterstitial)
    {
        return etermaxadscustomeventinterstitial.f;
    }

    static f d(EtermaxAdsCustomEventInterstitial etermaxadscustomeventinterstitial)
    {
        return etermaxadscustomeventinterstitial.b;
    }

    protected void a(Context context, CustomEventInterstitial.CustomEventInterstitialListener customeventinterstitiallistener, JSONObject jsonobject)
    {
        com.etermax.a.a.c("mopub ads", "Requesting Custom interstitial Ad");
        a = (Activity)context;
        f = customeventinterstitiallistener;
        h = new Handler();
        if (!(a instanceof FragmentActivity))
        {
            customeventinterstitiallistener.onInterstitialFailed(MoPubErrorCode.UNSPECIFIED);
            com.etermax.a.a.b("mopub ads", "Custom ads can only be called from a FragmentActivity!");
            return;
        } else
        {
            com.etermax.adsinterface.a.a.a(a, jsonobject, new c() {

                final EtermaxAdsCustomEventInterstitial a;

                public void onAdInfoLoadedFailed(Exception exception)
                {
                    com.mopub.mobileads.EtermaxAdsCustomEventInterstitial.c(a).onInterstitialFailed(MoPubErrorCode.UNSPECIFIED);
                    com.etermax.a.a.a("mopub ads", "Error loading interstitial info", exception);
                }

                public void onAdInfoLoadedOk(com.etermax.adsinterface.a.a a1)
                {
                    com.mopub.mobileads.EtermaxAdsCustomEventInterstitial.a(a, a1);
                    if (EtermaxAdsCustomEventInterstitial.b(a).a(com.mopub.mobileads.EtermaxAdsCustomEventInterstitial.a(a))) goto _L2; else goto _L1
_L1:
                    com.mopub.mobileads.EtermaxAdsCustomEventInterstitial.c(a).onInterstitialFailed(MoPubErrorCode.UNSPECIFIED);
_L4:
                    return;
_L2:
                    String s;
                    try
                    {
                        com.mopub.mobileads.EtermaxAdsCustomEventInterstitial.a(a, new f((FragmentActivity)com.mopub.mobileads.EtermaxAdsCustomEventInterstitial.a(a), EtermaxAdsCustomEventInterstitial.b(a)));
                        com.mopub.mobileads.EtermaxAdsCustomEventInterstitial.d(a).a(new h(this) {

                            final _cls1 a;

                            public void contentLoadCompleted(Bitmap bitmap)
                            {
                                com.mopub.mobileads.EtermaxAdsCustomEventInterstitial.c(a.a).onInterstitialLoaded();
                                com.etermax.a.a.c("mopub ads", "finished loading custom image");
                                com.mopub.mobileads.EtermaxAdsCustomEventInterstitial.a(a.a, bitmap);
                                com.mopub.mobileads.EtermaxAdsCustomEventInterstitial.a(a.a, null);
                            }

                            public void contentLoadCompleted(WebView webview)
                            {
                                com.mopub.mobileads.EtermaxAdsCustomEventInterstitial.c(a.a).onInterstitialLoaded();
                                com.etermax.a.a.c("mopub ads", "finished loading custom web content");
                                com.mopub.mobileads.EtermaxAdsCustomEventInterstitial.a(a.a, webview);
                                com.mopub.mobileads.EtermaxAdsCustomEventInterstitial.a(a.a, null);
                            }

                            public void contentLoadFailed(Exception exception)
                            {
                                com.mopub.mobileads.EtermaxAdsCustomEventInterstitial.c(a.a).onInterstitialFailed(MoPubErrorCode.UNSPECIFIED);
                                com.etermax.a.a.c("mopub ads", (new StringBuilder()).append("failed to load custom content: ").append(exception.getMessage()).toString());
                            }

            
            {
                a = _pcls1;
                super();
            }
                        });
                        s = EtermaxAdsCustomEventInterstitial.b(a).a();
                    }
                    catch (Exception exception)
                    {
                        com.mopub.mobileads.EtermaxAdsCustomEventInterstitial.c(a).onInterstitialFailed(MoPubErrorCode.UNSPECIFIED);
                        return;
                    }
                    if (s == null)
                    {
                        break; /* Loop/switch isn't completed */
                    }
                    if (!s.equals("")) goto _L4; else goto _L3
_L3:
                }

            
            {
                a = EtermaxAdsCustomEventInterstitial.this;
                super();
            }
            });
            return;
        }
    }

    public void notifyFailure()
    {
        h.post(new Runnable() {

            final EtermaxAdsCustomEventInterstitial a;

            public void run()
            {
                com.etermax.adsinterface.f.b();
            }

            
            {
                a = EtermaxAdsCustomEventInterstitial.this;
                super();
            }
        });
    }

    public void notifySuccess()
    {
        h.post(new Runnable() {

            final EtermaxAdsCustomEventInterstitial a;

            public void run()
            {
                com.etermax.adsinterface.f.a();
            }

            
            {
                a = EtermaxAdsCustomEventInterstitial.this;
                super();
            }
        });
    }

    public void onAdCanceled()
    {
        com.etermax.a.a.c("mopub ads", "CustomAdsEventInterstitial - onAdCanceled");
        if (f != null)
        {
            f.onInterstitialDismissed();
        }
    }

    public void onAdClicked()
    {
        com.etermax.a.a.c("mopub ads", "CustomAdsEventInterstitial - onAdClicked");
        if (f != null)
        {
            g.dismiss();
            f.onLeaveApplication();
        }
    }

    protected void onInvalidate()
    {
        if (b != null)
        {
            b.a();
            b = null;
        }
    }

    public void showInterstitial()
    {
        if (f != null)
        {
            f.onInterstitialShown();
        }
        if (g != null) goto _L2; else goto _L1
_L1:
        g = new d(a, this);
        g.show();
_L3:
        if (d == null)
        {
            break MISSING_BLOCK_LABEL_99;
        }
        g.a(c, d);
_L4:
        c.a(System.currentTimeMillis());
        notifySuccess();
        return;
_L2:
        try
        {
            g.show();
        }
        catch (Exception exception)
        {
            notifyFailure();
            return;
        }
          goto _L3
        g.a(c, e);
          goto _L4
    }
}
