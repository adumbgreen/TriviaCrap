// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mdotm.android.vast;

import android.content.Context;
import android.database.ContentObserver;
import android.media.AudioManager;
import android.os.Handler;
import com.mdotm.android.e.d;
import java.util.ArrayList;

public class i extends ContentObserver
{

    private int a;
    private Context b;
    private ArrayList c;
    private ArrayList d;
    private Handler e;

    public i(Context context, Handler handler, ArrayList arraylist, ArrayList arraylist1)
    {
        super(handler);
        b = context;
        e = handler;
        a = ((AudioManager)b.getSystemService("audio")).getStreamVolume(3);
        c = arraylist;
        d = arraylist1;
        if (a == 0)
        {
            com.mdotm.android.e.d.b(this, "valumn Mute impression when video started:: ");
        }
        com.mdotm.android.e.d.b(this, "Volumn listener");
    }

    public boolean deliverSelfNotifications()
    {
        return super.deliverSelfNotifications();
    }

    public void onChange(boolean flag)
    {
        int j;
        super.onChange(flag);
        j = ((AudioManager)b.getSystemService("audio")).getStreamVolume(3);
        if (j != 0 || a == 0) goto _L2; else goto _L1
_L1:
        com.mdotm.android.e.d.b(this, "valumn Mute  impression :: ");
_L4:
        a = j;
        return;
_L2:
        if (j != 0 && a == 0)
        {
            com.mdotm.android.e.d.b(this, "valumn unMute impression :: ");
        }
        if (true) goto _L4; else goto _L3
_L3:
    }
}
