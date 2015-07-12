// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.ads.internal.action;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.util.Log;
import com.facebook.ads.VideoAdActivity;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.facebook.ads.internal.action:
//            AppAdAction

public class VideoAppAdAction extends AppAdAction
{

    private static final String TAG = com/facebook/ads/internal/action/VideoAppAdAction.getSimpleName();
    private final Context context;
    private final Uri uri;

    public VideoAppAdAction(Context context1, Uri uri1)
    {
        super(context1, uri1);
        context = context1;
        uri = uri1;
    }

    private static void addMapToIntentExtras(Map map, Intent intent)
    {
        java.util.Map.Entry entry;
        for (Iterator iterator = map.entrySet().iterator(); iterator.hasNext(); intent.putExtra((String)entry.getKey(), (String)entry.getValue()))
        {
            entry = (java.util.Map.Entry)iterator.next();
        }

    }

    public void execute(Map map)
    {
        logAdClick(context, uri);
        String s = uri.getQueryParameter("video_url");
        Intent intent = new Intent(context, com/facebook/ads/VideoAdActivity);
        intent.putExtra("adUri", uri.toString());
        intent.putExtra("adVideoPath", s);
        intent.putExtra("adMarketUri", getMarketUri().toString());
        addMapToIntentExtras(map, intent);
        try
        {
            context.startActivity(intent);
            return;
        }
        catch (Exception exception)
        {
            Log.d(TAG, "Failed to start video", exception);
        }
    }

}
