// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.admob.custom;

import android.content.Context;
import com.etermax.a.a;
import com.etermax.a.b;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class BaseAdEvent
{

    protected AppVersion appVersion;
    protected AppVersion minAppVersionSupported;
    protected JSONObject serverParameter;

    public BaseAdEvent()
    {
    }

    protected boolean adAvailable()
    {
        return appVersion.compareTo(minAppVersionSupported) >= 0;
    }

    protected JSONObject getAdData()
    {
        boolean flag = serverParameter.has("d");
        JSONObject jsonobject = null;
        if (flag)
        {
            JSONObject jsonobject1;
            try
            {
                jsonobject1 = serverParameter.getJSONObject("d");
            }
            catch (Exception exception)
            {
                a.a("ADMOB", "BaseAdEvent Exception", exception);
                return null;
            }
            jsonobject = jsonobject1;
        }
        return jsonobject;
    }

    protected void initialize(Context context, String s)
    {
        String s1;
        int i;
        try
        {
            serverParameter = new JSONObject(s);
            minAppVersionSupported = new AppVersion(serverParameter.optString("v"));
        }
        catch (JSONException jsonexception)
        {
            a.a("ADMOB", "BaseAdEvent Exception", jsonexception);
            minAppVersionSupported = new AppVersion("0");
        }
        s1 = b.d(context);
        i = s1.indexOf("RC");
        if (i <= 0) goto _L2; else goto _L1
_L1:
        s1 = s1.substring(0, i);
_L4:
        appVersion = new AppVersion(s1);
        return;
_L2:
        int j = s1.indexOf('-');
        if (j > 0)
        {
            s1 = s1.substring(0, j);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    private class AppVersion
        implements Comparable
    {

        final BaseAdEvent this$0;
        String versionName;

        public int compareTo(AppVersion appversion)
        {
            if (appversion != null) goto _L2; else goto _L1
_L1:
            int k = 1;
_L4:
            return k;
_L2:
            String as[] = get().split("\\.");
            String as1[] = appversion.get().split("\\.");
            int i = Math.max(as.length, as1.length);
            int j = 0;
            do
            {
                k = 0;
                if (j >= i)
                {
                    continue;
                }
                int l;
                int i1;
                if (j < as.length)
                {
                    l = Integer.parseInt(as[j]);
                } else
                {
                    l = 0;
                }
                if (j < as1.length)
                {
                    i1 = Integer.parseInt(as1[j]);
                } else
                {
                    i1 = 0;
                }
                if (l < i1)
                {
                    return -1;
                }
                if (l > i1)
                {
                    return 1;
                }
                j++;
            } while (true);
            if (true) goto _L4; else goto _L3
_L3:
        }

        public volatile int compareTo(Object obj)
        {
            return compareTo((AppVersion)obj);
        }

        public boolean equals(Object obj)
        {
            if (this != obj)
            {
                if (obj == null)
                {
                    return false;
                }
                if (getClass() != obj.getClass())
                {
                    return false;
                }
                if (compareTo((AppVersion)obj) != 0)
                {
                    return false;
                }
            }
            return true;
        }

        public String get()
        {
            return versionName;
        }

        public AppVersion(String s)
        {
            this$0 = BaseAdEvent.this;
            super();
            if (s == null || !s.matches("[0-9]+(\\.[0-9]+)*"))
            {
                versionName = "0";
                return;
            } else
            {
                versionName = s;
                return;
            }
        }
    }

}
