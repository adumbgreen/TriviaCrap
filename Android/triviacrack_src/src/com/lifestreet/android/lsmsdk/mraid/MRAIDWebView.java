// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.lifestreet.android.lsmsdk.mraid;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.lifestreet.android.lsmsdk.commons.LSMLogger;
import java.util.logging.Logger;

// Referenced classes of package com.lifestreet.android.lsmsdk.mraid:
//            MRAIDNativeInterface

public final class MRAIDWebView extends WebView
{

    public MRAIDWebView(Context context, WebViewClient webviewclient, MRAIDNativeInterface mraidnativeinterface)
    {
        super(context);
        setLayoutParams(new android.widget.FrameLayout.LayoutParams(-1, -1));
        setWebViewClient(webviewclient);
        addJavascriptInterface(mraidnativeinterface, "MRAIDNativeInterface");
        setWebChromeClient(new WebChromeClient() {

            final MRAIDWebView this$0;

            public void onConsoleMessage(String s, int i, String s1)
            {
                LSMLogger.LOGGER.info((new StringBuilder()).append("WebCore (").append(i).append("): ").append(s).toString());
            }

            
            {
                this$0 = MRAIDWebView.this;
                super();
            }
        });
        setHorizontalScrollBarEnabled(false);
        setVerticalScrollBarEnabled(false);
        setBackgroundColor(0);
        WebSettings websettings = getSettings();
        websettings.setSupportMultipleWindows(false);
        websettings.setPluginsEnabled(true);
        websettings.setSavePassword(false);
        websettings.setSaveFormData(false);
        websettings.setJavaScriptEnabled(true);
        websettings.setJavaScriptCanOpenWindowsAutomatically(false);
        websettings.setSupportZoom(false);
        websettings.setBuiltInZoomControls(false);
        websettings.setCacheMode(2);
        setOnTouchListener(new android.view.View.OnTouchListener() {

            final MRAIDWebView this$0;

            public boolean onTouch(View view, MotionEvent motionevent)
            {
                return motionevent.getAction() == 2;
            }

            
            {
                this$0 = MRAIDWebView.this;
                super();
            }
        });
    }
}
