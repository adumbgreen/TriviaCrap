// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.inapp.purchasing;

import java.util.UUID;

abstract class Request
{

    private final String _requestId = UUID.randomUUID().toString();

    Request()
    {
    }

    String getRequestId()
    {
        return _requestId;
    }

    abstract Runnable getRunnable();
}
