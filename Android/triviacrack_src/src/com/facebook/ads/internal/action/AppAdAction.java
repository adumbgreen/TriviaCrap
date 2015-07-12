// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.ads.internal.action;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.util.Log;
import com.facebook.ads.internal.AdInvalidationUtils;
import com.facebook.ads.internal.AppSiteData;
import com.facebook.ads.internal.StringUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.facebook.ads.internal.action:
//            AdAction

public class AppAdAction extends AdAction
{

    private static final String MARKET_DETAIL_URI_FORMAT = "market://details?id=%s";
    private static final String TAG = com/facebook/ads/internal/action/AppAdAction.getSimpleName();
    private final Context context;
    private final Uri uri;

    public AppAdAction(Context context1, Uri uri1)
    {
        context = context1;
        uri = uri1;
    }

    private Intent getAppLaunchIntent(AppSiteData appsitedata)
    {
        Intent intent;
        List list;
label0:
        {
            if (StringUtils.isNullOrEmpty(appsitedata.getPackageName()))
            {
                return null;
            }
            if (!AdInvalidationUtils.isNativePackageInstalled(context, appsitedata.getPackageName()))
            {
                return null;
            }
            String s = appsitedata.getAppLinkUri();
            if (!StringUtils.isNullOrEmpty(s) && (s.startsWith("tel:") || s.startsWith("telprompt:")))
            {
                return new Intent("android.intent.action.CALL", Uri.parse(s));
            }
            PackageManager packagemanager = context.getPackageManager();
            if (StringUtils.isNullOrEmpty(appsitedata.getClassName()) && StringUtils.isNullOrEmpty(s))
            {
                return packagemanager.getLaunchIntentForPackage(appsitedata.getPackageName());
            }
            intent = getAppLinkIntentUnresolved(appsitedata);
            list = packagemanager.queryIntentActivities(intent, 0x10000);
            if (intent.getComponent() != null)
            {
                break label0;
            }
            Iterator iterator = list.iterator();
            ResolveInfo resolveinfo;
            do
            {
                if (!iterator.hasNext())
                {
                    break label0;
                }
                resolveinfo = (ResolveInfo)iterator.next();
            } while (!resolveinfo.activityInfo.packageName.equals(appsitedata.getPackageName()));
            intent.setComponent(new ComponentName(resolveinfo.activityInfo.packageName, resolveinfo.activityInfo.name));
        }
        if (list.isEmpty() || intent.getComponent() == null)
        {
            return null;
        } else
        {
            return intent;
        }
    }

    private Intent getAppLinkIntentUnresolved(AppSiteData appsitedata)
    {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.addFlags(0x10000000);
        if (!StringUtils.isNullOrEmpty(appsitedata.getPackageName()) && !StringUtils.isNullOrEmpty(appsitedata.getClassName()))
        {
            intent.setComponent(new ComponentName(appsitedata.getPackageName(), appsitedata.getClassName()));
        }
        if (!StringUtils.isNullOrEmpty(appsitedata.getAppLinkUri()))
        {
            intent.setData(Uri.parse(appsitedata.getAppLinkUri()));
        }
        return intent;
    }

    private List getAppsiteDatas()
    {
        String s = uri.getQueryParameter("appsite_data");
        if (!StringUtils.isNullOrEmpty(s) && !"[]".equals(s)) goto _L2; else goto _L1
_L1:
        Object obj = null;
_L6:
        return ((List) (obj));
_L2:
        obj = new ArrayList();
        JSONArray jsonarray;
        int i;
        AppSiteData appsitedata;
        try
        {
            jsonarray = (new JSONObject(s)).optJSONArray("android");
        }
        catch (JSONException jsonexception)
        {
            Log.w(TAG, "Error parsing appsite_data", jsonexception);
            return ((List) (obj));
        }
        if (jsonarray == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        i = 0;
        if (i >= jsonarray.length())
        {
            continue; /* Loop/switch isn't completed */
        }
        appsitedata = AppSiteData.fromJSONObject(jsonarray.optJSONObject(i));
        if (appsitedata == null)
        {
            break MISSING_BLOCK_LABEL_97;
        }
        ((List) (obj)).add(appsitedata);
        i++;
        if (true) goto _L4; else goto _L3
_L3:
        break MISSING_BLOCK_LABEL_99;
_L4:
        break MISSING_BLOCK_LABEL_61;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public void execute(Map map)
    {
        logAdClick(context, uri);
        List list = getAppLaunchIntents();
        if (list != null)
        {
            for (Iterator iterator = list.iterator(); iterator.hasNext();)
            {
                Intent intent = (Intent)iterator.next();
                try
                {
                    context.startActivity(intent);
                    return;
                }
                catch (Exception exception)
                {
                    Log.d(TAG, "Failed to open app intent, falling back", exception);
                }
            }

        }
        goToMarketURL();
    }

    protected List getAppLaunchIntents()
    {
        List list = getAppsiteDatas();
        ArrayList arraylist = new ArrayList();
        if (list != null)
        {
            Iterator iterator = list.iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                Intent intent = getAppLaunchIntent((AppSiteData)iterator.next());
                if (intent != null)
                {
                    arraylist.add(intent);
                }
            } while (true);
        }
        return arraylist;
    }

    protected Uri getMarketUri()
    {
        return Uri.parse(String.format("market://details?id=%s", new Object[] {
            uri.getQueryParameter("store_id")
        }));
    }

    public void goToMarketURL()
    {
        Intent intent = new Intent("android.intent.action.VIEW", getMarketUri());
        context.startActivity(intent);
_L1:
        return;
        Exception exception;
        exception;
        Log.d(TAG, (new StringBuilder()).append("Failed to open market url: ").append(uri.toString()).toString(), exception);
        String s = uri.getQueryParameter("store_url_web_fallback");
        if (s != null && s.length() > 0)
        {
            Intent intent1 = new Intent("android.intent.action.VIEW", Uri.parse(s));
            try
            {
                context.startActivity(intent1);
                return;
            }
            catch (Exception exception1)
            {
                Log.d(TAG, (new StringBuilder()).append("Failed to open fallback url: ").append(s).toString(), exception1);
            }
            return;
        }
          goto _L1
    }

}
