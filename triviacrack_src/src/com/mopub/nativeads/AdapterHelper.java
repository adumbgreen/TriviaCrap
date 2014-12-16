// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.nativeads;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.mopub.common.logging.MoPubLog;
import java.lang.ref.WeakReference;

// Referenced classes of package com.mopub.nativeads:
//            w, NativeResponse, ViewBinder

public final class AdapterHelper
{

    private final WeakReference a;
    private final Context b;
    private final int c;
    private final int d;

    public AdapterHelper(Context context, int i, int j)
    {
        if (context == null)
        {
            throw new IllegalArgumentException("Illegal argument: Context was null.");
        }
        if (!(context instanceof Activity))
        {
            throw new IllegalArgumentException("Illegal argument: Context must be instance of Activity.");
        }
        if (i < 0)
        {
            throw new IllegalArgumentException("Illegal argument: negative starting position.");
        }
        if (j < 2)
        {
            throw new IllegalArgumentException("Illegal argument: interval must be at least 2.");
        } else
        {
            a = new WeakReference((Activity)context);
            b = context.getApplicationContext();
            c = i;
            d = j;
            return;
        }
    }

    private int a(int i)
    {
        if (i <= c)
        {
            return 0;
        } else
        {
            return 1 + (int)Math.floor((double)(i - c) / (double)d);
        }
    }

    private int b(int i)
    {
        if (i <= c)
        {
            return 0;
        }
        int j = -1 + d;
        if ((i - c) % j == 0)
        {
            return (i - c) / j;
        } else
        {
            return 1 + (int)Math.floor((double)(i - c) / (double)j);
        }
    }

    public View getAdView(View view, ViewGroup viewgroup, NativeResponse nativeresponse, ViewBinder viewbinder, MoPubNative.MoPubNativeListener mopubnativelistener)
    {
        Activity activity = (Activity)a.get();
        if (activity == null)
        {
            MoPubLog.d("Weak reference to Activity Context in AdapterHelper became null. Returning empty view.");
            return new View(b);
        } else
        {
            return w.a(view, viewgroup, activity, nativeresponse, viewbinder, mopubnativelistener);
        }
    }

    public boolean isAdPosition(int i)
    {
        while (i < c || (i - c) % d != 0) 
        {
            return false;
        }
        return true;
    }

    public int shiftedCount(int i)
    {
        return i + b(i);
    }

    public int shiftedPosition(int i)
    {
        return i - a(i);
    }
}
