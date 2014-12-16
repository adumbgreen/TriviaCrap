// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.support.v4.content.LocalBroadcastManager;

// Referenced classes of package com.mopub.mobileads:
//            MoPubErrorCode

class p extends BroadcastReceiver
{

    private static IntentFilter d;
    private final CustomEventInterstitial.CustomEventInterstitialListener a;
    private final long b;
    private Context c;

    public p(CustomEventInterstitial.CustomEventInterstitialListener customeventinterstitiallistener, long l)
    {
        a = customeventinterstitiallistener;
        b = l;
        d = a();
    }

    static IntentFilter a()
    {
        if (d == null)
        {
            d = new IntentFilter();
            d.addAction("com.mopub.action.interstitial.fail");
            d.addAction("com.mopub.action.interstitial.show");
            d.addAction("com.mopub.action.interstitial.dismiss");
            d.addAction("com.mopub.action.interstitial.click");
        }
        return d;
    }

    static void a(Context context, long l, String s)
    {
        Intent intent = new Intent(s);
        intent.putExtra("broadcastIdentifier", l);
        LocalBroadcastManager.getInstance(context.getApplicationContext()).sendBroadcast(intent);
    }

    public void onReceive(Context context, Intent intent)
    {
        long l;
        if (a != null)
        {
            if (b == (l = intent.getLongExtra("broadcastIdentifier", -1L)))
            {
                String s = intent.getAction();
                if ("com.mopub.action.interstitial.fail".equals(s))
                {
                    a.onInterstitialFailed(MoPubErrorCode.NETWORK_INVALID_STATE);
                    return;
                }
                if ("com.mopub.action.interstitial.show".equals(s))
                {
                    a.onInterstitialShown();
                    return;
                }
                if ("com.mopub.action.interstitial.dismiss".equals(s))
                {
                    a.onInterstitialDismissed();
                    unregister();
                    return;
                }
                if ("com.mopub.action.interstitial.click".equals(s))
                {
                    a.onInterstitialClicked();
                    return;
                }
            }
        }
    }

    public void register(Context context)
    {
        c = context;
        LocalBroadcastManager.getInstance(c).registerReceiver(this, d);
    }

    public void unregister()
    {
        if (c != null)
        {
            LocalBroadcastManager.getInstance(c).unregisterReceiver(this);
            c = null;
        }
    }
}
