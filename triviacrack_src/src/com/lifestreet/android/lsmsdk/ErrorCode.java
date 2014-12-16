// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.lifestreet.android.lsmsdk;


public final class ErrorCode extends Enum
{

    private static final ErrorCode $VALUES[];
    public static final ErrorCode ADVIEW_TRANSITION_FAILED;
    public static final ErrorCode BAD_STATUS_CODE;
    public static final ErrorCode EMPTY_NETWORKS_ARRAY;
    public static final ErrorCode EMPTY_RESPONSE;
    public static final ErrorCode LOAD_NEXT_ADAPTER_EXCEPTION;
    public static final ErrorCode LOAD_NEXT_INTERSTITIAL_ADAPTER_EXCEPTION;
    public static final ErrorCode LOAD_SLOT_EXCEPTION;
    public static final ErrorCode MISSING_NETWORK_TYPE;
    public static final ErrorCode NETWORK_INFO_INVALID;
    public static final ErrorCode NO_ERROR;
    public static final ErrorCode NO_SLOT_TAG;
    public static final ErrorCode PAUSE_AD_EXCEPTION;
    public static final ErrorCode RESUME_AD_EXCEPTION;
    public static final ErrorCode UNHANDLED_EXCEPTION;
    public static final ErrorCode UNKNOWN_AD_TYPE;
    public static final ErrorCode UNKNOWN_CONTENT_TYPE;
    public static final ErrorCode UNKNOWN_NETWORK_TYPE;
    private final int mIntCode;

    private ErrorCode(String s, int i, int j)
    {
        super(s, i);
        mIntCode = j;
    }

    public static ErrorCode valueOf(String s)
    {
        return (ErrorCode)Enum.valueOf(com/lifestreet/android/lsmsdk/ErrorCode, s);
    }

    public static ErrorCode[] values()
    {
        return (ErrorCode[])$VALUES.clone();
    }

    public int toInt()
    {
        return mIntCode;
    }

    static 
    {
        NO_ERROR = new ErrorCode("NO_ERROR", 0, 0);
        UNHANDLED_EXCEPTION = new ErrorCode("UNHANDLED_EXCEPTION", 1, 1);
        LOAD_NEXT_INTERSTITIAL_ADAPTER_EXCEPTION = new ErrorCode("LOAD_NEXT_INTERSTITIAL_ADAPTER_EXCEPTION", 2, 2);
        LOAD_NEXT_ADAPTER_EXCEPTION = new ErrorCode("LOAD_NEXT_ADAPTER_EXCEPTION", 3, 3);
        LOAD_SLOT_EXCEPTION = new ErrorCode("LOAD_SLOT_EXCEPTION", 4, 4);
        MISSING_NETWORK_TYPE = new ErrorCode("MISSING_NETWORK_TYPE", 5, 5);
        ADVIEW_TRANSITION_FAILED = new ErrorCode("ADVIEW_TRANSITION_FAILED", 6, 6);
        BAD_STATUS_CODE = new ErrorCode("BAD_STATUS_CODE", 7, 7);
        EMPTY_NETWORKS_ARRAY = new ErrorCode("EMPTY_NETWORKS_ARRAY", 8, 8);
        EMPTY_RESPONSE = new ErrorCode("EMPTY_RESPONSE", 9, 9);
        UNKNOWN_NETWORK_TYPE = new ErrorCode("UNKNOWN_NETWORK_TYPE", 10, 10);
        NETWORK_INFO_INVALID = new ErrorCode("NETWORK_INFO_INVALID", 11, 11);
        UNKNOWN_AD_TYPE = new ErrorCode("UNKNOWN_AD_TYPE", 12, 12);
        UNKNOWN_CONTENT_TYPE = new ErrorCode("UNKNOWN_CONTENT_TYPE", 13, 13);
        NO_SLOT_TAG = new ErrorCode("NO_SLOT_TAG", 14, 14);
        RESUME_AD_EXCEPTION = new ErrorCode("RESUME_AD_EXCEPTION", 15, 15);
        PAUSE_AD_EXCEPTION = new ErrorCode("PAUSE_AD_EXCEPTION", 16, 16);
        ErrorCode aerrorcode[] = new ErrorCode[17];
        aerrorcode[0] = NO_ERROR;
        aerrorcode[1] = UNHANDLED_EXCEPTION;
        aerrorcode[2] = LOAD_NEXT_INTERSTITIAL_ADAPTER_EXCEPTION;
        aerrorcode[3] = LOAD_NEXT_ADAPTER_EXCEPTION;
        aerrorcode[4] = LOAD_SLOT_EXCEPTION;
        aerrorcode[5] = MISSING_NETWORK_TYPE;
        aerrorcode[6] = ADVIEW_TRANSITION_FAILED;
        aerrorcode[7] = BAD_STATUS_CODE;
        aerrorcode[8] = EMPTY_NETWORKS_ARRAY;
        aerrorcode[9] = EMPTY_RESPONSE;
        aerrorcode[10] = UNKNOWN_NETWORK_TYPE;
        aerrorcode[11] = NETWORK_INFO_INVALID;
        aerrorcode[12] = UNKNOWN_AD_TYPE;
        aerrorcode[13] = UNKNOWN_CONTENT_TYPE;
        aerrorcode[14] = NO_SLOT_TAG;
        aerrorcode[15] = RESUME_AD_EXCEPTION;
        aerrorcode[16] = PAUSE_AD_EXCEPTION;
        $VALUES = aerrorcode;
    }
}
