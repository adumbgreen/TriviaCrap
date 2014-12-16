// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.inapp.purchasing;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

// Referenced classes of package com.amazon.inapp.purchasing:
//            ImplementationFactory, ResponseHandler

public final class ResponseReceiver extends BroadcastReceiver
{

    public ResponseReceiver()
    {
    }

    public void onReceive(Context context, Intent intent)
    {
        ImplementationFactory.getResponseHandler().handleResponse(context, intent);
    }
}
