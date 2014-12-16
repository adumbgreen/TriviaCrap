// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;

import com.amazon.device.ads.AdRegistration;
import com.etermax.a.a;

public class AmazonCustomCommon
{

    private static boolean a = false;

    private AmazonCustomCommon()
    {
    }

    public static void init(String s, boolean flag)
    {
        if (a)
        {
            return;
        }
        com.etermax.a.a.c("MoPub", (new StringBuilder()).append("Amazon Ads - Initializing (").append(s).append(")").toString());
        if (flag)
        {
            com.etermax.a.a.c("MoPub", "Amazon Ads - Enabling test mode");
            AdRegistration.enableTesting(true);
        }
        AdRegistration.setAppKey(s);
        a = true;
    }

}
