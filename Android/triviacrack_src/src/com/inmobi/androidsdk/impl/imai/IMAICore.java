// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.inmobi.androidsdk.impl.imai;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import com.inmobi.androidsdk.IMBrowserActivity;
import com.inmobi.androidsdk.bootstrapper.ConfigParams;
import com.inmobi.androidsdk.bootstrapper.IMAIConfigParams;
import com.inmobi.androidsdk.bootstrapper.Initializer;
import com.inmobi.androidsdk.impl.SDKUtil;
import com.inmobi.androidsdk.impl.imai.db.ClickData;
import com.inmobi.androidsdk.impl.imai.db.ClickDatabaseManager;
import com.inmobi.androidsdk.impl.net.HttpRequestCallback;
import com.inmobi.androidsdk.impl.net.RequestResponseManager;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.re.container.IMWebView;
import java.lang.ref.WeakReference;
import java.util.Random;

// Referenced classes of package com.inmobi.androidsdk.impl.imai:
//            IMAIClickEventList

public class IMAICore
{

    static Random a = new Random();

    public IMAICore()
    {
    }

    public static void fireErrorEvent(WeakReference weakreference, String s, String s1, String s2)
    {
        if (weakreference == null)
        {
            break MISSING_BLOCK_LABEL_111;
        }
        if (weakreference.get() != null)
        {
            Log.debug("[InMobi]-[Network]-4.3.0", (new StringBuilder()).append("Fire error event IMAI for action: ").append(s1).append(" ").append(s).toString());
            injectJavaScript((IMWebView)weakreference.get(), (new StringBuilder()).append("window._im_imai.broadcastEvent('error','").append(s).append("'").append(",'").append(s1).append("'").append(",'").append(s2).append("'").append(")").toString());
        }
        return;
        Exception exception;
        exception;
        Log.internal("[InMobi]-[Network]-4.3.0", "Exception", exception);
        return;
    }

    public static void fireOpenEmbeddedSuccessful(WeakReference weakreference, String s)
    {
        if (weakreference == null)
        {
            break MISSING_BLOCK_LABEL_114;
        }
        if (weakreference.get() != null)
        {
            Log.debug("[InMobi]-[Network]-4.3.0", "fireOpenEmbeddedSuccessful");
            if (!((IMWebView)weakreference.get()).mWebViewIsBrowserActivity && !((IMWebView)weakreference.get()).mIsInterstitialAd)
            {
                IMBrowserActivity.requestOnAdDismiss(((IMWebView)weakreference.get()).getWebviewHandler().obtainMessage(((IMWebView)weakreference.get()).getDismissMessage()));
                ((IMWebView)weakreference.get()).fireOnShowAdScreen();
            }
            injectJavaScript((IMWebView)weakreference.get(), (new StringBuilder()).append("window._im_imai.broadcastEvent('openEmbeddedSuccessful','").append(s).append("')").toString());
        }
        return;
        Exception exception;
        exception;
        Log.internal("[InMobi]-[Network]-4.3.0", "Exception", exception);
        return;
    }

    public static void fireOpenExternalSuccessful(WeakReference weakreference, String s)
    {
        if (weakreference == null)
        {
            break MISSING_BLOCK_LABEL_62;
        }
        if (weakreference.get() != null)
        {
            Log.debug("[InMobi]-[Network]-4.3.0", "fireOpenExternalSuccessful");
            ((IMWebView)weakreference.get()).fireOnLeaveApplication();
            injectJavaScript((IMWebView)weakreference.get(), (new StringBuilder()).append("window._im_imai.broadcastEvent('openExternalSuccessful','").append(s).append("')").toString());
        }
        return;
        Exception exception;
        exception;
        Log.internal("[InMobi]-[Network]-4.3.0", "Exception", exception);
        return;
    }

