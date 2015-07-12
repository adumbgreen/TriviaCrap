// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mdotm.android.vast;

import android.content.Intent;
import android.net.Uri;
import com.mdotm.android.c.a;
import com.mdotm.android.e.d;

// Referenced classes of package com.mdotm.android.vast:
//            VastInterstitialActivity

class b extends Thread
{

    final VastInterstitialActivity a;
    private final String b;

    public void run()
    {
        a.c();
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(b));
        intent.addFlags(0x10000000);
        try
        {
            a.startActivity(intent);
        }
        catch (Exception exception)
        {
            d.b(this, (new StringBuilder("Could not open browser on ad click to ")).append(exception).toString());
        }
        if (VastInterstitialActivity.f(a) != null)
        {
            VastInterstitialActivity.f(a).b();
        }
    }

    (VastInterstitialActivity vastinterstitialactivity, String s)
    {
        a = vastinterstitialactivity;
        b = s;
        super();
    }
}
