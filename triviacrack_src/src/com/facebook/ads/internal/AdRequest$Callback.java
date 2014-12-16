// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.ads.internal;

import com.facebook.ads.AdError;

// Referenced classes of package com.facebook.ads.internal:
//            AdResponse

public interface 
{

    public abstract void onCompleted(AdResponse adresponse);

    public abstract void onError(AdError aderror);
}
