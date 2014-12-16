// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;

import android.content.Context;
import android.net.Uri;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.amazon.device.ads:
//            AdWebViewClient, Log, WebUtils, AmazonDeviceLauncher

class context
    implements context
{

    private final Context context;

    public boolean execute(String s)
    {
        specialUrlClicked(s);
        return true;
    }

    protected void handleApplicationDefinedSpecialURL(String s)
    {
        Log.i(AdWebViewClient.access$100(), "Special url clicked, but was not handled by SDK. Url: %s", new Object[] {
            s
        });
    }

    protected boolean launchExternalActivity(String s)
    {
        return WebUtils.launchActivityForIntentLink(s, context);
    }

    public void specialUrlClicked(String s)
    {
        Uri uri;
        Log.d(AdWebViewClient.access$100(), "Executing AmazonMobile Intent");
        uri = Uri.parse(s);
        List list;
        Iterator iterator;
        List list1;
        try
        {
            list1 = uri.getQueryParameters("intent");
        }
        catch (UnsupportedOperationException unsupportedoperationexception)
        {
            list = null;
            continue; /* Loop/switch isn't completed */
        }
        list = list1;
_L11:
        if (list == null || list.size() <= 0) goto _L2; else goto _L1
_L1:
        iterator = list.iterator();
_L6:
        if (!iterator.hasNext()) goto _L4; else goto _L3
_L3:
        if (!launchExternalActivity((String)iterator.next())) goto _L6; else goto _L5
_L5:
        return;
_L4:
        handleApplicationDefinedSpecialURL(s);
        return;
_L2:
        String s1;
        if (!AmazonDeviceLauncher.isWindowshopPresent(context))
        {
            break MISSING_BLOCK_LABEL_231;
        }
        if (!uri.getHost().equals("shopping"))
        {
            continue; /* Loop/switch isn't completed */
        }
        s1 = uri.getQueryParameter("app-action");
        if (s1 == null || s1.length() == 0)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (!s1.equals("detail"))
        {
            break; /* Loop/switch isn't completed */
        }
        String s3 = uri.getQueryParameter("asin");
        if (s3 != null && s3.length() != 0)
        {
            AmazonDeviceLauncher.launchWindowshopDetailPage(context, s3);
            return;
        }
        if (true) goto _L5; else goto _L7
_L7:
        String s2;
        if (!s1.equals("search"))
        {
            continue; /* Loop/switch isn't completed */
        }
        s2 = uri.getQueryParameter("keyword");
        if (s2 == null || s2.length() == 0) goto _L5; else goto _L8
_L8:
        AmazonDeviceLauncher.launchWindowshopSearchPage(context, s2);
        return;
        if (!s1.equals("webview")) goto _L5; else goto _L9
_L9:
        handleApplicationDefinedSpecialURL(s);
        return;
        handleApplicationDefinedSpecialURL(s);
        return;
        if (true) goto _L11; else goto _L10
_L10:
    }

    (Context context1)
    {
        context = context1;
    }
}
