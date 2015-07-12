// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.nativeads;

import android.content.Context;
import android.view.View;
import com.mopub.common.logging.MoPubLog;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.mopub.nativeads:
//            t, i, b, l, 
//            NativeErrorCode

abstract class a
    implements t
{

    private b a;
    private String b;
    private String c;
    private String d;
    private String e;
    private String f;
    private String g;
    private Double h;
    private final Set i = new HashSet();
    private int j;
    private final Map k = new HashMap();
    private boolean l;
    private boolean m;

    a()
    {
        j = 1000;
    }

    static void a(Context context, List list, CustomEventNative.ImageListener imagelistener)
    {
        com.mopub.nativeads.i.a(context, list, new l(imagelistener) {

            final CustomEventNative.ImageListener a;

            public void onFail()
            {
                a.onImagesFailedToCache(NativeErrorCode.IMAGE_DOWNLOAD_FAILURE);
            }

            public void onSuccess(Map map)
            {
                a.onImagesCached();
            }

            
            {
                a = imagelistener;
                super();
            }
        });
    }

    final void a(Double double1)
    {
        if (double1 == null)
        {
            h = null;
            return;
        }
        if (double1.doubleValue() >= 0.0D && double1.doubleValue() <= 5D)
        {
            h = double1;
            return;
        } else
        {
            MoPubLog.d((new StringBuilder()).append("Ignoring attempt to set invalid star rating (").append(double1).append("). Must be ").append("between ").append(0.0D).append(" and ").append(5D).append(".").toString());
            return;
        }
    }

    final void a(String s)
    {
        b = s;
    }

    final void a(String s, Object obj)
    {
        k.put(s, obj);
    }

    final void b(String s)
    {
        c = s;
    }

    final void c(String s)
    {
        d = s;
    }

    public void clear(View view)
    {
    }

    final void d(String s)
    {
        e = s;
    }

    public void destroy()
    {
    }

    final void e(String s)
    {
        f = s;
    }

    final void f(String s)
    {
        g = s;
    }

    final void g(String s)
    {
        i.add(s);
    }

    public final String getCallToAction()
    {
        return e;
    }

    public final String getClickDestinationUrl()
    {
        return d;
    }

    public final Object getExtra(String s)
    {
        return k.get(s);
    }

    public final Map getExtras()
    {
        return new HashMap(k);
    }

    public final String getIconImageUrl()
    {
        return c;
    }

    public final int getImpressionMinPercentageViewed()
    {
        return 50;
    }

    public final int getImpressionMinTimeViewed()
    {
        return j;
    }

    public final Set getImpressionTrackers()
    {
        return new HashSet(i);
    }

    public final String getMainImageUrl()
    {
        return b;
    }

    public final Double getStarRating()
    {
        return h;
    }

    public final String getText()
    {
        return g;
    }

    public final String getTitle()
    {
        return f;
    }

    public void handleClick(View view)
    {
    }

    public final boolean isOverridingClickTracker()
    {
        return l;
    }

    public final boolean isOverridingImpressionTracker()
    {
        return m;
    }

    public void prepare(View view)
    {
    }

    public void recordImpression()
    {
    }

    public final void setNativeEventListener(b b1)
    {
        a = b1;
    }
}
