// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;

// Referenced classes of package com.google.android.gms.internal:
//            fx, cf, ch

public final class bv
{

    public static boolean a(Context context, cf cf1, ch ch1)
    {
        if (cf1 == null)
        {
            fx.e("No intent data for launcher overlay.");
            return false;
        }
        Intent intent = new Intent();
        if (TextUtils.isEmpty(cf1.c))
        {
            fx.e("Open GMSG did not contain a URL.");
            return false;
        }
        if (!TextUtils.isEmpty(cf1.d))
        {
            intent.setDataAndType(Uri.parse(cf1.c), cf1.d);
        } else
        {
            intent.setData(Uri.parse(cf1.c));
        }
        intent.setAction("android.intent.action.VIEW");
        if (!TextUtils.isEmpty(cf1.e))
        {
            intent.setPackage(cf1.e);
        }
        if (!TextUtils.isEmpty(cf1.f))
        {
            String as[] = cf1.f.split("/", 2);
            if (as.length < 2)
            {
                fx.e((new StringBuilder()).append("Could not parse component name from open GMSG: ").append(cf1.f).toString());
                return false;
            }
            intent.setClassName(as[0], as[1]);
        }
        try
        {
            fx.d((new StringBuilder()).append("Launching an intent: ").append(intent).toString());
            context.startActivity(intent);
            ch1.q();
        }
        catch (ActivityNotFoundException activitynotfoundexception)
        {
            fx.e(activitynotfoundexception.getMessage());
            return false;
        }
        return true;
    }
}
