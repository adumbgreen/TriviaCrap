// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.ads.internal;

import org.json.JSONArray;

final class AdSdkCapability extends Enum
{

    private static final AdSdkCapability $VALUES[];
    public static final AdSdkCapability AD_CHOICES;
    public static final AdSdkCapability APP_AD;
    public static final AdSdkCapability APP_AD_V2;
    public static final AdSdkCapability APP_ENGAGEMENT_AD;
    public static final AdSdkCapability JS_TRIGGER;
    public static final AdSdkCapability JS_TRIGGER_NO_AUTO_IMP_LOGGING;
    public static final AdSdkCapability LINK_AD;
    public static final AdSdkCapability LINK_AD_V2;
    private static final AdSdkCapability supportedCapabilities[];
    private static final String supportedCapabilitiesStr;
    private final int value;

    private AdSdkCapability(String s, int i, int j)
    {
        super(s, i);
        value = j;
    }

    public static String getSupportedCapabilitiesAsJSONString()
    {
        return supportedCapabilitiesStr;
    }

    public static AdSdkCapability valueOf(String s)
    {
        return (AdSdkCapability)Enum.valueOf(com/facebook/ads/internal/AdSdkCapability, s);
    }

    public static AdSdkCapability[] values()
    {
        return (AdSdkCapability[])$VALUES.clone();
    }

    int getValue()
    {
        return value;
    }

    static 
    {
        int i = 0;
        APP_AD = new AdSdkCapability("APP_AD", 0, 0);
        LINK_AD = new AdSdkCapability("LINK_AD", 1, 1);
        APP_AD_V2 = new AdSdkCapability("APP_AD_V2", 2, 2);
        LINK_AD_V2 = new AdSdkCapability("LINK_AD_V2", 3, 3);
        APP_ENGAGEMENT_AD = new AdSdkCapability("APP_ENGAGEMENT_AD", 4, 4);
        AD_CHOICES = new AdSdkCapability("AD_CHOICES", 5, 5);
        JS_TRIGGER = new AdSdkCapability("JS_TRIGGER", 6, 6);
        JS_TRIGGER_NO_AUTO_IMP_LOGGING = new AdSdkCapability("JS_TRIGGER_NO_AUTO_IMP_LOGGING", 7, 7);
        AdSdkCapability aadsdkcapability[] = new AdSdkCapability[8];
        aadsdkcapability[0] = APP_AD;
        aadsdkcapability[1] = LINK_AD;
        aadsdkcapability[2] = APP_AD_V2;
        aadsdkcapability[3] = LINK_AD_V2;
        aadsdkcapability[4] = APP_ENGAGEMENT_AD;
        aadsdkcapability[5] = AD_CHOICES;
        aadsdkcapability[6] = JS_TRIGGER;
        aadsdkcapability[7] = JS_TRIGGER_NO_AUTO_IMP_LOGGING;
        $VALUES = aadsdkcapability;
        AdSdkCapability aadsdkcapability1[] = new AdSdkCapability[4];
        aadsdkcapability1[0] = LINK_AD_V2;
        aadsdkcapability1[1] = APP_ENGAGEMENT_AD;
        aadsdkcapability1[2] = AD_CHOICES;
        aadsdkcapability1[3] = JS_TRIGGER_NO_AUTO_IMP_LOGGING;
        supportedCapabilities = aadsdkcapability1;
        JSONArray jsonarray = new JSONArray();
        AdSdkCapability aadsdkcapability2[] = supportedCapabilities;
        for (int j = aadsdkcapability2.length; i < j; i++)
        {
            jsonarray.put(aadsdkcapability2[i].getValue());
        }

        supportedCapabilitiesStr = jsonarray.toString();
    }
}
