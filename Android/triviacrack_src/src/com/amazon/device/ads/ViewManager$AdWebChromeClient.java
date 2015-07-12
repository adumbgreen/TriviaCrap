// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;

import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebView;

// Referenced classes of package com.amazon.device.ads:
//            ViewManager, Log

class <init> extends WebChromeClient
{

    final ViewManager this$0;

    public boolean onJsAlert(WebView webview, String s, String s1, JsResult jsresult)
    {
        Log.d(ViewManager.access$100(), s1);
        return false;
    }

    private _cls9()
    {
        this$0 = ViewManager.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
