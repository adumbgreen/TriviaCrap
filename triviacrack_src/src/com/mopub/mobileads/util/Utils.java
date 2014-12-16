// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads.util;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.mopub.common.logging.MoPubLog;

public class Utils
{

    private Utils()
    {
    }

    public static boolean executeIntent(Context context, Intent intent, String s)
    {
        try
        {
            if (!(context instanceof Activity))
            {
                intent.addFlags(0x10000000);
            }
            context.startActivity(intent);
        }
        catch (Exception exception)
        {
            if (s == null)
            {
                s = "Unable to start intent.";
            }
            MoPubLog.d(s);
            return false;
        }
        return true;
    }
}
