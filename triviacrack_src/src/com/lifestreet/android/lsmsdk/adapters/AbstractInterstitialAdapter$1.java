// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.lifestreet.android.lsmsdk.adapters;

import com.lifestreet.android.lsmsdk.InterstitialAdapterListener;

// Referenced classes of package com.lifestreet.android.lsmsdk.adapters:
//            AbstractInterstitialAdapter

class val.action
    implements Runnable
{

    final AbstractInterstitialAdapter this$0;
    final String val$action;
    final InterstitialAdapterListener val$listener;

    public void run()
    {
        if (val$listener != null)
        {
            invokeAction(val$action, val$listener);
        }
    }

    ()
    {
        this$0 = final_abstractinterstitialadapter;
        val$listener = interstitialadapterlistener;
        val$action = String.this;
        super();
    }
}
