// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;


public final class MoPubErrorCode extends Enum
{

    public static final MoPubErrorCode ADAPTER_CONFIGURATION_ERROR;
    public static final MoPubErrorCode ADAPTER_NOT_FOUND;
    public static final MoPubErrorCode CANCELLED;
    public static final MoPubErrorCode INTERNAL_ERROR;
    public static final MoPubErrorCode MRAID_LOAD_ERROR;
    public static final MoPubErrorCode NETWORK_INVALID_STATE;
    public static final MoPubErrorCode NETWORK_NO_FILL;
    public static final MoPubErrorCode NETWORK_TIMEOUT;
    public static final MoPubErrorCode NO_FILL;
    public static final MoPubErrorCode SERVER_ERROR;
    public static final MoPubErrorCode UNSPECIFIED;
    public static final MoPubErrorCode VIDEO_CACHE_ERROR;
    public static final MoPubErrorCode VIDEO_DOWNLOAD_ERROR;
    private static final MoPubErrorCode b[];
    private final String a;

    private MoPubErrorCode(String s, int i, String s1)
    {
        super(s, i);
        a = s1;
    }

    public static MoPubErrorCode valueOf(String s)
    {
        return (MoPubErrorCode)Enum.valueOf(com/mopub/mobileads/MoPubErrorCode, s);
    }

    public static MoPubErrorCode[] values()
    {
        return (MoPubErrorCode[])b.clone();
    }

    public String toString()
    {
        return a;
    }

    static 
    {
        NO_FILL = new MoPubErrorCode("NO_FILL", 0, "No ads found.");
        SERVER_ERROR = new MoPubErrorCode("SERVER_ERROR", 1, "Unable to connect to MoPub adserver.");
        INTERNAL_ERROR = new MoPubErrorCode("INTERNAL_ERROR", 2, "Unable to serve ad due to invalid internal state.");
        CANCELLED = new MoPubErrorCode("CANCELLED", 3, "Ad request was cancelled.");
        ADAPTER_NOT_FOUND = new MoPubErrorCode("ADAPTER_NOT_FOUND", 4, "Unable to find Native Network or Custom Event adapter.");
        ADAPTER_CONFIGURATION_ERROR = new MoPubErrorCode("ADAPTER_CONFIGURATION_ERROR", 5, "Native Network or Custom Event adapter was configured incorrectly.");
        NETWORK_TIMEOUT = new MoPubErrorCode("NETWORK_TIMEOUT", 6, "Third-party network failed to respond in a timely manner.");
        NETWORK_NO_FILL = new MoPubErrorCode("NETWORK_NO_FILL", 7, "Third-party network failed to provide an ad.");
        NETWORK_INVALID_STATE = new MoPubErrorCode("NETWORK_INVALID_STATE", 8, "Third-party network failed due to invalid internal state.");
        MRAID_LOAD_ERROR = new MoPubErrorCode("MRAID_LOAD_ERROR", 9, "Error loading MRAID ad.");
        VIDEO_CACHE_ERROR = new MoPubErrorCode("VIDEO_CACHE_ERROR", 10, "Error creating a cache to store downloaded videos.");
        VIDEO_DOWNLOAD_ERROR = new MoPubErrorCode("VIDEO_DOWNLOAD_ERROR", 11, "Error downloading video.");
        UNSPECIFIED = new MoPubErrorCode("UNSPECIFIED", 12, "Unspecified error.");
        MoPubErrorCode amopuberrorcode[] = new MoPubErrorCode[13];
        amopuberrorcode[0] = NO_FILL;
        amopuberrorcode[1] = SERVER_ERROR;
        amopuberrorcode[2] = INTERNAL_ERROR;
        amopuberrorcode[3] = CANCELLED;
        amopuberrorcode[4] = ADAPTER_NOT_FOUND;
        amopuberrorcode[5] = ADAPTER_CONFIGURATION_ERROR;
        amopuberrorcode[6] = NETWORK_TIMEOUT;
        amopuberrorcode[7] = NETWORK_NO_FILL;
        amopuberrorcode[8] = NETWORK_INVALID_STATE;
        amopuberrorcode[9] = MRAID_LOAD_ERROR;
        amopuberrorcode[10] = VIDEO_CACHE_ERROR;
        amopuberrorcode[11] = VIDEO_DOWNLOAD_ERROR;
        amopuberrorcode[12] = UNSPECIFIED;
        b = amopuberrorcode;
    }
}
