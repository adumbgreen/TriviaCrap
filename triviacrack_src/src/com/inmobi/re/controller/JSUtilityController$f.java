// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.inmobi.re.controller;

import android.app.DownloadManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import com.inmobi.re.container.IMWebView;

// Referenced classes of package com.inmobi.re.controller:
//            JSUtilityController

class a extends BroadcastReceiver
{

    final JSUtilityController a;

    public void onReceive(Context context, Intent intent)
    {
        if ("android.intent.action.DOWNLOAD_COMPLETE".equals(intent.getAction()))
        {
            long l = intent.getLongExtra("extra_download_id", 0L);
            android.app.Controller.f f1 = new android.app.<init>();
            f1.setFilterById(new long[] {
                l
            });
            Cursor cursor = a.a.query(f1);
            if (cursor.moveToFirst())
            {
                int i = cursor.getColumnIndex("status");
                if (16 == cursor.getInt(i))
                {
                    a.imWebView.raiseError("download failed", "storePicture");
                } else
                if (8 == cursor.getInt(i))
                {
                    return;
                }
            }
        }
    }

    (JSUtilityController jsutilitycontroller)
    {
        a = jsutilitycontroller;
        super();
    }
}
