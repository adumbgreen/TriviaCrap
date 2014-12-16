// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.ads;

import com.facebook.ads.internal.StringUtils;

public class AdError
{

    public static final AdError INTERNAL_ERROR = new AdError(2001, "Internal Error");
    public static final int INVALID_ERROR_CODE = -1;
    public static final AdError LOAD_TOO_FREQUENTLY = new AdError(1002, "Ad was re-loaded too frequently");
    public static final AdError MISSING_PROPERTIES = new AdError(2002, "Native ad failed to load due to missing properties");
    public static final AdError NO_FILL = new AdError(1001, "No Fill");
    private final int errorCode;
    private final String errorMessage;

    public AdError(int i, String s)
    {
        if (StringUtils.isNullOrEmpty(s))
        {
            s = "unknown error";
        }
        errorCode = i;
        errorMessage = s;
    }

    public int getErrorCode()
    {
        return errorCode;
    }

    public String getErrorMessage()
    {
        return errorMessage;
    }

}
