// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.inapp.purchasing;

import android.content.Context;
import android.content.Intent;

// Referenced classes of package com.amazon.inapp.purchasing:
//            KiwiResponseHandler

abstract class _intent
    implements Runnable
{

    private final Context _context;
    private final Intent _intent;
    final KiwiResponseHandler this$0;

    protected final Context getContext()
    {
        return _context;
    }

    protected final Intent getIntent()
    {
        return _intent;
    }

    public (Context context, Intent intent)
    {
        this$0 = KiwiResponseHandler.this;
        super();
        _context = context;
        _intent = intent;
    }
}
