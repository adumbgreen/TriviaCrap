// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;

import java.util.Locale;

class ExpandProperties
{

    private static final String FORMAT = "{\"width\":%d,\"height\":%d,\"useCustomClose\":%s,\"isModal\":%s}";
    private int height;
    private Boolean isModal;
    private Boolean useCustomClose;
    private int width;

    ExpandProperties()
    {
        useCustomClose = Boolean.FALSE;
        isModal = Boolean.TRUE;
    }

    public int getHeight()
    {
        return height;
    }

    public Boolean getIsModal()
    {
        return isModal;
    }

    public Boolean getUseCustomClose()
    {
        return useCustomClose;
    }

    public int getWidth()
    {
        return width;
    }

    public void setHeight(int i)
    {
        height = i;
    }

    public void setIsModal(Boolean boolean1)
    {
        isModal = boolean1;
    }

    public void setUseCustomClose(Boolean boolean1)
    {
        useCustomClose = boolean1;
    }

    public void setWidth(int i)
    {
        width = i;
    }

    public String toString()
    {
        Locale locale = Locale.US;
        Object aobj[] = new Object[4];
        aobj[0] = Integer.valueOf(width);
        aobj[1] = Integer.valueOf(height);
        aobj[2] = useCustomClose.toString();
        aobj[3] = isModal.toString();
        return String.format(locale, "{\"width\":%d,\"height\":%d,\"useCustomClose\":%s,\"isModal\":%s}", aobj);
    }
}
