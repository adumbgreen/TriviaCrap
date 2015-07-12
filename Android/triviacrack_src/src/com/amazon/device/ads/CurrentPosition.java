// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;

import java.util.Locale;

class CurrentPosition
{

    private static final String FORMAT = "{\"width\":%d,\"height\":%d,\"x\":%d,\"y\":%d}";
    private int height;
    private int width;
    private int x;
    private int y;

    CurrentPosition()
    {
    }

    public int getHeight()
    {
        return height;
    }

    public int getWidth()
    {
        return width;
    }

    public int getX()
    {
        return x;
    }

    public int getY()
    {
        return y;
    }

    public void setHeight(int i)
    {
        height = i;
    }

    public void setWidth(int i)
    {
        width = i;
    }

    public void setX(int i)
    {
        x = i;
    }

    public void setY(int i)
    {
        y = i;
    }

    public String toString()
    {
        Locale locale = Locale.US;
        Object aobj[] = new Object[4];
        aobj[0] = Integer.valueOf(width);
        aobj[1] = Integer.valueOf(height);
        aobj[2] = Integer.valueOf(x);
        aobj[3] = Integer.valueOf(y);
        return String.format(locale, "{\"width\":%d,\"height\":%d,\"x\":%d,\"y\":%d}", aobj);
    }
}
