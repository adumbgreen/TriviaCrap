// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;


public final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES AD_REQUEST_IN_PROCESS_EXCEPTION;
    public static final .VALUES AD_REQUEST_MISSING_XML_ELEMENTS;
    public static final .VALUES AD_REQUEST_SDK_TYPE_UNSUPPORTED;
    public static final .VALUES AD_REQUEST_XML_PARSING_EXCEPTION;
    public static final .VALUES AD_UNIT_NOT_ABLE_TO_LOAD;
    public static final .VALUES AD_UNIT_NOT_ABLE_TO_RENDER;
    public static final .VALUES BOT_USER_AGENT_FOUND;
    public static final .VALUES NETWORK_CONNECTIVITY_DISRUPTED;
    public static final .VALUES NO_AD_FOUND;
    public static final .VALUES NO_BANNER_FOUND;
    public static final .VALUES NO_NETWORK_CONNECTIVITY;
    public static final .VALUES NO_USER_AGENT_FOUND;
    public static final .VALUES PARTNER_ID_NOT_PRESENT;
    public static final .VALUES SITE_ID_AND_PARTNER_ID_DO_NOT_MATCH;
    public static final .VALUES SITE_ID_NOT_PRESENT;
    public static final .VALUES SITE_ID_OR_PARTNER_ID_NOT_PRESENT;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/admarvel/android/ads/AdMarvelUtils$ErrorReason, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        SITE_ID_OR_PARTNER_ID_NOT_PRESENT = new <init>("SITE_ID_OR_PARTNER_ID_NOT_PRESENT", 0);
        SITE_ID_AND_PARTNER_ID_DO_NOT_MATCH = new <init>("SITE_ID_AND_PARTNER_ID_DO_NOT_MATCH", 1);
        BOT_USER_AGENT_FOUND = new <init>("BOT_USER_AGENT_FOUND", 2);
        NO_BANNER_FOUND = new <init>("NO_BANNER_FOUND", 3);
        NO_AD_FOUND = new <init>("NO_AD_FOUND", 4);
        NO_USER_AGENT_FOUND = new <init>("NO_USER_AGENT_FOUND", 5);
        SITE_ID_NOT_PRESENT = new <init>("SITE_ID_NOT_PRESENT", 6);
        PARTNER_ID_NOT_PRESENT = new <init>("PARTNER_ID_NOT_PRESENT", 7);
        NO_NETWORK_CONNECTIVITY = new <init>("NO_NETWORK_CONNECTIVITY", 8);
        NETWORK_CONNECTIVITY_DISRUPTED = new <init>("NETWORK_CONNECTIVITY_DISRUPTED", 9);
        AD_REQUEST_XML_PARSING_EXCEPTION = new <init>("AD_REQUEST_XML_PARSING_EXCEPTION", 10);
        AD_REQUEST_IN_PROCESS_EXCEPTION = new <init>("AD_REQUEST_IN_PROCESS_EXCEPTION", 11);
        AD_UNIT_NOT_ABLE_TO_RENDER = new <init>("AD_UNIT_NOT_ABLE_TO_RENDER", 12);
        AD_REQUEST_MISSING_XML_ELEMENTS = new <init>("AD_REQUEST_MISSING_XML_ELEMENTS", 13);
        AD_REQUEST_SDK_TYPE_UNSUPPORTED = new <init>("AD_REQUEST_SDK_TYPE_UNSUPPORTED", 14);
        AD_UNIT_NOT_ABLE_TO_LOAD = new <init>("AD_UNIT_NOT_ABLE_TO_LOAD", 15);
        n_3B_.clone aclone[] = new <init>[16];
        aclone[0] = SITE_ID_OR_PARTNER_ID_NOT_PRESENT;
        aclone[1] = SITE_ID_AND_PARTNER_ID_DO_NOT_MATCH;
        aclone[2] = BOT_USER_AGENT_FOUND;
        aclone[3] = NO_BANNER_FOUND;
        aclone[4] = NO_AD_FOUND;
        aclone[5] = NO_USER_AGENT_FOUND;
        aclone[6] = SITE_ID_NOT_PRESENT;
        aclone[7] = PARTNER_ID_NOT_PRESENT;
        aclone[8] = NO_NETWORK_CONNECTIVITY;
        aclone[9] = NETWORK_CONNECTIVITY_DISRUPTED;
        aclone[10] = AD_REQUEST_XML_PARSING_EXCEPTION;
        aclone[11] = AD_REQUEST_IN_PROCESS_EXCEPTION;
        aclone[12] = AD_UNIT_NOT_ABLE_TO_RENDER;
        aclone[13] = AD_REQUEST_MISSING_XML_ELEMENTS;
        aclone[14] = AD_REQUEST_SDK_TYPE_UNSUPPORTED;
        aclone[15] = AD_UNIT_NOT_ABLE_TO_LOAD;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
