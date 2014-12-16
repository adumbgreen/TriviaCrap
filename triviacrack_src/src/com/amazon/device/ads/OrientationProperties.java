// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;

import java.util.Locale;

// Referenced classes of package com.amazon.device.ads:
//            ForceOrientation

class OrientationProperties
{

    private static final String FORMAT = "{\"allowOrientationChange\":%s,\"forceOrientation\":\"%s\"}";
    private Boolean allowOrientationChange;
    private ForceOrientation forceOrientation;

    OrientationProperties()
    {
        allowOrientationChange = Boolean.valueOf(true);
        forceOrientation = ForceOrientation.NONE;
    }

    public ForceOrientation getForceOrientation()
    {
        return forceOrientation;
    }

    public Boolean isAllowOrientationChange()
    {
        return allowOrientationChange;
    }

    public void setAllowOrientationChange(Boolean boolean1)
    {
        allowOrientationChange = boolean1;
    }

    public void setForceOrientation(ForceOrientation forceorientation)
    {
        forceOrientation = forceorientation;
    }

    public String toString()
    {
        Locale locale = Locale.US;
        Object aobj[] = new Object[2];
        aobj[0] = allowOrientationChange.toString();
        aobj[1] = forceOrientation.toString();
        return String.format(locale, "{\"allowOrientationChange\":%s,\"forceOrientation\":\"%s\"}", aobj);
    }
}
