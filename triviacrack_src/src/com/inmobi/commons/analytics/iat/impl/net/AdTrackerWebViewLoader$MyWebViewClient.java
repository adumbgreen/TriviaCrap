// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.inmobi.commons.analytics.iat.impl.net;

import android.net.http.SslError;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.inmobi.commons.analytics.iat.impl.AdTrackerUtils;
import com.inmobi.commons.analytics.iat.impl.config.AdTrackerEventType;
import com.inmobi.commons.internal.FileOperations;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import java.util.concurrent.atomic.AtomicBoolean;

// Referenced classes of package com.inmobi.commons.analytics.iat.impl.net:
//            AdTrackerWebViewLoader, AdTrackerNetworkInterface

public class a extends WebViewClient
{

    final AdTrackerWebViewLoader a;

    public void onReceivedError(WebView webview, int i, String s, String s1)
    {
        if (!AdTrackerWebViewLoader.b().compareAndSet(true, false))
        {
            break MISSING_BLOCK_LABEL_56;
        }
        AdTrackerNetworkInterface.setWebviewUploadStatus(false);
        synchronized (AdTrackerNetworkInterface.getNetworkThread())
        {
            AdTrackerNetworkInterface.getNetworkThread().notify();
        }
        try
        {
            AdTrackerUtils.reportMetric(AdTrackerEventType.GOAL_FAILURE, AdTrackerWebViewLoader.b(a), 0, 0L, i, null);
            Log.internal("[InMobi]-[AdTracker]-4.3.0", "Webview Received Error");
        }
        catch (Exception exception)
        {
            Log.internal("[InMobi]-[AdTracker]-4.3.0", "Exception onReceived Error", exception);
        }
        super.onReceivedError(webview, i, s, s1);
        return;
        exception1;
        thread;
        JVM INSTR monitorexit ;
        throw exception1;
    }

    public void onReceivedSslError(WebView webview, SslErrorHandler sslerrorhandler, SslError sslerror)
    {
        Log.internal("[InMobi]-[AdTracker]-4.3.0", (new StringBuilder()).append("SSL Error. Proceeding").append(sslerror).toString());
        if (!AdTrackerWebViewLoader.b().compareAndSet(true, false))
        {
            break MISSING_BLOCK_LABEL_83;
        }
        AdTrackerNetworkInterface.setWebviewUploadStatus(false);
        synchronized (AdTrackerNetworkInterface.getNetworkThread())
        {
            AdTrackerNetworkInterface.getNetworkThread().notify();
        }
        try
        {
            AdTrackerUtils.reportMetric(AdTrackerEventType.GOAL_FAILURE, AdTrackerWebViewLoader.b(a), 0, 0L, sslerror.getPrimaryError(), null);
            Log.internal("[InMobi]-[AdTracker]-4.3.0", "Webview Received SSL Error");
        }
        catch (Exception exception)
        {
            Log.internal("[InMobi]-[AdTracker]-4.3.0", "Exception onReceived SSL Error", exception);
        }
        sslerrorhandler.proceed();
        return;
        exception1;
        thread;
        JVM INSTR monitorexit ;
        throw exception1;
    }

    public boolean shouldOverrideUrlLoading(WebView webview, String s)
    {
        if (!AdTrackerWebViewLoader.b().compareAndSet(true, false)) goto _L2; else goto _L1
_L1:
        AdTrackerWebViewLoader.a(a, System.currentTimeMillis() - AdTrackerWebViewLoader.a(a));
        if (!s.contains("iat")) goto _L4; else goto _L3
_L3:
        a a1;
        String s1 = s.substring(7);
        a1 = AdTrackerWebViewLoader.a(a, s1);
        if (a1 != null) goto _L6; else goto _L5
_L5:
        AdTrackerNetworkInterface.setWebviewUploadStatus(false);
_L4:
        synchronized (AdTrackerNetworkInterface.getNetworkThread())
        {
            AdTrackerNetworkInterface.getNetworkThread().notify();
        }
_L2:
        try
        {
            webview.loadUrl(s);
        }
        catch (Exception exception)
        {
            Log.internal("[InMobi]-[AdTracker]-4.3.0", "Exception Should Override Error", exception);
            return true;
        }
        return true;
_L6:
        FileOperations.setPreferences(InternalSDKUtil.getContext(), "IMAdTrackerStatusUpload", "errcode", Integer.toString(ead(a1)));
        if (5000 != ead(a1))
        {
            AdTrackerNetworkInterface.setWebviewUploadStatus(false);
            AdTrackerUtils.reportMetric(AdTrackerEventType.GOAL_FAILURE, AdTrackerWebViewLoader.b(a), 0, 0L, a(a1), null);
            continue; /* Loop/switch isn't completed */
        }
        if (AdTrackerWebViewLoader.b(a, a(a1)))
        {
            AdTrackerNetworkInterface.setWebviewUploadStatus(true);
            continue; /* Loop/switch isn't completed */
        }
        AdTrackerNetworkInterface.setWebviewUploadStatus(false);
        if (true) goto _L4; else goto _L7
_L7:
        exception1;
        thread;
        JVM INSTR monitorexit ;
        throw exception1;
    }

    protected (AdTrackerWebViewLoader adtrackerwebviewloader)
    {
        a = adtrackerwebviewloader;
        super();
    }
}
