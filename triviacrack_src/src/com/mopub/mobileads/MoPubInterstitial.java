// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;

import android.app.Activity;
import android.location.Location;
import com.mopub.common.MoPub;
import java.util.Map;

// Referenced classes of package com.mopub.mobileads:
//            o, ad, CustomEventInterstitialAdapter, MoPubErrorCode

public class MoPubInterstitial
    implements o
{

    private MoPubInterstitialView a;
    private CustomEventInterstitialAdapter b;
    private InterstitialAdListener c;
    private Activity d;
    private String e;
    private ad f;
    private boolean g;
    private MoPubInterstitialListener h;

    public MoPubInterstitial(Activity activity, String s)
    {
        d = activity;
        e = s;
        a = new MoPubInterstitialView(d);
        a.setAdUnitId(e);
        f = ad.NOT_READY;
    }

    static CustomEventInterstitialAdapter a(MoPubInterstitial mopubinterstitial)
    {
        return mopubinterstitial.b;
    }

    static CustomEventInterstitialAdapter a(MoPubInterstitial mopubinterstitial, CustomEventInterstitialAdapter customeventinterstitialadapter)
    {
        mopubinterstitial.b = customeventinterstitialadapter;
        return customeventinterstitialadapter;
    }

    static InterstitialAdListener b(MoPubInterstitial mopubinterstitial)
    {
        return mopubinterstitial.c;
    }

    private void d()
    {
        f = ad.NOT_READY;
        if (b != null)
        {
            b.c();
            b = null;
        }
        g = false;
    }

    private void e()
    {
        if (b != null)
        {
            b.b();
        }
    }

    boolean a()
    {
        return g;
    }

    Integer b()
    {
        return a.getAdTimeoutDelay();
    }

    MoPubInterstitialView c()
    {
        return a;
    }

    public void customEventActionWillBegin()
    {
        if (a != null)
        {
            a.b();
        }
    }

    public void customEventDidFailToLoadAd()
    {
        if (a != null)
        {
            a.b(MoPubErrorCode.UNSPECIFIED);
        }
    }

    public void customEventDidLoadAd()
    {
        if (a != null)
        {
            a.a();
        }
    }

    public void destroy()
    {
        g = true;
        if (b != null)
        {
            b.c();
            b = null;
        }
        a.setBannerAdListener(null);
        a.destroy();
    }

    public void forceRefresh()
    {
        d();
        a.forceRefresh();
    }

    public Activity getActivity()
    {
        return d;
    }

    public InterstitialAdListener getInterstitialAdListener()
    {
        return c;
    }

    public String getKeywords()
    {
        return a.getKeywords();
    }

    public MoPubInterstitialListener getListener()
    {
        return h;
    }

    public Map getLocalExtras()
    {
        return a.getLocalExtras();
    }

    public Location getLocation()
    {
        return a.getLocation();
    }

    public com.mopub.common.LocationService.LocationAwareness getLocationAwareness()
    {
        return com.mopub.common.LocationService.LocationAwareness.fromMoPubLocationAwareness(MoPub.getLocationAwareness());
    }

    public int getLocationPrecision()
    {
        return MoPub.getLocationPrecision();
    }

    public boolean getTesting()
    {
        return a.getTesting();
    }

    public boolean isFacebookSupported()
    {
        return false;
    }

    public boolean isReady()
    {
        return f.a();
    }

    public void load()
    {
        d();
        a.loadAd();
    }

    public void onCustomEventInterstitialClicked()
    {
        if (!a())
        {
            a.b();
            if (c != null)
            {
                c.onInterstitialClicked(this);
                return;
            }
        }
    }

    public void onCustomEventInterstitialDismissed()
    {
        if (!a())
        {
            f = ad.NOT_READY;
            if (c != null)
            {
                c.onInterstitialDismissed(this);
                return;
            }
        }
    }

    public void onCustomEventInterstitialFailed(MoPubErrorCode mopuberrorcode)
    {
        if (a())
        {
            return;
        } else
        {
            f = ad.NOT_READY;
            a.b(mopuberrorcode);
            return;
        }
    }

    public void onCustomEventInterstitialLoaded()
    {
        if (!g)
        {
            f = ad.CUSTOM_EVENT_AD_READY;
            if (c != null)
            {
                c.onInterstitialLoaded(this);
                return;
            }
            if (h != null)
            {
                h.OnInterstitialLoaded();
                return;
            }
        }
    }

    public void onCustomEventInterstitialShown()
    {
        if (!a())
        {
            a.a();
            if (c != null)
            {
                c.onInterstitialShown(this);
                return;
            }
        }
    }

    public void setFacebookSupported(boolean flag)
    {
    }

    public void setInterstitialAdListener(InterstitialAdListener interstitialadlistener)
    {
        c = interstitialadlistener;
    }

    public void setKeywords(String s)
    {
        a.setKeywords(s);
    }

    public void setListener(MoPubInterstitialListener mopubinterstitiallistener)
    {
        h = mopubinterstitiallistener;
    }

    public void setLocalExtras(Map map)
    {
        a.setLocalExtras(map);
    }

    public void setLocationAwareness(com.mopub.common.LocationService.LocationAwareness locationawareness)
    {
        MoPub.setLocationAwareness(locationawareness.getNewLocationAwareness());
    }

    public void setLocationPrecision(int i)
    {
        MoPub.setLocationPrecision(i);
    }

    public void setTesting(boolean flag)
    {
        a.setTesting(flag);
    }

    public boolean show()
    {
        class _cls1
        {

            static final int a[];

            static 
            {
                a = new int[ad.values().length];
                try
                {
                    a[ad.CUSTOM_EVENT_AD_READY.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
            }
        }

        switch (_cls1.a[f.ordinal()])
        {
        default:
            return false;

        case 1: // '\001'
            e();
            break;
        }
        return true;
    }

    private class MoPubInterstitialView extends MoPubView
    {

        final MoPubInterstitial a;

        protected void a()
        {
            MoPubLog.d("Tracking impression for interstitial.");
            if (b != null)
            {
                b.i();
            }
        }

        protected void a(MoPubErrorCode mopuberrorcode)
        {
            if (MoPubInterstitial.b(a) != null)
            {
                MoPubInterstitial.b(a).onInterstitialFailed(a, mopuberrorcode);
            }
        }

        protected void a(Map map)
        {
            if (map == null)
            {
                MoPubLog.d("Couldn't invoke custom event because the server did not specify one.");
                b(MoPubErrorCode.ADAPTER_NOT_FOUND);
                return;
            }
            if (MoPubInterstitial.a(a) != null)
            {
                MoPubInterstitial.a(a).c();
            }
            MoPubLog.d("Loading custom event interstitial adapter.");
            MoPubInterstitial.a(a, CustomEventInterstitialAdapterFactory.create(a, (String)map.get(ResponseHeader.CUSTOM_EVENT_NAME.getKey()), (String)map.get(ResponseHeader.CUSTOM_EVENT_DATA.getKey())));
            MoPubInterstitial.a(a).a(a);
            MoPubInterstitial.a(a).a();
        }

        public MoPubInterstitialView(Context context)
        {
            a = MoPubInterstitial.this;
            super(context);
            setAutorefreshEnabled(false);
        }
    }


    private class InterstitialAdListener
    {

        public abstract void onInterstitialClicked(MoPubInterstitial mopubinterstitial);

        public abstract void onInterstitialDismissed(MoPubInterstitial mopubinterstitial);

        public abstract void onInterstitialFailed(MoPubInterstitial mopubinterstitial, MoPubErrorCode mopuberrorcode);

        public abstract void onInterstitialLoaded(MoPubInterstitial mopubinterstitial);

        public abstract void onInterstitialShown(MoPubInterstitial mopubinterstitial);
    }


    private class MoPubInterstitialListener
    {

        public abstract void OnInterstitialFailed();

        public abstract void OnInterstitialLoaded();
    }

}
