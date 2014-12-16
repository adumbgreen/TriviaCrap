// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;


class reset
{

    double a;
    double b;
    int c;
    boolean d;

    static double a(double d1)
    {
        return b(d1);
    }

    private static double b(double d1)
    {
        return Math.min(9.9900000000000002D, Math.max(Math.floor(d1 - 40D) / 4.0040040040040044D, 0.0D));
    }

    public boolean isTrackingAudioSample()
    {
        return d;
    }

    public void reset()
    {
        b = 0.0D;
        c = 0;
        d = false;
    }

    public void startTrackingAudioSample()
    {
        reset();
        d = true;
    }

    public boolean update(double d1)
    {
        double d2 = b;
        double d3 = a;
        a = d1;
        c = 1 + c;
        for (b = (d1 + d2 * (double)(-1 + c)) / (double)c; d || a == d3;)
        {
            return false;
        }

        return true;
    }

    public ()
    {
        reset();
    }
}
