// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.lifestreet.android.lsmsdk.commons;


public final class AsyncHttpTaskResponse
{

    private final String mContentType;
    private final String mResponseBody;

    public AsyncHttpTaskResponse(String s, String s1)
    {
        mResponseBody = s;
        mContentType = s1;
    }

    public String getContentType()
    {
        return mContentType;
    }

    public String getResponseBody()
    {
        return mResponseBody;
    }
}
