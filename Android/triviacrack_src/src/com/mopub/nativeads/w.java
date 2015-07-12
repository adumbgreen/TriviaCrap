// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.nativeads;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.mopub.common.logging.MoPubLog;
import java.util.WeakHashMap;

// Referenced classes of package com.mopub.nativeads:
//            MoPubNativeAdRenderer, NativeResponse, o, ViewBinder

class w
{

    static final WeakHashMap a = new WeakHashMap();
    private static final WeakHashMap b = new WeakHashMap();

    static View a(View view, ViewGroup viewgroup, Context context, NativeResponse nativeresponse, ViewBinder viewbinder, MoPubNative.MoPubNativeListener mopubnativelistener)
    {
        if (viewbinder == null)
        {
            MoPubLog.d("ViewBinder is null, returning empty view.");
            return new View(context);
        }
        MoPubNativeAdRenderer mopubnativeadrenderer = new MoPubNativeAdRenderer(viewbinder);
        if (view == null)
        {
            view = mopubnativeadrenderer.createAdView(context, viewgroup);
        }
        a(context, view);
        if (nativeresponse == null)
        {
            MoPubLog.d("NativeResponse is null, returning hidden view.");
            view.setVisibility(8);
            return view;
        }
        if (nativeresponse.isDestroyed())
        {
            MoPubLog.d("NativeResponse is destroyed, returning hidden view.");
            view.setVisibility(8);
            return view;
        } else
        {
            a(context, view, nativeresponse);
            mopubnativeadrenderer.renderAdView(view, nativeresponse);
            return view;
        }
    }

    private static o a(Context context)
    {
        o o1 = (o)a.get(context);
        if (o1 == null)
        {
            o1 = new o(context);
            a.put(context, o1);
        }
        return o1;
    }

    private static void a(Context context, View view)
    {
        a(context).a(view);
        NativeResponse nativeresponse = (NativeResponse)b.get(view);
        if (nativeresponse != null)
        {
            nativeresponse.clear(view);
        }
    }

    private static void a(Context context, View view, NativeResponse nativeresponse)
    {
        b.put(view, nativeresponse);
        if (!nativeresponse.isOverridingImpressionTracker())
        {
            a(context).a(view, nativeresponse);
        }
        nativeresponse.prepare(view);
    }

}
