// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.ads.internal;

import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

public class AppSiteData
{

    private final String appLinkUri;
    private final String className;
    private final String fallbackUrl;
    private final List keyHashes;
    private final String marketUri;
    private final String packageName;

    private AppSiteData(String s, String s1, String s2, List list, String s3, String s4)
    {
        packageName = s;
        className = s1;
        appLinkUri = s2;
        keyHashes = list;
        marketUri = s3;
        fallbackUrl = s4;
    }

    public static AppSiteData fromJSONObject(JSONObject jsonobject)
    {
        if (jsonobject == null)
        {
            return null;
        }
        String s = jsonobject.optString("package");
        String s1 = jsonobject.optString("appsite");
        String s2 = jsonobject.optString("appsite_url");
        JSONArray jsonarray = jsonobject.optJSONArray("key_hashes");
        ArrayList arraylist = new ArrayList();
        if (jsonarray != null)
        {
            for (int i = 0; i < jsonarray.length(); i++)
            {
                arraylist.add(jsonarray.optString(i));
            }

        }
        return new AppSiteData(s, s1, s2, arraylist, jsonobject.optString("market_uri"), jsonobject.optString("fallback_url"));
    }

    public String getAppLinkUri()
    {
        return appLinkUri;
    }

    public String getClassName()
    {
        return className;
    }

    public String getFallbackUrl()
    {
        return fallbackUrl;
    }

    public List getKeyHashes()
    {
        return keyHashes;
    }

    public String getMarketUri()
    {
        return marketUri;
    }

    public String getPackageName()
    {
        return packageName;
    }
}
