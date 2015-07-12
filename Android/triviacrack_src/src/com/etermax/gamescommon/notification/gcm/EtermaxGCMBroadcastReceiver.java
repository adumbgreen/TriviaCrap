// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.notification.gcm;

import android.content.Context;
import com.google.android.gcm.GCMBroadcastReceiver;

public class EtermaxGCMBroadcastReceiver extends GCMBroadcastReceiver
{

    public EtermaxGCMBroadcastReceiver()
    {
    }

    protected String a(Context context)
    {
        return "com.etermax.gamescommon.notification.gcm.GCMIntentService";
    }
}
