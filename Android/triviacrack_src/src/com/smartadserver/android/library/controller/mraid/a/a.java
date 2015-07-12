// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.smartadserver.android.library.controller.mraid.a;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import com.smartadserver.android.library.controller.mraid.e;
import java.util.List;

public class a
    implements SensorEventListener
{

    e a;
    int b;
    int c;
    int d;
    private SensorManager e;
    private int f;
    private long g;
    private int h;
    private long i;
    private long j;
    private float k[];
    private float l[] = {
        0.0F, 0.0F, 0.0F
    };
    private boolean m;
    private boolean n;
    private float o[] = {
        0.0F, 0.0F, 0.0F
    };
    private float p[] = {
        -1F, -1F, -1F
    };

    public a(Context context, e e1)
    {
        b = 0;
        c = 0;
        d = 0;
        f = 3;
        a = e1;
        e = (SensorManager)context.getSystemService("sensor");
    }

    private void i()
    {
        List list = e.getSensorList(2);
        if (list.size() > 0)
        {
            e.registerListener(this, (Sensor)list.get(0), f);
            j();
        }
    }

    private void j()
    {
        List list = e.getSensorList(1);
        if (list.size() > 0)
        {
            e.registerListener(this, (Sensor)list.get(0), f);
        }
    }

    public void a()
    {
        if (b == 0)
        {
            j();
        }
        b = 1 + b;
    }

    public void a(int i1)
    {
        f = i1;
        if (b > 0 || c > 0)
        {
            g();
            j();
        }
    }

    public void b()
    {
        if (b > 0)
        {
            int i1 = -1 + b;
            b = i1;
            if (i1 == 0)
            {
                g();
            }
        }
    }

    public void c()
    {
        if (c == 0)
        {
            a(1);
            j();
        }
        c = 1 + c;
    }

    public void d()
    {
        if (c > 0)
        {
            int i1 = -1 + c;
            c = i1;
            if (i1 == 0)
            {
                a(3);
                g();
            }
        }
    }

    public void e()
    {
        if (d == 0)
        {
            i();
        }
        d = 1 + d;
    }

    public void f()
    {
        if (d > 0)
        {
            int i1 = -1 + d;
            d = i1;
            if (i1 == 0)
            {
                g();
            }
        }
    }

    public void g()
    {
        if (d == 0 && c == 0 && b == 0)
        {
            e.unregisterListener(this);
        }
    }

    public void h()
    {
        b = 0;
        c = 0;
        d = 0;
        try
        {
            g();
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    public void onAccuracyChanged(Sensor sensor, int i1)
    {
    }

    public void onSensorChanged(SensorEvent sensorevent)
    {
        sensorevent.sensor.getType();
        JVM INSTR tableswitch 1 2: default 28
    //                   1 339
    //                   2 317;
           goto _L1 _L2 _L3
_L1:
        if (k != null && l != null && n && m)
        {
            n = false;
            m = false;
            float af[] = new float[9];
            SensorManager.getRotationMatrix(af, new float[9], l, k);
            p = new float[3];
            SensorManager.getOrientation(af, p);
            a.a(p[0]);
        }
        if (sensorevent.sensor.getType() == 1)
        {
            long l1 = System.currentTimeMillis();
            if (l1 - g > 500L)
            {
                h = 0;
            }
            if (l1 - i > 100L)
            {
                long l2 = l1 - i;
                if (10000F * (Math.abs((l[0] + l[1] + l[2]) - o[0] - o[1] - o[2]) / (float)l2) > 500F)
                {
                    int i1 = 1 + h;
                    h = i1;
                    if (i1 >= 2 && l1 - j > 1000L)
                    {
                        j = l1;
                        h = 0;
                        a.b();
                    }
                    g = l1;
                }
                i = l1;
                a.a(l[0], l[1], l[2]);
            }
        }
        return;
_L3:
        k = (float[])sensorevent.values.clone();
        m = true;
        continue; /* Loop/switch isn't completed */
_L2:
        o = l;
        l = (float[])sensorevent.values.clone();
        n = true;
        if (true) goto _L1; else goto _L4
_L4:
    }
}
