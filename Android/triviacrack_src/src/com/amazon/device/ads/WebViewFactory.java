// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewDatabase;

// Referenced classes of package com.amazon.device.ads:
//            AndroidTargetUtils, DebugProperties, InternalAdRegistration, IInternalAdRegistration, 
//            RegistrationInfo, DeviceInfo, Log

class WebViewFactory
{

    private static WebViewFactory instance = new WebViewFactory();
    private static boolean isWebViewCheckedAndOk = false;
    private boolean cookieSyncManagerCreated;

    protected WebViewFactory()
    {
        cookieSyncManagerCreated = false;
        shouldDebugWebViews();
    }

    protected static boolean doesExceptionContainLockedDatabaseMessage(Exception exception)
    {
        if (exception == null || exception.getMessage() == null)
        {
            return false;
        } else
        {
            return exception.getMessage().contains("database is locked");
        }
    }

    public static final WebViewFactory getInstance()
    {
        return instance;
    }

    protected static boolean isDatabaseLocked(SQLiteException sqliteexception)
    {
        if (android.os.Build.VERSION.SDK_INT >= 11)
        {
            return AndroidTargetUtils.isInstanceOfSQLiteDatabaseLockedException(sqliteexception);
        } else
        {
            return doesExceptionContainLockedDatabaseMessage(sqliteexception);
        }
    }

    public static boolean isWebViewOk(Context context)
    {
        if (android.os.Build.VERSION.SDK_INT > 8 || isWebViewCheckedAndOk) goto _L2; else goto _L1
_L1:
        WebViewDatabase webviewdatabase;
        boolean flag;
        webviewdatabase = WebViewDatabase.getInstance(context);
        flag = false;
        if (webviewdatabase != null) goto _L4; else goto _L3
_L3:
        return flag;
_L4:
        SQLiteDatabase sqlitedatabase = context.openOrCreateDatabase("webviewCache.db", 0, null);
        if (sqlitedatabase != null)
        {
            sqlitedatabase.close();
        }
        isWebViewCheckedAndOk = true;
_L2:
        return true;
        SQLiteException sqliteexception;
        sqliteexception;
        boolean flag1 = isDatabaseLocked(sqliteexception);
        flag = flag1;
        if (true) goto _L3; else goto _L5
_L5:
        null.close();
        return flag;
        Exception exception;
        exception;
        if (false)
        {
            null.close();
        }
        throw exception;
    }

    private void shouldDebugWebViews()
    {
        if (DebugProperties.getDebugPropertyAsBoolean("debug.webViews", false))
        {
            AndroidTargetUtils.enableWebViewDebugging(true);
        }
    }

    private void updateAdIdCookie()
    {
        if (cookieSyncManagerCreated)
        {
            String s = InternalAdRegistration.getInstance().getRegistrationInfo().getAdId();
            if (s == null)
            {
                s = "";
            }
            setCookie("http://amazon-adsystem.com", (new StringBuilder()).append("ad-id=").append(s).append("; Domain=.amazon-adsystem.com").toString());
        }
    }

    public WebView createWebView(Context context)
    {
        this;
        JVM INSTR monitorenter ;
        WebView webview;
        webview = new WebView(context);
        InternalAdRegistration.getInstance().getDeviceInfo().setUserAgentString(webview.getSettings().getUserAgentString());
        webview.getSettings().setUserAgentString(InternalAdRegistration.getInstance().getDeviceInfo().getUserAgentString());
        if (!cookieSyncManagerCreated)
        {
            CookieSyncManager.createInstance(context);
            cookieSyncManagerCreated = true;
        }
        updateAdIdCookie();
        this;
        JVM INSTR monitorexit ;
        return webview;
        Exception exception;
        exception;
        throw exception;
    }

    protected void setCookie(String s, String s1)
    {
        CookieManager.getInstance().setCookie(s, s1);
    }

    public final boolean setJavaScriptEnabledForWebView(boolean flag, WebView webview, String s)
    {
        try
        {
            webview.getSettings().setJavaScriptEnabled(flag);
        }
        catch (NullPointerException nullpointerexception)
        {
            Log.w(s, "Could not set JavaScriptEnabled because a NullPointerException was encountered.");
            return false;
        }
        return true;
    }

}
