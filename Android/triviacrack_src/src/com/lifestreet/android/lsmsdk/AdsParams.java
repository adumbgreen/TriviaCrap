// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.lifestreet.android.lsmsdk;


public final class AdsParams
{

    public static final String PROPERTY_REQUEST_ID = "requestId";
    private final String mRequestId;

    public AdsParams(String s)
    {
        mRequestId = s;
    }

    public String getRequestId()
    {
        return mRequestId;
    }
}
