// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;

import android.view.ViewGroup;
import android.webkit.WebView;

// Referenced classes of package com.amazon.device.ads:
//            ViewManager, Log

class val.webViews
    implements Runnable
{

    final ViewManager this$0;
    final WebView val$webViews[];

    public void run()
    {
        WebView awebview[] = val$webViews;
        int i = awebview.length;
        int j = 0;
        while (j < i) 
        {
            WebView webview = awebview[j];
            if (webview != null)
            {
                if (webview.getParent() != null)
                {
                    ((ViewGroup)webview.getParent()).removeView(webview);
                }
                try
                {
                    webview.destroy();
                }
                catch (IllegalArgumentException illegalargumentexception)
                {
                    Log.w("Caught an IllegalArgumentException while destroying a WebView: %s", illegalargumentexception.getMessage());
                }
            }
            j++;
        }
    }

    ()
    {
        this$0 = final_viewmanager;
        val$webViews = _5B_Landroid.webkit.WebView_3B_.this;
        super();
    }
}
