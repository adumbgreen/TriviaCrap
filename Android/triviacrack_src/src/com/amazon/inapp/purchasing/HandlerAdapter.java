// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.inapp.purchasing;

import android.os.Handler;

class HandlerAdapter
{

    private Handler _handler;

    HandlerAdapter(Handler handler)
    {
        _handler = handler;
    }

    boolean post(Runnable runnable)
    {
        return _handler.post(runnable);
    }
}
