// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.ads.internal;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;

// Referenced classes of package com.facebook.ads.internal:
//            AdAnalogData

class <init>
    implements SensorEventListener
{

    public void onAccuracyChanged(Sensor sensor, int i)
    {
    }

    public void onSensorChanged(SensorEvent sensorevent)
    {
        if (sensorevent.sensor != AdAnalogData.access$100()) goto _L2; else goto _L1
_L1:
        AdAnalogData.access$202(sensorevent.values);
_L4:
        AdAnalogData.stopUpdate(this);
        return;
_L2:
        if (sensorevent.sensor == AdAnalogData.access$300())
        {
            AdAnalogData.access$402(sensorevent.values);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    private ()
    {
    }

    ( )
    {
        this();
    }
}
