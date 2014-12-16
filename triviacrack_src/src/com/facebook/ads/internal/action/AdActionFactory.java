// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.ads.internal.action;

import android.content.Context;
import android.net.Uri;

// Referenced classes of package com.facebook.ads.internal.action:
//            VideoAppAdAction, AppAdAction, LinkAdAction, AdAction

public class AdActionFactory
{

    private static final String AD_ACTION_APP_AD = "store";
    private static final String AD_ACTION_LINK_AD = "open_link";

    public AdActionFactory()
    {
    }

    public static AdAction getAdAction(Context context, Uri uri)
    {
        String s = uri.getAuthority();
        String s1 = uri.getQueryParameter("video_url");
        if ("store".equals(s))
        {
            if (s1 != null)
            {
                return new VideoAppAdAction(context, uri);
            } else
            {
                return new AppAdAction(context, uri);
            }
        }
        if ("open_link".equals(s))
        {
            return new LinkAdAction(context, uri);
        } else
        {
            return null;
        }
    }
}
