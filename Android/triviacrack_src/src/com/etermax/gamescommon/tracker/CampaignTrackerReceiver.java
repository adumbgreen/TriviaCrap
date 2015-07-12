// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.tracker;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import com.etermax.a.a;
import java.net.URLDecoder;

public class CampaignTrackerReceiver extends BroadcastReceiver
{

    public CampaignTrackerReceiver()
    {
    }

    public void onReceive(Context context, Intent intent)
    {
        int i = 0;
        if (intent == null) goto _L2; else goto _L1
_L1:
        if (!intent.getAction().equals("com.android.vending.INSTALL_REFERRER")) goto _L2; else goto _L3
_L3:
        String s = intent.getStringExtra("referrer");
        if (s == null) goto _L2; else goto _L4
_L4:
        SharedPreferences sharedpreferences;
        String as[];
        int j;
        sharedpreferences = context.getSharedPreferences("tracker_campaign_preferences", 0);
        as = URLDecoder.decode(s, "UTF-8").split("[&]+");
        j = as.length;
_L6:
        if (i >= j)
        {
            break; /* Loop/switch isn't completed */
        }
        String as1[] = as[i].split("=");
        String s1 = as1[0];
        String s2 = as1[1];
        sharedpreferences.edit().putString(s1, s2.replace("_", "-")).commit();
        i++;
        if (true) goto _L6; else goto _L5
_L5:
        StringBuilder stringbuilder;
        String s3;
        stringbuilder = (new StringBuilder()).append(sharedpreferences.getString("utm_campaign", "")).append("_").append(sharedpreferences.getString("utm_source", "")).append("_").append(sharedpreferences.getString("utm_medium", ""));
        if (sharedpreferences.getString("utm_content", "") == "")
        {
            break MISSING_BLOCK_LABEL_342;
        }
        s3 = (new StringBuilder()).append("_").append(sharedpreferences.getString("utm_content", "")).toString();
_L10:
        StringBuilder stringbuilder1 = stringbuilder.append(s3);
        if (sharedpreferences.getString("utm_term", "") == "") goto _L8; else goto _L7
_L7:
        String s4 = (new StringBuilder()).append("_").append(sharedpreferences.getString("utm_term", "")).toString();
_L9:
        String s5 = stringbuilder1.append(s4).toString();
        sharedpreferences.edit().putString("referrer", s5).commit();
        return;
_L8:
        s4 = "";
          goto _L9
        Exception exception;
        exception;
        a.c("Exception CampaignTrackerReceiver", exception.toString());
_L2:
        return;
        s3 = "";
          goto _L10
    }
}
