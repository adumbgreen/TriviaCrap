// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import com.admarvel.android.util.Logging;
import java.net.URISyntaxException;

// Referenced classes of package com.admarvel.android.ads:
//            ab, AdMarvelActivity

class t
{

    static boolean a(String s, Context context)
    {
        boolean flag = true;
        if (context == null || s == null)
        {
            flag = false;
        } else
        {
            Intent intent;
            try
            {
                intent = Intent.parseUri(s, 1);
            }
            catch (URISyntaxException urisyntaxexception)
            {
                Logging.log((new StringBuilder()).append("Bad URI ").append(s).append(": ").append(urisyntaxexception.getMessage()).toString());
                return false;
            }
            if (context.getPackageManager().resolveActivity(intent, 0) == null)
            {
                String s1 = intent.getPackage();
                if (s1 != null)
                {
                    Logging.log((new StringBuilder()).append(" going for market in shouldOverrideUrlLoading on internalwebview ").append(s1).toString());
                    Intent intent1 = new Intent("android.intent.action.VIEW", Uri.parse((new StringBuilder()).append("market://search?q=pname:").append(s1).toString()));
                    intent1.addFlags(0x10000000);
                    intent1.addCategory("android.intent.category.BROWSABLE");
                    if (ab.a(context, intent1))
                    {
                        context.startActivity(intent1);
                    }
                    if (context != null && (context instanceof Activity))
                    {
                        Activity activity = (Activity)context;
                        if (activity != null && (activity instanceof AdMarvelActivity))
                        {
                            AdMarvelActivity admarvelactivity = (AdMarvelActivity)activity;
                            if (admarvelactivity != null)
                            {
                                admarvelactivity.g();
                                return flag;
                            }
                        }
                    }
                } else
                {
                    return false;
                }
            } else
            {
                return false;
            }
        }
        return flag;
    }
}
