// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;

import android.content.Intent;
import android.os.AsyncTask;
import android.view.ViewGroup;
import android.widget.ImageButton;
import java.util.concurrent.atomic.AtomicBoolean;

// Referenced classes of package com.amazon.device.ads:
//            Assets, InAppBrowser

class buttonHeight extends AsyncTask
{

    private final int buttonHeight;
    private final int buttonWidth;
    private final Intent intent;
    private final ViewGroup layout;
    final InAppBrowser this$0;

    protected volatile Object doInBackground(Object aobj[])
    {
        return doInBackground((Void[])aobj);
    }

    protected transient Void doInBackground(Void avoid[])
    {
        InAppBrowser.access$302(InAppBrowser.this, InAppBrowser.access$400(InAppBrowser.this, Assets.getInstance().getFilePath("amazon_ads_leftarrow.png"), 9, -1, buttonWidth, buttonHeight));
        InAppBrowser.access$300(InAppBrowser.this).setContentDescription("inAppBrowserBackButton");
        InAppBrowser.access$300(InAppBrowser.this).setId(10537);
        InAppBrowser.access$502(InAppBrowser.this, InAppBrowser.access$400(InAppBrowser.this, Assets.getInstance().getFilePath("amazon_ads_rightarrow.png"), 1, InAppBrowser.access$300(InAppBrowser.this).getId(), buttonWidth, buttonHeight));
        InAppBrowser.access$500(InAppBrowser.this).setContentDescription("inAppBrowserForwardButton");
        InAppBrowser.access$500(InAppBrowser.this).setId(10794);
        InAppBrowser.access$602(InAppBrowser.this, InAppBrowser.access$400(InAppBrowser.this, Assets.getInstance().getFilePath("amazon_ads_close.png"), 11, -1, buttonWidth, buttonHeight));
        InAppBrowser.access$600(InAppBrowser.this).setContentDescription("inAppBrowserCloseButton");
        if (InAppBrowser.access$700(InAppBrowser.this))
        {
            InAppBrowser.access$802(InAppBrowser.this, InAppBrowser.access$400(InAppBrowser.this, Assets.getInstance().getFilePath("amazon_ads_open_external_browser.png"), 1, InAppBrowser.access$500(InAppBrowser.this).getId(), buttonWidth, buttonHeight));
            InAppBrowser.access$800(InAppBrowser.this).setContentDescription("inAppBrowserOpenExternalBrowserButton");
            InAppBrowser.access$800(InAppBrowser.this).setId(10795);
            InAppBrowser.access$902(InAppBrowser.this, InAppBrowser.access$400(InAppBrowser.this, Assets.getInstance().getFilePath("amazon_ads_refresh.png"), 1, InAppBrowser.access$800(InAppBrowser.this).getId(), buttonWidth, buttonHeight));
        } else
        {
            InAppBrowser.access$902(InAppBrowser.this, InAppBrowser.access$400(InAppBrowser.this, Assets.getInstance().getFilePath("amazon_ads_refresh.png"), 1, InAppBrowser.access$500(InAppBrowser.this).getId(), buttonWidth, buttonHeight));
        }
        InAppBrowser.access$900(InAppBrowser.this).setContentDescription("inAppBrowserRefreshButton");
        return null;
    }

    protected volatile void onPostExecute(Object obj)
    {
        onPostExecute((Void)obj);
    }

    protected void onPostExecute(Void void1)
    {
        layout.addView(InAppBrowser.access$300(InAppBrowser.this));
        layout.addView(InAppBrowser.access$500(InAppBrowser.this));
        layout.addView(InAppBrowser.access$900(InAppBrowser.this));
        layout.addView(InAppBrowser.access$600(InAppBrowser.this));
        if (InAppBrowser.access$700(InAppBrowser.this))
        {
            layout.addView(InAppBrowser.access$800(InAppBrowser.this));
        }
        InAppBrowser.access$1000(InAppBrowser.this, intent);
        InAppBrowser.access$1100(InAppBrowser.this).set(true);
    }

    public (Intent intent1, ViewGroup viewgroup, int i, int j)
    {
        this$0 = InAppBrowser.this;
        super();
        intent = intent1;
        layout = viewgroup;
        buttonWidth = i;
        buttonHeight = j;
    }
}
