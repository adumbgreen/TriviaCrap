// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;


public final class AdError
{

    private final ErrorCode code;
    private final String message;

    AdError(ErrorCode errorcode, String s)
    {
        code = errorcode;
        message = s;
    }

    public ErrorCode getCode()
    {
        return code;
    }

    public String getMessage()
    {
        return message;
    }
}
