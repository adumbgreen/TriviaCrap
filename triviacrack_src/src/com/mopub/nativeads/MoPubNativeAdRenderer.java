// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.nativeads;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.mopub.common.logging.MoPubLog;
import java.util.WeakHashMap;

// Referenced classes of package com.mopub.nativeads:
//            MoPubAdRenderer, ab, ViewBinder, NativeResponse

public class MoPubNativeAdRenderer
    implements MoPubAdRenderer
{

    private final ViewBinder a;
    private final WeakHashMap b = new WeakHashMap();

    public MoPubNativeAdRenderer(ViewBinder viewbinder)
    {
        a = viewbinder;
    }

    private void a(View view, ab ab1, NativeResponse nativeresponse, ViewBinder viewbinder)
    {
        ab1.a(nativeresponse);
        ab1.a(view, nativeresponse, viewbinder);
    }

    ab a(View view, ViewBinder viewbinder)
    {
        ab ab1 = (ab)b.get(view);
        if (ab1 == null)
        {
            ab1 = ab.a(view, viewbinder);
            b.put(view, ab1);
        }
        return ab1;
    }

    public View createAdView(Context context, ViewGroup viewgroup)
    {
        return LayoutInflater.from(context).inflate(a.a, viewgroup, false);
    }

    public void renderAdView(View view, NativeResponse nativeresponse)
    {
        ab ab1 = a(view, a);
        if (ab1 == null)
        {
            MoPubLog.d("Could not create NativeViewHolder.");
            return;
        } else
        {
            a(view, ab1, nativeresponse, a);
            view.setVisibility(0);
            return;
        }
    }

    public volatile void renderAdView(View view, Object obj)
    {
        renderAdView(view, (NativeResponse)obj);
    }
}
