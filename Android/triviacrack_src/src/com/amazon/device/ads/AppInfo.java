// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import org.json.JSONObject;

// Referenced classes of package com.amazon.device.ads:
//            JSONUtils

class AppInfo
{

    private String applicationLabel;
    private JSONObject packageInfoUrlJSON;
    private String packageName;
    private String versionCode;
    private String versionName;

    protected AppInfo()
    {
    }

    public AppInfo(Context context)
    {
        PackageManager packagemanager;
        packageName = context.getPackageName();
        packagemanager = context.getPackageManager();
        applicationLabel = (String)packagemanager.getApplicationLabel(context.getApplicationInfo());
        PackageInfo packageinfo1 = packagemanager.getPackageInfo(packageName, 0);
        PackageInfo packageinfo = packageinfo1;
_L1:
        android.content.pm.PackageManager.NameNotFoundException namenotfoundexception;
        String s;
        String s1;
        if (packageinfo != null)
        {
            s = packageinfo.versionName;
        } else
        {
            s = "";
        }
        versionName = s;
        if (packageinfo != null)
        {
            s1 = Integer.toString(packageinfo.versionCode);
        } else
        {
            s1 = "";
        }
        versionCode = s1;
        packageInfoUrlJSON = new JSONObject();
        JSONUtils.put(packageInfoUrlJSON, "lbl", applicationLabel);
        JSONUtils.put(packageInfoUrlJSON, "pn", packageName);
        JSONUtils.put(packageInfoUrlJSON, "v", versionCode);
        JSONUtils.put(packageInfoUrlJSON, "vn", versionName);
        return;
        namenotfoundexception;
        packageinfo = null;
          goto _L1
    }

    public JSONObject getPackageInfoJSON()
    {
        return packageInfoUrlJSON;
    }

    public String getPackageInfoJSONString()
    {
        if (packageInfoUrlJSON != null)
        {
            return packageInfoUrlJSON.toString();
        } else
        {
            return null;
        }
    }
}
