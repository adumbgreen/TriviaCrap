// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.inmobi.commons.analytics.bootstrapper;

import java.util.Map;

// Referenced classes of package com.inmobi.commons.analytics.bootstrapper:
//            AnalyticsInitializer

final class a
    implements com.inmobi.commons.cache.CacheController.Validator
{

    a()
    {
    }

    public boolean validate(Map map)
    {
        return AnalyticsInitializer.a(map);
    }
}
