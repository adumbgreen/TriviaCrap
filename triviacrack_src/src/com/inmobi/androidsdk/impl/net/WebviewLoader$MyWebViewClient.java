// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.inmobi.androidsdk.impl.net;

import android.net.http.SslError;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.inmobi.commons.internal.Log;
import java.util.concurrent.atomic.AtomicBoolean;

// Referenced classes of package com.inmobi.androidsdk.impl.net:
//            WebviewLoader, RequestResponseManager

public class  extends WebViewClient
{

    public void onPageFinished(WebView webview, String s)
    {
        Log.internal("[InMobi]-[Network]-4.3.0", (new StringBuilder()).append("On page Finished ").append(s).toString());
        if (!WebviewLoader.b.compareAndSet(true, false))
        {
            break MISSING_BLOCK_LABEL_59;
        }
        RequestResponseManager.c.set(true);
        synchronized (RequestResponseManager.a)
        {
            RequestResponseManager.a.notify();
        }
        try
        {
            super.onPageFinished(webview, s);
            return;
        }
        catch (Exception exception)
        {
            Log.internal("[InMobi]-[Network]-4.3.0", "Exception onPageFinished", exception);
        }
        break MISSING_BLOCK_LABEL_83;
        exception1;
        thread;
        JVM INSTR monitorexit ;
        throw exception1;
    }

    public void onReceivedError(WebView webview, int i, String s, String s1)
    {
        Log.internal("[InMobi]-[Network]-4.3.0", (new StringBuilder()).append("Processing click in webview error ").append(i).append(" Failing url: ").append(s1).append("Error description ").append(s).toString());
        WebviewLoader.b.set(false);
        RequestResponseManager.c.set(false);
        super.onReceivedError(webview, i, s, s1);
        synchronized (RequestResponseManager.a)
        {
            RequestResponseManager.a.notify();
        }
        return;
        exception1;
        thread;
        JVM INSTR monitorexit ;
        try
        {
            throw exception1;
        }
        catch (Exception exception)
        {
            Log.internal("[InMobi]-[Network]-4.3.0", "Exception onReceived error callback webview", exception);
        }
        return;
    }

    public void onReceivedSslError(WebView webview, SslErrorHandler sslerrorhandler, SslError sslerror)
    {
        Log.internal("[InMobi]-[Network]-4.3.0", (new StringBuilder()).append("SSL Error.Webview will proceed ").append(sslerror).toString());
        sslerrorhandler.proceed();
        super.onReceivedSslError(webview, sslerrorhandler, sslerror);
    }

    public boolean shouldOverrideUrlLoading(WebView webview, String s)
    {
        Log.internal("[InMobi]-[Network]-4.3.0", (new StringBuilder()).append("Should override ").append(s).toString());
        webview.loadUrl(s);
        return true;
    }

    protected ()
    {
    }
}
