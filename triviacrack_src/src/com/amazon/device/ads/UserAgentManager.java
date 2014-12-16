// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;

import android.content.Context;
import android.os.Looper;
import android.webkit.WebSettings;
import android.webkit.WebView;

// Referenced classes of package com.amazon.device.ads:
//            AndroidTargetUtils, Version, WebViewFactory, ThreadUtils

class UserAgentManager
{

    private String userAgentStringWithSDKVersion;
    private String userAgentStringWithoutSDKVersion;

    UserAgentManager()
    {
    }

    public String getUserAgentString()
    {
        return userAgentStringWithSDKVersion;
    }

    public void populateUserAgentString(final Context context)
    {
label0:
        {
            if (userAgentStringWithSDKVersion == null)
            {
                if (!AndroidTargetUtils.isAtLeastAndroidAPI(7))
                {
                    break label0;
                }
                userAgentStringWithoutSDKVersion = System.getProperty("http.agent");
                userAgentStringWithSDKVersion = (new StringBuilder()).append(userAgentStringWithoutSDKVersion).append(" ").append(Version.getUserAgentSDKVersion()).toString();
            }
            return;
        }
        if (Thread.currentThread() == Looper.getMainLooper().getThread())
        {
            userAgentStringWithoutSDKVersion = WebViewFactory.getInstance().createWebView(context).getSettings().getUserAgentString();
            userAgentStringWithSDKVersion = (new StringBuilder()).append(userAgentStringWithoutSDKVersion).append(" ").append(Version.getUserAgentSDKVersion()).toString();
            return;
        } else
        {
            ThreadUtils.executeOnMainThread(new Runnable() {

                final UserAgentManager this$0;
                final Context val$context;

                public void run()
                {
                    userAgentStringWithoutSDKVersion = WebViewFactory.getInstance().createWebView(context).getSettings().getUserAgentString();
                    userAgentStringWithSDKVersion = (new StringBuilder()).append(userAgentStringWithoutSDKVersion).append(" ").append(Version.getUserAgentSDKVersion()).toString();
                }

            
            {
                this$0 = UserAgentManager.this;
                context = context1;
                super();
            }
            });
            return;
        }
    }

    public void setUserAgentString(String s)
    {
        if (s != null && !s.equals(userAgentStringWithoutSDKVersion))
        {
            userAgentStringWithoutSDKVersion = s;
            userAgentStringWithSDKVersion = (new StringBuilder()).append(s).append(" ").append(Version.getUserAgentSDKVersion()).toString();
        }
    }



/*
    static String access$002(UserAgentManager useragentmanager, String s)
    {
        useragentmanager.userAgentStringWithoutSDKVersion = s;
        return s;
    }

*/


/*
    static String access$102(UserAgentManager useragentmanager, String s)
    {
        useragentmanager.userAgentStringWithSDKVersion = s;
        return s;
    }

*/
}
