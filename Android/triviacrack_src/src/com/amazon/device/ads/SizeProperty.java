// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;

import java.util.Locale;

class SizeProperty
{

    private static final String FORMAT = "{\"width\":%d,\"height\":%d}";
    private int height;
    private int width;

    SizeProperty()
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

    public void setHeight(int i)
    {
        height = i;
    }

    public void setWidth(int i)
    {
        width = i;
    }

    public String toString()
    {
        Locale locale = Locale.US;
        Object aobj[] = new Object[2];
        aobj[0] = Integer.valueOf(width);
        aobj[1] = Integer.valueOf(height);
        return String.format(locale, "{\"width\":%d,\"height\":%d}", aobj);
    }
}
