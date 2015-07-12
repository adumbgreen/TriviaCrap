// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.smartadserver.android.library.b;

import com.smartadserver.android.library.h.c;
import java.util.Timer;
import java.util.TimerTask;
import org.apache.http.client.methods.HttpUriRequest;

// Referenced classes of package com.smartadserver.android.library.b:
//            b, a, d

class a extends TimerTask
{

    final b a;

    public void run()
    {
        b b1 = a;
        b1;
        JVM INSTR monitorenter ;
        if (b.a(a))
        {
            break MISSING_BLOCK_LABEL_136;
        }
        b.a(a, true);
        Exception exception;
        try
        {
            b.b(a).abort();
        }
        catch (UnsupportedOperationException unsupportedoperationexception) { }
        a.a.cancel();
        c.b((new StringBuilder()).append("The ad connection timed out after ").append(com.smartadserver.android.library.b.a.a(a.b)).append("ms").toString());
        com.smartadserver.android.library.b.b.c(a).a(new com.smartadserver.android.library.a.c((new StringBuilder()).append("Ad was not delivered before specified timeout (").append(com.smartadserver.android.library.b.a.a(a.b)).append("ms)").toString()));
        return;
        exception;
        b1;
        JVM INSTR monitorexit ;
        throw exception;
    }

    quest(b b1)
    {
        a = b1;
        super();
    }
}
