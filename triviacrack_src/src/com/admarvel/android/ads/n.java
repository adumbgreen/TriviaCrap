// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import java.lang.ref.WeakReference;
import java.util.List;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelInternalWebView

class n
{

    private static n m = null;
    private int a;
    private float b;
    private Sensor c;
    private Sensor d;
    private SensorManager e;
    private WeakReference f;
    private Boolean g;
    private boolean h;
    private String i;
    private String j;
    private String k;
    private boolean l;
    private SensorEventListener n;

    private n()
    {
        a = 1000;
        b = 2.0F;
        h = false;
        i = null;
        j = null;
        k = null;
        l = false;
        n = new SensorEventListener() {

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

            
            {
                b = n.this;
                super();
                c = 0L;
                d = 0L;
                e = 0L;
                f = 0L;
                g = 0.0F;
            }
        };
    }

    static int a(n n1)
    {
        return n1.a;
    }

    public static n a()
    {
        if (m == null)
        {
            m = new n();
        }
        return m;
    }

    private void a(float f1)
    {
        AdMarvelInternalWebView admarvelinternalwebview = (AdMarvelInternalWebView)f.get();
        if (admarvelinternalwebview != null && i != null)
        {
            admarvelinternalwebview.loadUrl((new StringBuilder()).append("javascript:").append(i).append("()").toString());
        }
    }

    private void a(float f1, float f2, float f3, float f4, float f5, float f6, float f7, 
            float f8, float f9)
    {
        AdMarvelInternalWebView admarvelinternalwebview = (AdMarvelInternalWebView)f.get();
        if (admarvelinternalwebview != null && j != null)
        {
            admarvelinternalwebview.loadUrl((new StringBuilder()).append("javascript:").append(j).append("(").append(f1).append(",").append(f2).append(",").append(f3).append(",").append(f4).append(",").append(f5).append(",").append(f6).append(",").append(f7).append(",").append(f8).append(",").append(f9).append(")").toString());
        }
    }

    static void a(n n1, float f1)
    {
        n1.b(f1);
    }

    static void a(n n1, float f1, float f2, float f3, float f4, float f5, float f6, float f7, 
            float f8, float f9)
    {
        n1.a(f1, f2, f3, f4, f5, f6, f7, f8, f9);
    }

    static float b(n n1)
    {
        return n1.b;
    }

    private void b(float f1)
    {
        AdMarvelInternalWebView admarvelinternalwebview = (AdMarvelInternalWebView)f.get();
        if (admarvelinternalwebview != null && k != null)
        {
            admarvelinternalwebview.loadUrl((new StringBuilder()).append("javascript:").append(k).append("(").append(f1).append(")").toString());
        }
    }

    static void b(n n1, float f1)
    {
        n1.a(f1);
    }

    private void d()
    {
        i = null;
        j = null;
        k = null;
    }

    public void a(Context context, AdMarvelInternalWebView admarvelinternalwebview)
    {
        f = new WeakReference(admarvelinternalwebview);
        if (!h)
        {
            e = (SensorManager)context.getSystemService("sensor");
            c = e.getDefaultSensor(1);
            d = e.getDefaultSensor(2);
            h = e.registerListener(n, c, 3);
        }
        if (l)
        {
            e.registerListener(n, d, 3);
            l = false;
        }
    }

    public void a(String s)
    {
        if (s != null)
        {
            i = s;
        }
    }

    public void a(String s, String s1)
    {
        if (s != null)
        {
            b = (new Float(s)).floatValue();
        }
        if (s1 != null)
        {
            a = 1000 * Integer.parseInt(s1);
        }
    }

    public boolean a(Context context)
    {
        if (g == null)
        {
            if (context != null)
            {
                e = (SensorManager)context.getSystemService("sensor");
                boolean flag;
                if (e.getSensorList(1).size() > 0)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                g = new Boolean(flag);
            } else
            {
                g = Boolean.FALSE;
            }
        }
        return g.booleanValue();
    }

    public void b(String s)
    {
        if (s != null)
        {
            j = s;
        }
    }

    public boolean b()
    {
        return h;
    }

    public boolean b(Context context)
    {
        if (g == null)
        {
            if (context != null)
            {
                e = (SensorManager)context.getSystemService("sensor");
                boolean flag;
                if (e.getSensorList(2).size() > 0)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                g = new Boolean(flag);
            } else
            {
                g = Boolean.FALSE;
            }
        }
        return g.booleanValue();
    }

    public void c()
    {
        h = false;
        try
        {
            if (e != null && n != null)
            {
                e.unregisterListener(n);
            }
        }
        catch (Exception exception) { }
        d();
    }

    public void c(String s)
    {
        if (s != null)
        {
            l = true;
            k = s;
        }
    }

}
