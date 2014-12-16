// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.admob.amazon;

import com.amazon.device.ads.AdRegistration;
import com.etermax.a.a;

public class AmazonCustomCommon
{

    private static boolean isInitialized = false;

    private AmazonCustomCommon()
    {
    }

    public static void init(String s, boolean flag)
    {
        if (isInitialized)
        {
            return;
        }
        a.c("MoPub", (new StringBuilder()).append("Amazon Ads - Initializing (").append(s).append(")").toString());
        if (flag)
        {
            a.c("MoPub", "Amazon Ads - Enabling test mode");
            AdRegistration.enableTesting(true);
        }
        AdRegistration.setAppKey(s);
        isInitialized = true;
    }

}