    public static void firePingInWebViewSuccessful(WeakReference weakreference, String s)
    {
        if (weakreference == null)
        {
            break MISSING_BLOCK_LABEL_52;
        }
        if (weakreference.get() != null)
        {
            Log.debug("[InMobi]-[Network]-4.3.0", "firePingInWebViewSuccessful");
            injectJavaScript((IMWebView)weakreference.get(), (new StringBuilder()).append("window._im_imai.broadcastEvent('pingInWebViewSuccessful','").append(s).append("')").toString());
        }
        return;
        Exception exception;
        exception;
        Log.internal("[InMobi]-[Network]-4.3.0", "Exception", exception);
        return;
    }

    public static void firePingSuccessful(WeakReference weakreference, String s)
    {
        if (weakreference == null)
        {
            break MISSING_BLOCK_LABEL_52;
        }
        if (weakreference.get() != null)
        {
            Log.debug("[InMobi]-[Network]-4.3.0", "firePingSuccessful");
            injectJavaScript((IMWebView)weakreference.get(), (new StringBuilder()).append("window._im_imai.broadcastEvent('pingSuccessful','").append(s).append("')").toString());
        }
        return;
        Exception exception;
        exception;
        Log.internal("[InMobi]-[Network]-4.3.0", "Exception", exception);
        return;
    }

    public static int getRandomNumber()
    {
        return a.nextInt();
    }

    public static void initialize()
    {
        (new RequestResponseManager()).init();
        ClickDatabaseManager.getInstance().setDBLimit(Initializer.getConfigParams().getImai().getmMaxDb());
    }

    public static void injectJavaScript(IMWebView imwebview, String s)
    {
        try
        {
            final class c
                implements Runnable
            {

                final IMWebView a;
                final String b;

                public void run()
                {
                    a.injectJavaScript(b);
                }

            c(IMWebView imwebview, String s)
            {
                a = imwebview;
                b = s;
                super();
            }
            }

            imwebview.getActivity().runOnUiThread(new c(imwebview, s));
            return;
        }
        catch (Exception exception)
        {
            Log.internal("[InMobi]-[Network]-4.3.0", "Error injecting javascript ", exception);
        }
    }

    public static void launchEmbeddedBrowser(WeakReference weakreference, String s)
    {
        Intent intent = new Intent(((IMWebView)weakreference.get()).getActivity(), com/inmobi/androidsdk/IMBrowserActivity);
        intent.putExtra("extra_url", s);
        intent.setFlags(0x10000000);
        IMBrowserActivity.setWebViewListener(((IMWebView)weakreference.get()).mListener);
        if (!((IMWebView)weakreference.get()).mWebViewIsBrowserActivity && !((IMWebView)weakreference.get()).mIsInterstitialAd && ((IMWebView)weakreference.get()).getStateVariable() == com.inmobi.re.container.IMWebView.ViewState.DEFAULT)
        {
            intent.putExtra("FIRST_INSTANCE", true);
            intent.putExtra("QAMODE", SDKUtil.getQAMode());
        }
        ((IMWebView)weakreference.get()).getActivity().getApplicationContext().startActivity(intent);
    }

