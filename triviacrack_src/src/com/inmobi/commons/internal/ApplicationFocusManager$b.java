// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.inmobi.commons.internal;

import android.app.Activity;
import android.os.Handler;
import android.os.HandlerThread;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;

// Referenced classes of package com.inmobi.commons.internal:
//            ApplicationFocusManager, Log

final class 
    implements InvocationHandler
{

    private final Handler a = new <init>(ApplicationFocusManager.a().getLooper());

    public void a(Activity activity)
    {
        a.sendEmptyMessageDelayed(1001, 3000L);
    }

    public void b(Activity activity)
    {
        a.removeMessages(1001);
        a.sendEmptyMessage(1002);
    }

    public Object invoke(Object obj, Method method, Object aobj[])
    {
        if (aobj == null)
        {
            break MISSING_BLOCK_LABEL_63;
        }
        if (!method.getName().equals("onActivityPaused"))
        {
            break MISSING_BLOCK_LABEL_28;
        }
        a((Activity)aobj[0]);
        return null;
        if (!method.getName().equals("onActivityResumed"))
        {
            break MISSING_BLOCK_LABEL_63;
        }
        b((Activity)aobj[0]);
        return null;
        Exception exception;
        exception;
        Log.internal("[InMobi]-4.3.0", "Unable to invoke method", exception);
        return null;
    }

    ()
    {
    }
}
