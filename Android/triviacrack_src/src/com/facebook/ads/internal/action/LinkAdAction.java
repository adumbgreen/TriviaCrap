// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.ads.internal.action;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.util.Log;
import java.util.Map;

// Referenced classes of package com.facebook.ads.internal.action:
//            AdAction

public class LinkAdAction extends AdAction
{

    private static final String TAG = com/facebook/ads/internal/action/LinkAdAction.getSimpleName();
    private final Context context;
    private final Uri uri;

    public LinkAdAction(Context context1, Uri uri1)
    {
        context = context1;
        uri = uri1;
    }

    public void execute(Map map)
    {
        logAdClick(context, uri);
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(uri.getQueryParameter("link")));
        try
        {
            context.startActivity(intent);
            return;
        }
        catch (Exception exception)
        {
            Log.d(TAG, (new StringBuilder()).append("Failed to open market url: ").append(uri.toString()).toString(), exception);
        }
    }

}
