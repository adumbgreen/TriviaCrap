// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.lifestreet.android.lsmsdk.ads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.Window;
import com.lifestreet.android.lsmsdk.commons.LSMLogger;
import com.lifestreet.android.lsmsdk.commons.Utils;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Logger;

public abstract class AbstractAdActivity extends Activity
{

    public static final String ACTION_CLICK = "com.lifestreet.action.CLICK";
    public static final String ACTION_DISMISS_SCREEN = "com.lifestreet.action.DISMISS_SCREEN";
    public static final String ACTION_LEAVE_APPLICATION = "com.lifestreet.action.LEAVE_APPLICATION";
    public static final String ACTION_PRESENT_SCREEN = "com.lifestreet.action.PRESENT_SCREEN";
    public static final String ACTION_RECEIVE_AD = "com.lifestreet.action.RECEIVE_AD";
    public static final Map BROADCAST_ACTIONS;

    public AbstractAdActivity()
    {
    }

    private void lockScreenToPortrait9()
    {
        setRequestedOrientation(7);
    }

    protected static String saveToCache(Context context, String s, String s1, String s2)
    {
        String s3;
        try
        {
            File file = File.createTempFile(s1, s2, context.getCacheDir());
            FileWriter filewriter = new FileWriter(file);
            filewriter.write(s);
            filewriter.close();
            s3 = file.getAbsolutePath();
        }
        catch (Exception exception)
        {
            LSMLogger.LOGGER.warning((new StringBuilder()).append("Error saving cache file: ").append(exception.getMessage()).toString());
            return null;
        }
        return s3;
    }

    protected static void startActivity(Context context, Class class1, String s, String s1)
    {
        Intent intent = new Intent(context, class1);
        intent.putExtra("com.lifestreet.BaseUrl", s);
        intent.putExtra("com.lifestreet.HtmlPath", s1);
        context.startActivity(intent);
    }

    protected static void startActivity(Context context, Class class1, String s, String s1, boolean flag)
    {
        Intent intent = new Intent(context, class1);
        intent.putExtra("com.lifestreet.BaseUrl", s);
        intent.putExtra("com.lifestreet.HtmlPath", s1);
        intent.putExtra("com.lifestreet.ShowCloseButton", flag);
        context.startActivity(intent);
    }

    public void onConfigurationChanged(Configuration configuration)
    {
        super.onConfigurationChanged(configuration);
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        if (bundle != null && bundle.getBoolean("com.lifestreet.ActivityDestroyed", false))
        {
            finish();
            return;
        }
        requestWindowFeature(1);
        getWindow().addFlags(1024);
        if (android.os.Build.VERSION.SDK_INT < 9)
        {
            setRequestedOrientation(1);
            return;
        } else
        {
            lockScreenToPortrait9();
            return;
        }
    }

    protected void onDestroy()
    {
        LSMLogger.LOGGER.info("onDestroy");
        super.onDestroy();
    }

    protected void onEvent(String s, String s1)
    {
        sendBroadcast((new Intent(s)).addCategory(s1));
    }

    protected void onSaveInstanceState(Bundle bundle)
    {
        bundle.putBoolean("com.lifestreet.ActivityDestroyed", true);
        super.onSaveInstanceState(bundle);
    }

    protected String readFromCache(String s)
    {
        String s1 = Utils.readInputStream(new FileInputStream(new File(s)));
        (new File(s)).delete();
        return s1;
        Exception exception1;
        exception1;
        LSMLogger.LOGGER.warning((new StringBuilder()).append("Error reading cache file: ").append(exception1.getMessage()).toString());
        (new File(s)).delete();
        return null;
        Exception exception;
        exception;
        (new File(s)).delete();
        throw exception;
    }

    static 
    {
        BROADCAST_ACTIONS = new HashMap();
        BROADCAST_ACTIONS.put("com.lifestreet.action.CLICK", "onClickInterstitialAd");
        BROADCAST_ACTIONS.put("com.lifestreet.action.RECEIVE_AD", "onReceiveInterstitialAd");
        BROADCAST_ACTIONS.put("com.lifestreet.action.PRESENT_SCREEN", "onPresentInterstitialScreen");
        BROADCAST_ACTIONS.put("com.lifestreet.action.DISMISS_SCREEN", "onDismissInterstitialScreen");
        BROADCAST_ACTIONS.put("com.lifestreet.action.LEAVE_APPLICATION", "onLeaveApplicationInterstitial");
    }
}
