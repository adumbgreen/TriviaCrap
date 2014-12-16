// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;

import java.lang.ref.WeakReference;
import java.util.concurrent.Callable;

// Referenced classes of package com.millennialmedia.android:
//            BridgeMMInlineVideo, MMWebView, MMLayout, MMJSResponse

class a
    implements Callable
{

    final BridgeMMInlineVideo a;

    public MMJSResponse call()
    {
        MMWebView mmwebview = (MMWebView)a.c.get();
        if (mmwebview != null)
        {
            MMLayout mmlayout = mmwebview.h();
            if (mmlayout != null)
            {
                mmlayout.o();
                return MMJSResponse.a();
            }
        }
        return MMJSResponse.b();
    }

    public volatile Object call()
    {
        return call();
    }

    (BridgeMMInlineVideo bridgemminlinevideo)
    {
        a = bridgemminlinevideo;
        super();
    }
}
