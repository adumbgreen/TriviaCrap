// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.ads.internal;

import java.util.Locale;

// Referenced classes of package com.facebook.ads.internal:
//            StringUtils

public final class AdInvalidationBehavior extends Enum
{

    private static final AdInvalidationBehavior $VALUES[];
    public static final AdInvalidationBehavior INSTALLED;
    public static final AdInvalidationBehavior NONE;
    public static final AdInvalidationBehavior NOT_INSTALLED;

    private AdInvalidationBehavior(String s, int i)
    {
        super(s, i);
    }

    public static AdInvalidationBehavior fromString(String s)
    {
        if (StringUtils.isNullOrEmpty(s))
        {
            return NONE;
        }
        AdInvalidationBehavior adinvalidationbehavior;
        try
        {
            adinvalidationbehavior = valueOf(s.toUpperCase(Locale.US));
        }
        catch (IllegalArgumentException illegalargumentexception)
        {
            return NONE;
        }
        return adinvalidationbehavior;
    }

    public static AdInvalidationBehavior valueOf(String s)
    {
        return (AdInvalidationBehavior)Enum.valueOf(com/facebook/ads/internal/AdInvalidationBehavior, s);
    }

    public static AdInvalidationBehavior[] values()
    {
        return (AdInvalidationBehavior[])$VALUES.clone();
    }

    static 
    {
        NONE = new AdInvalidationBehavior("NONE", 0);
        INSTALLED = new AdInvalidationBehavior("INSTALLED", 1);
        NOT_INSTALLED = new AdInvalidationBehavior("NOT_INSTALLED", 2);
        AdInvalidationBehavior aadinvalidationbehavior[] = new AdInvalidationBehavior[3];
        aadinvalidationbehavior[0] = NONE;
        aadinvalidationbehavior[1] = INSTALLED;
        aadinvalidationbehavior[2] = NOT_INSTALLED;
        $VALUES = aadinvalidationbehavior;
    }
}
