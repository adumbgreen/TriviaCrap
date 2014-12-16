// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;


class DTOResizeParameters
{

    int a;
    int b;
    String c;
    int d;
    int e;
    boolean f;
    int g;
    int h;

    DTOResizeParameters(float f1, int i, int j, String s, int k, int l, boolean flag, 
            int i1, int j1)
    {
        a = (int)(f1 * (float)i);
        b = (int)(f1 * (float)j);
        c = s;
        d = (int)(f1 * (float)k);
        e = (int)(f1 * (float)l);
        f = flag;
        g = i1;
        h = j1;
    }

    public String toString()
    {
        Object aobj[] = new Object[8];
        aobj[0] = Integer.valueOf(a);
        aobj[1] = Integer.valueOf(b);
        aobj[2] = Integer.valueOf(d);
        aobj[3] = Integer.valueOf(e);
        aobj[4] = Boolean.valueOf(f);
        aobj[5] = c;
        aobj[6] = Integer.valueOf(g);
        aobj[7] = Integer.valueOf(h);
        return String.format("width[%d] height[%d] offsetX[%d] offsetY[%d] allowOffScreen[%b] customClosePosition[%s] maxX[%d] maxY[%d]", aobj);
    }
}