    public static void launchExternalApp(String s)
    {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(s));
        intent.setFlags(0x10000000);
        InternalSDKUtil.getContext().startActivity(intent);
    }

    public static void ping(WeakReference weakreference, String s, boolean flag)
    {
        try
        {
            final class a
                implements Runnable
            {

                final String a;
                final boolean b;
                final WeakReference c;

                public void run()
                {
                    try
                    {
                        int i = Initializer.getConfigParams().getImai().getMaxRetry();
                        ClickData clickdata = new ClickData(a, b, false, i);
                        RequestResponseManager requestresponsemanager = new RequestResponseManager();
                        requestresponsemanager.init();
                        RequestResponseManager.mNetworkQueue.add(0, clickdata);
                        class a.a
                            implements HttpRequestCallback
                        {

                            final a a;

                            public void notifyResult(int i, Object obj)
                            {
                                Log.internal("[InMobi]-[Network]-4.3.0", (new StringBuilder()).append("Got PING callback. Status: ").append(i).toString());
                                if (i == 0)
                                {
                                    try
                                    {
                                        IMAICore.firePingSuccessful(a.c, a.a);
                                        return;
                                    }
                                    catch (Exception exception)
                                    {
                                        Log.internal("[InMobi]-[Network]-4.3.0", "Exception", exception);
                                    }
                                    break MISSING_BLOCK_LABEL_77;
                                }
                                IMAICore.fireErrorEvent(a.c, "IMAI Ping in http client failed", "ping", a.a);
                                return;
                            }

            a.a(a a1)
            {
                a = a1;
                super();
            }
                        }

                        requestresponsemanager.processClick(InternalSDKUtil.getContext(), new a(this));
                        return;
                    }
                    catch (Exception exception1)
                    {
                        Log.internal("[InMobi]-[Network]-4.3.0", "Exception ping in background", exception1);
                    }
                }

            a(String s, boolean flag, WeakReference weakreference)
            {
                a = s;
                b = flag;
                c = weakreference;
                super();
            }
            }

            ((IMWebView)weakreference.get()).getActivity().runOnUiThread(new a(s, flag, weakreference));
            return;
        }
        catch (Exception exception)
        {
            Log.internal("[InMobi]-[Network]-4.3.0", "Failed to ping", exception);
        }
    }

    public static void pingInWebview(WeakReference weakreference, String s, boolean flag)
    {
        try
        {
            final class b
                implements Runnable
            {

                final String a;
                final boolean b;
                final WeakReference c;

                public void run()
                {
                    try
                    {
                        int i = Initializer.getConfigParams().getImai().getMaxRetry();
                        ClickData clickdata = new ClickData(a, b, true, i);
                        RequestResponseManager requestresponsemanager = new RequestResponseManager();
                        requestresponsemanager.init();
                        RequestResponseManager.mNetworkQueue.add(0, clickdata);
                        class b.a
                            implements HttpRequestCallback
                        {

                            final b a;

                            public void notifyResult(int i, Object obj)
                            {
                                Log.internal("[InMobi]-[Network]-4.3.0", (new StringBuilder()).append("Got PING IN WEBVIEW callback. Status: ").append(i).toString());
                                if (i == 0)
                                {
                                    try
                                    {
                                        IMAICore.firePingInWebViewSuccessful(a.c, a.a);
                                        return;
                                    }
                                    catch (Exception exception)
                                    {
                                        Log.internal("[InMobi]-[Network]-4.3.0", "Exception", exception);
                                    }
                                    break MISSING_BLOCK_LABEL_77;
                                }
                                IMAICore.fireErrorEvent(a.c, "IMAI Ping in webview failed", "pingInWebview", a.a);
                                return;
                            }

            b.a(b b1)
            {
                a = b1;
                super();
            }
                        }

                        requestresponsemanager.processClick(InternalSDKUtil.getContext(), new a(this));
                        return;
                    }
                    catch (Exception exception1)
                    {
                        Log.internal("[InMobi]-[Network]-4.3.0", "Exception ping in background", exception1);
                    }
                }

            b(String s, boolean flag, WeakReference weakreference)
            {
                a = s;
                b = flag;
                c = weakreference;
                super();
            }
            }

            ((IMWebView)weakreference.get()).getActivity().runOnUiThread(new b(s, flag, weakreference));
            return;
        }
        catch (Exception exception)
        {
            Log.internal("[InMobi]-[Network]-4.3.0", "Failed to ping in webview", exception);
        }
    }

    public static boolean validateURL(String s)
    {
        if (s == null || "".equals(s.trim()))
        {
            Log.internal("[InMobi]-[Network]-4.3.0", "Null url passed");
            return false;
        } else
        {
            return true;
        }
    }

}
