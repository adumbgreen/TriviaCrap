// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.ads.internal;

import java.util.Collection;

// Referenced classes of package com.facebook.ads.internal:
//            AdInvalidationBehavior

public interface AdDataModel
{

    public abstract Collection getDetectionStrings();

    public abstract AdInvalidationBehavior getInvalidationBehavior();
}
