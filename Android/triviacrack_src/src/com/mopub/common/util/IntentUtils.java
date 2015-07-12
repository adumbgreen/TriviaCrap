// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.common.util;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import com.mopub.common.logging.MoPubLog;
import java.util.List;

public class IntentUtils
{

    private IntentUtils()
    {
    }

    private static boolean a(String s)
    {
        if (s != null)
        {
            Uri uri = Uri.parse(s);
            String s1 = uri.getScheme();
            String s2 = uri.getHost();
            if ("play.google.com".equals(s2) || "market.android.com".equals(s2))
            {
                return true;
            }
            if ("market".equals(s1))
            {
                return true;
            }
        }
        return false;
    }

    public static boolean canHandleApplicationUrl(Context context, String s)
    {
        return canHandleApplicationUrl(context, s, true);
    }

    public static boolean canHandleApplicationUrl(Context context, String s, boolean flag)
    {
        if (!deviceCanHandleIntent(context, new Intent("android.intent.action.VIEW", Uri.parse(s))))
        {
            if (flag)
            {
                MoPubLog.w((new StringBuilder()).append("Could not handle application specific action: ").append(s).append(". ").append("You may be running in the emulator or another device which does not ").append("have the required application.").toString());
            }
            return false;
        } else
        {
            return true;
        }
    }

    public static boolean canHandleTwitterUrl(Context context)
    {
        return canHandleApplicationUrl(context, "twitter://timeline", false);
    }

    public static boolean deviceCanHandleIntent(Context context, Intent intent)
    {
        boolean flag;
        boolean flag1;
        try
        {
            flag = context.getPackageManager().queryIntentActivities(intent, 0).isEmpty();
        }
        catch (NullPointerException nullpointerexception)
        {
            return false;
        }
        flag1 = false;
        if (!flag)
        {
            flag1 = true;
        }
        return flag1;
    }

    public static Intent getStartActivityIntent(Context context, Class class1, Bundle bundle)
    {
        Intent intent = new Intent(context, class1);
        if (!(context instanceof Activity))
        {
            intent.addFlags(0x10000000);
        }
        if (bundle != null)
        {
            intent.putExtras(bundle);
        }
        return intent;
    }

    public static boolean isDeepLink(String s)
    {
        return a(s) || !isHttpUrl(s);
    }

    public static boolean isHttpUrl(String s)
    {
        String s1;
        if (s != null)
        {
            if ("http".equals(s1 = Uri.parse(s).getScheme()) || "https".equals(s1))
            {
                return true;
            }
        }
        return false;
    }
}
