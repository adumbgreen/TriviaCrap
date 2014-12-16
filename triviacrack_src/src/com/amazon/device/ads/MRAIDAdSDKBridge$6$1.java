// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;

import android.app.Activity;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;

// Referenced classes of package com.amazon.device.ads:
//            AdEvent, AdControlAccessor, MRAIDAdSDKBridge, Log

class triggered
    implements android.view.obalLayoutListener
{

    final rtSizeChangeEvent this$1;
    private boolean triggered;

    public void onGlobalLayout()
    {
        if (!triggered)
        {
            triggered = true;
            adControlAccessor.fireAdEvent(new AdEvent(LOSED));
            adControlAccessor.injectJavascript("mraidBridge.stateChange('default');");
            reportSizeChangeEvent();
        }
    }

    l.adControlAccessor()
    {
        this$1 = this._cls1.this;
        super();
        triggered = false;
    }

    // Unreferenced inner class com/amazon/device/ads/MRAIDAdSDKBridge$6

/* anonymous class */
    class MRAIDAdSDKBridge._cls6
        implements Runnable
    {

        final MRAIDAdSDKBridge this$0;
        final AdControlAccessor val$adControlAccessor;

        public void run()
        {
            MRAIDAdSDKBridge.access$2502(MRAIDAdSDKBridge.this, (FrameLayout)((Activity)MRAIDAdSDKBridge.access$2300(MRAIDAdSDKBridge.this)).findViewById(0x1020002));
            MRAIDAdSDKBridge.access$2602(MRAIDAdSDKBridge.this, false);
            android.widget.FrameLayout.LayoutParams layoutparams;
            if (MRAIDAdSDKBridge.access$2700(MRAIDAdSDKBridge.this))
            {
                Log.d(MRAIDAdSDKBridge.access$2800(), "Expanded With URL");
                adControlAccessor.popView();
            } else
            {
                Log.d(MRAIDAdSDKBridge.access$2800(), "Not Expanded with URL");
            }
            MRAIDAdSDKBridge.access$2900(MRAIDAdSDKBridge.this);
            layoutparams = new android.widget.FrameLayout.LayoutParams(-1, -1, 17);
            adControlAccessor.moveViewBackToParent(layoutparams);
            adControlAccessor.removeCloseButton();
            if (MRAIDAdSDKBridge.access$3000(MRAIDAdSDKBridge.this) != null)
            {
                MRAIDAdSDKBridge.access$2500(MRAIDAdSDKBridge.this).removeView(MRAIDAdSDKBridge.access$3000(MRAIDAdSDKBridge.this));
            }
            if (MRAIDAdSDKBridge.access$3100(MRAIDAdSDKBridge.this) != null)
            {
                MRAIDAdSDKBridge.access$2500(MRAIDAdSDKBridge.this).removeView(MRAIDAdSDKBridge.access$3100(MRAIDAdSDKBridge.this));
            }
            MRAIDAdSDKBridge.access$2500(MRAIDAdSDKBridge.this).getViewTreeObserver().addOnGlobalLayoutListener(new MRAIDAdSDKBridge._cls6._cls1());
        }

            
            {
                this$0 = final_mraidadsdkbridge;
                adControlAccessor = AdControlAccessor.this;
                super();
            }
    }

}
