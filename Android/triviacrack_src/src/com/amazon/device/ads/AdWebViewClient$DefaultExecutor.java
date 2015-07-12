// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;

import android.content.Context;

// Referenced classes of package com.amazon.device.ads:
//            WebUtils

class context
    implements context
{

    private final Context context;

    public boolean execute(String s)
    {
        WebUtils.launchActivityForIntentLink(s, context);
        return true;
    }

    public (Context context1)
    {
        context = context1;
    }
}
