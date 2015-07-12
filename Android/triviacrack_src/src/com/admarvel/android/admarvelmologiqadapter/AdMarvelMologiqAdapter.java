// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.admarvelmologiqadapter;

import android.content.Context;
import com.admarvel.android.ads.AdMarvelAnalyticsAdapter;
import com.mologiq.analytics.s;
import java.lang.ref.WeakReference;
import java.util.Map;

public class AdMarvelMologiqAdapter extends AdMarvelAnalyticsAdapter
{

    private final WeakReference contextReference;

    public AdMarvelMologiqAdapter(Context context)
    {
        super(context);
        contextReference = new WeakReference(context);
    }

    public String getAdapterAnalyticsVersion()
    {
        return "1.2.9 2014-07-08";
    }

    protected Map getEnhancedTargetParams(String s1, Map map)
    {
        Context context = (Context)contextReference.get();
        if (context != null)
        {
            return s.a(context).a(s1, map);
        } else
        {
            return null;
        }
    }

    protected void onAdClick(String s1, int i, Map map, String s2, String s3)
    {
        Context context = (Context)contextReference.get();
        if (context != null)
        {
            s.a(context).a(s1, i, map, s2, s3);
        }
    }

    protected void onFailedToReceiveAd(String s1, int i, Map map, String s2)
    {
        Context context = (Context)contextReference.get();
        if (context != null)
        {
            s.a(context).a(s1, i, map, s2);
        }
    }

    protected void onReceiveAd(String s1, int i, Map map, String s2)
    {
        Context context = (Context)contextReference.get();
        if (context != null)
        {
            s.a(context).b(s1, i, map, s2);
        }
    }

    protected void pause()
    {
        Context context = (Context)contextReference.get();
        if (context != null)
        {
            s.a(context).b();
        }
    }

    protected void resume()
    {
        Context context = (Context)contextReference.get();
        if (context != null)
        {
            s.a(context).a();
        }
    }

    protected void start()
    {
        Context context = (Context)contextReference.get();
        if (context != null)
        {
            s.a(context).c();
        }
    }

    protected void stop()
    {
        Context context = (Context)contextReference.get();
        if (context != null)
        {
            s.a(context).d();
        }
    }
}
