// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.adsinterface;

import android.content.Context;
import android.view.View;

// Referenced classes of package com.etermax.adsinterface:
//            AdBannerDefaultView

class a
    implements Runnable
{

    final Context a;
    final AdBannerDefaultView b;

    public void run()
    {
        if (AdBannerDefaultView.a(b) == null)
        {
            AdBannerDefaultView.a(b, AdBannerDefaultView.a(b, a));
            b.addView(AdBannerDefaultView.a(b), -1, -2);
        }
        AdBannerDefaultView.a(b).setVisibility(0);
    }

    (AdBannerDefaultView adbannerdefaultview, Context context)
    {
        b = adbannerdefaultview;
        a = context;
        super();
    }
}
