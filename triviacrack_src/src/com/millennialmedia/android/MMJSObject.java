// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;

import android.content.Context;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;

// Referenced classes of package com.millennialmedia.android:
//            MMSDK, MMJSResponse, MMLog, MMWebView, 
//            MMActivity, AdViewOverlayActivity

abstract class MMJSObject
{

    private static final String a = com/millennialmedia/android/MMJSObject.getName();
    protected WeakReference b;
    protected WeakReference c;

    MMJSObject()
    {
    }

    abstract MMJSResponse a(String s, Map map);

    MMJSResponse a(Callable callable)
    {
        FutureTask futuretask;
        futuretask = new FutureTask(callable);
        MMSDK.a(futuretask);
        MMJSResponse mmjsresponse = (MMJSResponse)futuretask.get();
        return mmjsresponse;
        InterruptedException interruptedexception;
        interruptedexception;
        MMLog.a(a, "Future interrupted", interruptedexception);
_L2:
        return null;
        ExecutionException executionexception;
        executionexception;
        MMLog.a(a, "Future execution problem: ", executionexception);
        if (true) goto _L2; else goto _L1
_L1:
    }

    void a(MMWebView mmwebview)
    {
        c = new WeakReference(mmwebview);
    }

    long b(String s)
    {
        if (s != null)
        {
            return (long)Float.parseFloat(s);
        } else
        {
            return -4L;
        }
    }

    void c(Context context)
    {
        b = new WeakReference(context);
    }

    AdViewOverlayActivity d()
    {
        MMWebView mmwebview = (MMWebView)c.get();
        if (mmwebview != null)
        {
            android.app.Activity activity = mmwebview.i();
            if (activity instanceof MMActivity)
            {
                MMBaseActivity mmbaseactivity = ((MMActivity)activity).h();
                if (mmbaseactivity instanceof AdViewOverlayActivity)
                {
                    return (AdViewOverlayActivity)mmbaseactivity;
                }
            }
        }
        return null;
    }

}
