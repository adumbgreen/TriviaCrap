// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.ads.internal.action;

import android.content.Context;
import android.net.Uri;
import com.facebook.ads.internal.AdUtilities;
import com.facebook.ads.internal.OpenUrlTask;
import com.facebook.ads.internal.StringUtils;
import java.util.Map;

public abstract class AdAction
{

    public AdAction()
    {
    }

    public abstract void execute(Map map);

    protected void logAdClick(Context context, Uri uri)
    {
        String s = uri.getQueryParameter("native_click_report_url");
        if (StringUtils.isNullOrEmpty(s))
        {
            return;
        } else
        {
            (new OpenUrlTask()).execute(new String[] {
                s
            });
            AdUtilities.displayDebugMessage(context, "Click logged");
            return;
        }
    }
}
