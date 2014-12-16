// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.nativeads;

import android.content.Context;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.WeakHashMap;

// Referenced classes of package com.mopub.nativeads:
//            MoPubNativeAdPositioning, u, o, c, 
//            ae, ac, s, NativeResponse, 
//            MoPubNativeAdLoadedListener, MoPubAdRenderer, PositioningSource, RequestParameters, 
//            v

public class MoPubStreamAdPlacer
{

    public static final int CONTENT_VIEW_TYPE;
    private final Context a;
    private final Handler b;
    private final Runnable c;
    private final PositioningSource d;
    private final u e;
    private final o f;
    private final WeakHashMap g;
    private boolean h;
    private ac i;
    private boolean j;
    private boolean k;
    private ac l;
    private MoPubAdRenderer m;
    private String n;
    private MoPubNativeAdLoadedListener o;
    private int p;
    private int q;
    private int r;
    private boolean s;

    public MoPubStreamAdPlacer(Context context)
    {
        this(context, MoPubNativeAdPositioning.serverPositioning());
    }

    public MoPubStreamAdPlacer(Context context, MoPubNativeAdPositioning.MoPubClientPositioning mopubclientpositioning)
    {
        this(context, new u(), new o(context), ((PositioningSource) (new c(mopubclientpositioning))));
    }

    public MoPubStreamAdPlacer(Context context, MoPubNativeAdPositioning.MoPubServerPositioning mopubserverpositioning)
    {
        this(context, new u(), new o(context), ((PositioningSource) (new ae(context))));
    }

    MoPubStreamAdPlacer(Context context, u u1, o o1, PositioningSource positioningsource)
    {
        a = context;
        f = o1;
        d = positioningsource;
        e = u1;
        l = ac.a();
        g = new WeakHashMap();
        b = new Handler();
        c = new Runnable() {

            final MoPubStreamAdPlacer a;

            public void run()
            {
                if (!MoPubStreamAdPlacer.a(a))
                {
                    return;
                } else
                {
                    MoPubStreamAdPlacer.b(a);
                    MoPubStreamAdPlacer.a(a, false);
                    return;
                }
            }

            
            {
                a = MoPubStreamAdPlacer.this;
                super();
            }
        };
        p = 0;
        q = 0;
    }

    private s a(int i1, NativeResponse nativeresponse)
    {
        return new s(n, m, nativeresponse);
    }

    private void a(View view)
    {
        f.a(view);
        NativeResponse nativeresponse = (NativeResponse)g.get(view);
        if (nativeresponse != null)
        {
            nativeresponse.clear(view);
        }
    }

    private void a(NativeResponse nativeresponse, View view)
    {
        g.put(view, nativeresponse);
        if (!nativeresponse.isOverridingImpressionTracker())
        {
            f.a(view, nativeresponse);
        }
        nativeresponse.prepare(view);
    }

    private void a(ac ac1)
    {
        removeAdsInRange(0, r);
        l = ac1;
        c();
        k = true;
    }

    private boolean a(int i1)
    {
        NativeResponse nativeresponse = e.b();
        if (nativeresponse == null)
        {
            return false;
        }
        s s1 = a(i1, nativeresponse);
        l.a(i1, s1);
        r = 1 + r;
        if (o != null)
        {
            o.onAdLoaded(i1);
        }
        return true;
    }

    private boolean a(int i1, int j1)
    {
        int k1 = j1 - 1;
        do
        {
            if (i1 > k1 || i1 == -1 || i1 >= r)
            {
                return true;
            }
            if (l.a(i1))
            {
                if (!a(i1))
                {
                    return false;
                }
                k1++;
            }
            i1 = l.b(i1);
        } while (true);
    }

    static boolean a(MoPubStreamAdPlacer mopubstreamadplacer)
    {
        return mopubstreamadplacer.s;
    }

    static boolean a(MoPubStreamAdPlacer mopubstreamadplacer, boolean flag)
    {
        mopubstreamadplacer.s = flag;
        return flag;
    }

    private void b()
    {
        if (s)
        {
            return;
        } else
        {
            s = true;
            b.post(c);
            return;
        }
    }

    static void b(MoPubStreamAdPlacer mopubstreamadplacer)
    {
        mopubstreamadplacer.c();
    }

    private void c()
    {
        if (!a(p, q))
        {
            return;
        } else
        {
            a(q, 10 + q);
            return;
        }
    }

