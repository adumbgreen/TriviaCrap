// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.smartadserver.android.library.b;

import android.content.Context;
import com.smartadserver.android.library.h.c;

// Referenced classes of package com.smartadserver.android.library.b:
//            e

final class a
    implements Runnable
{

    final Context a;

    public void run()
    {
        try
        {
            c.a(a, true);
            return;
        }
        catch (NoClassDefFoundError noclassdeffounderror)
        {
            c.a((new StringBuilder()).append("Missing Google play services framework : ").append(noclassdeffounderror.getMessage()).toString());
        }
    }

    (Context context)
    {
        a = context;
        super();
    }
}
