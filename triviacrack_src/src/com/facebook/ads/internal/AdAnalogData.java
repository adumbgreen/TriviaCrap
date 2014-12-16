// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.ads.internal;

import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.os.Environment;
import android.os.StatFs;
import java.io.File;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public class AdAnalogData
{

    private static Sensor accelerometer = null;
    private static volatile float accelerometerValues[];
    private static Map analogInfo = new ConcurrentHashMap();
    private static Sensor gyroscope = null;
    private static volatile float gyroscopeValues[];
    private static String sensorDimensions[] = {
        "x", "y", "z"
    };
    private static SensorManager sensorManager = null;

    public AdAnalogData()
    {
    }

    public static Map getAnalogInfo()
    {
        HashMap hashmap = new HashMap();
        hashmap.putAll(analogInfo);
        putSensorData(hashmap);
        return hashmap;
    }

    private static void putBatteryData(Context context)
    {
        Intent intent = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        if (intent == null)
        {
            return;
        }
        int i = intent.getIntExtra("level", -1);
        int j = intent.getIntExtra("scale", -1);
        int k = intent.getIntExtra("status", -1);
        boolean flag;
        float f;
        Map map;
        int l;
        if (k == 2 || k == 5)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        f = 0.0F;
        if (j > 0)
        {
            f = 100F * ((float)i / (float)j);
        }
        analogInfo.put("battery", Float.valueOf(f));
        map = analogInfo;
        if (flag)
        {
            l = 1;
        } else
        {
            l = 0;
        }
        map.put("charging", Integer.valueOf(l));
    }

    private static void putDiskInfo(Context context)
    {
        StatFs statfs = new StatFs(Environment.getDataDirectory().getPath());
        long l = statfs.getBlockSize();
        long l1 = statfs.getAvailableBlocks();
        analogInfo.put("free_space", Long.valueOf(l1 * l));
    }

    private static void putMemoryInfo(Context context)
    {
        android.app.ActivityManager.MemoryInfo memoryinfo = new android.app.ActivityManager.MemoryInfo();
        ((ActivityManager)context.getSystemService("activity")).getMemoryInfo(memoryinfo);
        analogInfo.put("available_memory", String.valueOf(memoryinfo.availMem));
    }

    private static void putSensorData(Map map)
    {
        int i = 0;
        float af[] = accelerometerValues;
        float af1[] = gyroscopeValues;
        if (af != null)
        {
            int k = Math.min(sensorDimensions.length, af.length);
            for (int l = 0; l < k; l++)
            {
                map.put((new StringBuilder()).append("accelerometer_").append(sensorDimensions[l]).toString(), Float.valueOf(af[l]));
            }

        }
        if (af1 != null)
        {
            for (int j = Math.min(sensorDimensions.length, af1.length); i < j; i++)
            {
                map.put((new StringBuilder()).append("rotation_").append(sensorDimensions[i]).toString(), Float.valueOf(af1[i]));
            }

        }
    }

    public static void startUpdate(Context context)
    {
        com/facebook/ads/internal/AdAnalogData;
        JVM INSTR monitorenter ;
        putMemoryInfo(context);
        putDiskInfo(context);
        putBatteryData(context);
        if (sensorManager != null) goto _L2; else goto _L1
_L1:
        SensorManager sensormanager;
        sensorManager = (SensorManager)context.getSystemService("sensor");
        sensormanager = sensorManager;
        if (sensormanager != null) goto _L2; else goto _L3
_L3:
        com/facebook/ads/internal/AdAnalogData;
        JVM INSTR monitorexit ;
        return;
_L2:
        if (accelerometer == null)
        {
            accelerometer = sensorManager.getDefaultSensor(1);
        }
        if (gyroscope == null)
        {
            gyroscope = sensorManager.getDefaultSensor(4);
        }
        if (accelerometer != null)
        {
            sensorManager.registerListener(new AdSensorEventListener(), accelerometer, 3);
        }
        if (gyroscope != null)
        {
            sensorManager.registerListener(new AdSensorEventListener(), gyroscope, 3);
        }
        if (true) goto _L3; else goto _L4
_L4:
        Exception exception;
        exception;
        throw exception;
    }

    public static void stopUpdate(AdSensorEventListener adsensoreventlistener)
    {
        com/facebook/ads/internal/AdAnalogData;
        JVM INSTR monitorenter ;
        SensorManager sensormanager = sensorManager;
        if (sensormanager != null) goto _L2; else goto _L1
_L1:
        com/facebook/ads/internal/AdAnalogData;
        JVM INSTR monitorexit ;
        return;
_L2:
        sensorManager.unregisterListener(adsensoreventlistener);
        if (true) goto _L1; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }




/*
    static float[] access$202(float af[])
    {
        accelerometerValues = af;
        return af;
    }

*/



/*
    static float[] access$402(float af[])
    {
        gyroscopeValues = af;
        return af;
    }

*/

    private class AdSensorEventListener
        implements SensorEventListener
    {

        public void onAccuracyChanged(Sensor sensor, int i)
        {
        }

        public void onSensorChanged(SensorEvent sensorevent)
        {
            if (sensorevent.sensor != AdAnalogData.accelerometer) goto _L2; else goto _L1
_L1:
            AdAnalogData.accelerometerValues = sensorevent.values;
_L4:
            AdAnalogData.stopUpdate(this);
            return;
_L2:
            if (sensorevent.sensor == AdAnalogData.gyroscope)
            {
                AdAnalogData.gyroscopeValues = sensorevent.values;
            }
            if (true) goto _L4; else goto _L3
_L3:
        }

        private AdSensorEventListener()
        {
        }

    }

}
