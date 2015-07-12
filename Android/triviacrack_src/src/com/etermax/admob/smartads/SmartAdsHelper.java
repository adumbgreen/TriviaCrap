// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.admob.smartads;

import com.etermax.a.a;
import org.json.JSONObject;

public class SmartAdsHelper
{

    private int formatId;
    private String pageId;
    private int siteId;

    public SmartAdsHelper(JSONObject jsonobject)
    {
        if (!jsonobject.has("sid"))
        {
            throw new Exception("Missing sid");
        }
        if (!jsonobject.has("pid"))
        {
            throw new Exception("Missing pid");
        }
        if (!jsonobject.has("fid"))
        {
            throw new Exception("Missing fid");
        } else
        {
            siteId = jsonobject.getInt("sid");
            pageId = jsonobject.getString("pid");
            formatId = jsonobject.getInt("fid");
            a.c("admob ads", (new StringBuilder()).append("SmartAdsHelper - siteId: ").append(siteId).append(", pageId: ").append(pageId).append(", formatId: ").append(formatId).toString());
            return;
        }
    }

    public int getFormatId()
    {
        return formatId;
    }

    public String getPageId()
    {
        return pageId;
    }

    public int getSiteId()
    {
        return siteId;
    }
}