    void a()
    {
        if (k)
        {
            b();
            return;
        }
        if (h)
        {
            a(i);
        }
        j = true;
    }

    void a(MoPubNativeAdPositioning.MoPubClientPositioning mopubclientpositioning)
    {
        ac ac1 = ac.a(mopubclientpositioning);
        if (j)
        {
            a(ac1);
        } else
        {
            i = ac1;
        }
        h = true;
    }

    public void clearAds()
    {
        removeAdsInRange(0, r);
        e.a();
    }

    public void destroy()
    {
        b.removeMessages(0);
        e.a();
        f.b();
        l.c();
    }

    public Object getAdData(int i1)
    {
        return l.d(i1);
    }

    public View getAdView(int i1, View view, ViewGroup viewgroup)
    {
        if (!isAd(i1))
        {
            view = null;
        } else
        {
            s s1 = l.d(i1);
            MoPubAdRenderer mopubadrenderer = s1.a();
            NativeResponse nativeresponse;
            if (view == null)
            {
                view = mopubadrenderer.createAdView(a, viewgroup);
            }
            nativeresponse = s1.b();
            if (!nativeresponse.equals(g.get(view)))
            {
                a(view);
                a(nativeresponse, view);
                mopubadrenderer.renderAdView(view, nativeresponse);
                return view;
            }
        }
        return view;
    }

    public int getAdViewType(int i1)
    {
        return !isAd(i1) ? 0 : 1;
    }

    public int getAdViewTypeCount()
    {
        return 1;
    }

    public int getAdjustedCount(int i1)
    {
        return l.h(i1);
    }

    public int getAdjustedPosition(int i1)
    {
        return l.f(i1);
    }

    public int getOriginalCount(int i1)
    {
        return l.g(i1);
    }

    public int getOriginalPosition(int i1)
    {
        return l.e(i1);
    }

    public void insertItem(int i1)
    {
        l.i(i1);
    }

    public boolean isAd(int i1)
    {
        return l.c(i1);
    }

    public void loadAds(String s1)
    {
        loadAds(s1, null);
    }

    public void loadAds(String s1, RequestParameters requestparameters)
    {
        n = s1;
        k = false;
        h = false;
        j = false;
        d.loadPositions(s1, new PositioningSource.PositioningListener() {

            final MoPubStreamAdPlacer a;

            public void onFailed()
            {
            }

            public void onLoad(MoPubNativeAdPositioning.MoPubClientPositioning mopubclientpositioning)
            {
                a.a(mopubclientpositioning);
            }

            
            {
                a = MoPubStreamAdPlacer.this;
                super();
            }
        });
        e.a(new v() {

            final MoPubStreamAdPlacer a;

            public void onAdsAvailable()
            {
                a.a();
            }

            
            {
                a = MoPubStreamAdPlacer.this;
                super();
            }
        });
        e.a(a, s1, requestparameters);
    }

    public void moveItem(int i1, int j1)
    {
        l.b(i1, j1);
    }

    public void placeAdsInRange(int i1, int j1)
    {
        p = i1;
        q = Math.min(j1, i1 + 100);
        b();
    }

    public void registerAdRenderer(MoPubAdRenderer mopubadrenderer)
    {
        m = mopubadrenderer;
    }

    public int removeAdsInRange(int i1, int j1)
    {
        int ai[] = l.b();
        int k1 = l.f(i1);
        int l1 = l.f(j1);
        ArrayList arraylist = new ArrayList();
        int i2 = -1 + ai.length;
        while (i2 >= 0) 
        {
            int l2 = ai[i2];
            if (l2 >= k1 && l2 < l1)
            {
                arraylist.add(Integer.valueOf(l2));
                if (l2 < p)
                {
                    p = -1 + p;
                }
                r = -1 + r;
            }
            i2--;
        }
        int j2 = l.a(k1, l1);
        int k2;
        for (Iterator iterator = arraylist.iterator(); iterator.hasNext(); o.onAdRemoved(k2))
        {
            k2 = ((Integer)iterator.next()).intValue();
        }

        return j2;
    }

    public void removeItem(int i1)
    {
        l.j(i1);
    }

    public void setAdLoadedListener(MoPubNativeAdLoadedListener mopubnativeadloadedlistener)
    {
        o = mopubnativeadloadedlistener;
    }

    public void setItemCount(int i1)
    {
        r = l.h(i1);
        b();
    }
}
