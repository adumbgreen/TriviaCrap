// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;

// Referenced classes of package com.admarvel.android.ads:
//            n

class g
    implements SensorEventListener
{

    final float a = 0.8F;
    final n b;
    private long c;
    private long d;
    private long e;
    private long f;
    private float g;
    private float h[];
    private float i[];
    private float j[];
    private final float k[] = {
        0.0F, 0.0F, 0.0F
    };
    private final float l[] = {
        0.0F, 0.0F, 0.0F
    };
    private final float m[] = {
        0.0F, 0.0F, 0.0F
    };

    public void onAccuracyChanged(Sensor sensor, int i1)
    {
    }

    public void onSensorChanged(SensorEvent sensorevent)
    {
        c = System.currentTimeMillis();
        if (sensorevent.sensor.getType() == 1)
        {
            h = (float[])sensorevent.values.clone();
        }
        if (sensorevent.sensor.getType() == 2)
        {
            j = (float[])sensorevent.values.clone();
        }
        if (h != null && j != null)
        {
            float af[] = new float[9];
            if (SensorManager.getRotationMatrix(af, new float[9], h, j))
            {
                float af1[] = new float[3];
                SensorManager.getOrientation(af, af1);
                float f1 = (float)Math.round(2D * Math.toDegrees(af1[0])) / 2.0F;
                if ((double)f1 < 0.0D)
                {
                    f1 += 360F;
                }
                n.a(b, f1);
            }
        }
        if (h != null)
        {
            if (e == 0L)
            {
                e = c;
                f = c;
                i = (float[])h.clone();
            } else
            {
                d = c - e;
                if (d > 0L)
                {
                    if (c - f >= (long)n.a(b))
                    {
                        g = 100F * (Math.abs((h[0] + h[1] + h[2]) - i[0] - i[1] - i[2]) / (float)(c - f));
                        f = c;
                        if (g > n.b(b))
                        {
                            n.b(b, g);
                        }
                    }
                    m[0] = 0.8F * m[0] + 0.2F * h[0];
                    m[1] = 0.8F * m[1] + 0.2F * h[1];
                    m[2] = 0.8F * m[2] + 0.2F * h[2];
                    k[0] = h[0] - m[0];
                    k[1] = h[1] - m[1];
                    k[2] = h[2] - m[2];
                    l[0] = h[0] - i[0];
                    l[1] = h[1] - i[1];
                    l[2] = h[2] - i[2];
                    n.a(b, h[0], h[1], h[2], k[0], k[1], k[2], l[0], l[1], l[2]);
                    i = (float[])h.clone();
                    e = c;
                    return;
                }
            }
        }
    }

    r(n n1)
    {
        b = n1;
        super();
        c = 0L;
        d = 0L;
        e = 0L;
        f = 0L;
        g = 0.0F;
    }
}
