// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;

import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.concurrent.Callable;

// Referenced classes of package com.millennialmedia.android:
//            BridgeMMInlineVideo, MMWebView, MMLayout, MMJSResponse

class a
    implements Callable
{

    final Map a;
    final BridgeMMInlineVideo b;

    public MMJSResponse call()
    {
        MMWebView mmwebview = (MMWebView)b.c.get();
        if (mmwebview != null)
        {
            MMLayout mmlayout = mmwebview.h();
            mmlayout.b(new Params(a, mmwebview.getContext()));
            return MMJSResponse.a((new StringBuilder()).append("usingStreaming=").append(mmlayout.r()).toString());
        } else
        {
            return MMJSResponse.b();
        }
    }

    public volatile Object call()
    {
        return call();
    }

    Params(BridgeMMInlineVideo bridgemminlinevideo, Map map)
    {
        b = bridgemminlinevideo;
        a = map;
        super();
    }
}
