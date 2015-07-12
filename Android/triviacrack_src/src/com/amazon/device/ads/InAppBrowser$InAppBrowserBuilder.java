// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;

import android.content.Context;
import android.content.Intent;

// Referenced classes of package com.amazon.device.ads:
//            StringUtils, Assets, Log, AdActivity, 
//            InAppBrowser

public class 
{

    private static final String LOGTAG = com/amazon/device/ads/InAppBrowser$InAppBrowserBuilder.getSimpleName();
    private Context context;
    private boolean showOpenExternalBrowserButton;
    private String url;

    public void show()
    {
        if (context == null)
        {
            throw new IllegalArgumentException("Context must not be null");
        }
        if (StringUtils.isNullOrWhiteSpace(url))
        {
            throw new IllegalArgumentException("Url must not be null or white space");
        }
        if (!Assets.getInstance().ensureAssetsCreated())
        {
            String s = LOGTAG;
            Object aobj[] = new Object[1];
            aobj[0] = url;
            Log.e(s, "Could not load application assets, failed to open URI: %s", aobj);
            return;
        } else
        {
            Intent intent = new Intent(context, com/amazon/device/ads/AdActivity);
            intent.putExtra("adapter", com/amazon/device/ads/InAppBrowser.getName());
            intent.putExtra("extra_url", url);
            intent.putExtra("extra_open_btn", showOpenExternalBrowserButton);
            intent.addFlags(0x10000000);
            context.startActivity(intent);
            return;
        }
    }

    public context withContext(Context context1)
    {
        context = context1;
        return this;
    }

    public context withExternalBrowserButton()
    {
        showOpenExternalBrowserButton = true;
        return this;
    }

    public showOpenExternalBrowserButton withUrl(String s)
    {
        url = s;
        return this;
    }


    public ()
    {
    }
}
