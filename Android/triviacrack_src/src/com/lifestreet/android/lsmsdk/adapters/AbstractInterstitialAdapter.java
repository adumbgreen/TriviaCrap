// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.lifestreet.android.lsmsdk.adapters;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Looper;
import com.lifestreet.android.lsmsdk.InterstitialAdapterListener;
import com.lifestreet.android.lsmsdk.ads.AbstractAdActivity;
import com.lifestreet.android.lsmsdk.commons.LSMLogger;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.logging.Logger;

public abstract class AbstractInterstitialAdapter extends BroadcastReceiver
{

    private static final Handler sHandler = new Handler(Looper.getMainLooper());

    public AbstractInterstitialAdapter()
    {
    }

    protected void invokeAction(String s, InterstitialAdapterListener interstitialadapterlistener)
    {
        LSMLogger.LOGGER.info((new StringBuilder()).append("invokeAction: ").append(s).toString());
        try
        {
            Method method = interstitialadapterlistener.getClass().getMethod((String)AbstractAdActivity.BROADCAST_ACTIONS.get(s), new Class[] {
                java/lang/Object
            });
            Object aobj[] = new Object[1];
            aobj[0] = (Object)null;
            method.invoke(interstitialadapterlistener, aobj);
            return;
        }
        catch (Exception exception)
        {
            LSMLogger.LOGGER.warning((new StringBuilder()).append("Error running action: ").append(s).append(" (").append(exception.getMessage()).append(")").toString());
        }
    }

    protected void invokeActionDelayed(final String action, final InterstitialAdapterListener listener)
    {
        sHandler.postDelayed(new Runnable() {

            final AbstractInterstitialAdapter this$0;
            final String val$action;
            final InterstitialAdapterListener val$listener;

            public void run()
            {
                if (listener != null)
                {
                    invokeAction(action, listener);
                }
            }

            
            {
                this$0 = AbstractInterstitialAdapter.this;
                listener = interstitialadapterlistener;
                action = s;
                super();
            }
        }, 100L);
    }

    protected void registerBroadcastReceiver(Context context, BroadcastReceiver broadcastreceiver, String s)
    {
        IntentFilter intentfilter = new IntentFilter();
        intentfilter.addAction("com.lifestreet.action.CLICK");
        intentfilter.addAction("com.lifestreet.action.PRESENT_SCREEN");
        intentfilter.addAction("com.lifestreet.action.DISMISS_SCREEN");
        intentfilter.addAction("com.lifestreet.action.LEAVE_APPLICATION");
        intentfilter.addCategory(s);
        context.registerReceiver(broadcastreceiver, intentfilter);
    }

}
