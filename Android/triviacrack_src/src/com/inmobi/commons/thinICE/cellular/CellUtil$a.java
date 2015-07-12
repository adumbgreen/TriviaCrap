// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.inmobi.commons.thinICE.cellular;

import android.content.Context;
import android.telephony.TelephonyManager;
import android.util.Log;
import com.inmobi.commons.thinICE.icedatacollector.BuildSettings;
import java.lang.reflect.Method;
import java.util.ArrayList;

class ldSettings
{

    static int a(Context context)
    {
        TelephonyManager telephonymanager = (TelephonyManager)context.getSystemService("phone");
        ArrayList arraylist = (ArrayList)android/telephony/TelephonyManager.getMethod("getAllCellInfo", (Class[])null).invoke(telephonymanager, (Object[])null);
        if (arraylist == null)
        {
            break MISSING_BLOCK_LABEL_122;
        }
        int i;
        Object obj = arraylist.get(0);
        Object obj1 = Class.forName("android.telephony.CellInfoGsm").getMethod("getCellSignalStrength", (Class[])null).invoke(obj, (Object[])null);
        i = ((Integer)Class.forName("android.telephony.CellSignalStrengthGsm").getMethod("getDbm", (Class[])null).invoke(obj1, (Object[])null)).intValue();
        return i;
        Exception exception;
        exception;
        if (BuildSettings.DEBUG)
        {
            Log.e("IceDataCollector", "Error getting cell tower signal strength", exception);
        }
        return 0;
    }

    static int b(Context context)
    {
        TelephonyManager telephonymanager = (TelephonyManager)context.getSystemService("phone");
        ArrayList arraylist = (ArrayList)android/telephony/TelephonyManager.getMethod("getAllCellInfo", (Class[])null).invoke(telephonymanager, (Object[])null);
        if (arraylist == null)
        {
            break MISSING_BLOCK_LABEL_122;
        }
        int i;
        Object obj = arraylist.get(0);
        Object obj1 = Class.forName("android.telephony.CellInfoCdma").getMethod("getCellSignalStrength", (Class[])null).invoke(obj, (Object[])null);
        i = ((Integer)Class.forName("android.telephony.CellSignalStrengthCdma").getMethod("getDbm", (Class[])null).invoke(obj1, (Object[])null)).intValue();
        return i;
        Exception exception;
        exception;
        if (BuildSettings.DEBUG)
        {
            Log.e("IceDataCollector", "Error getting cell tower signal strength", exception);
        }
        return 0;
    }

    ldSettings()
    {
    }
}
