// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;

import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;

// Referenced classes of package com.amazon.device.ads:
//            MRAIDAdSDKBridge, Log, AdEvent, AdControlAccessor, 
//            SizeProperty, ExpandProperties

class triggered
    implements android.view.obalLayoutListener
{

    final ntationPropertyChange this$1;
    private boolean triggered;

    public void onGlobalLayout()
    {
        if (!triggered)
        {
            triggered = true;
            Log.d(MRAIDAdSDKBridge.access$2800(), "Expand ViewTreeObserver fired");
            MRAIDAdSDKBridge.access$2000(_fld0).fireAdEvent(new AdEvent(XPANDED));
            MRAIDAdSDKBridge.access$2000(_fld0).injectJavascript("mraidBridge.stateChange('expanded');");
            reportSizeChangeEvent();
            orientationPropertyChange();
        }
    }

    l.expandProperties()
    {
        this$1 = this._cls1.this;
        super();
        triggered = false;
    }

    // Unreferenced inner class com/amazon/device/ads/MRAIDAdSDKBridge$8

/* anonymous class */
    class MRAIDAdSDKBridge._cls8
        implements Runnable
    {

        final MRAIDAdSDKBridge this$0;
        final ExpandProperties val$expandProperties;
        final String val$url;

        public void run()
        {
            boolean flag = true;
            MRAIDAdSDKBridge.access$2602(MRAIDAdSDKBridge.this, false);
            SizeProperty sizeproperty;
            android.widget.RelativeLayout.LayoutParams layoutparams;
            AdControlAccessor adcontrolaccessor;
            if (url != null)
            {
                MRAIDAdSDKBridge.access$2000(MRAIDAdSDKBridge.this).stashView();
                MRAIDAdSDKBridge.access$2702(MRAIDAdSDKBridge.this, flag);
            } else
            {
                MRAIDAdSDKBridge.access$2702(MRAIDAdSDKBridge.this, false);
            }
            sizeproperty = MRAIDAdSDKBridge.access$3200(MRAIDAdSDKBridge.this, expandProperties, url);
            MRAIDAdSDKBridge.access$3300(MRAIDAdSDKBridge.this);
            MRAIDAdSDKBridge.access$2000(MRAIDAdSDKBridge.this).moveViewToViewGroup(MRAIDAdSDKBridge.access$3400(MRAIDAdSDKBridge.this), new android.widget.RelativeLayout.LayoutParams(-1, -1), flag);
            layoutparams = new android.widget.RelativeLayout.LayoutParams(sizeproperty.getWidth(), sizeproperty.getHeight());
            layoutparams.addRule(13);
            MRAIDAdSDKBridge.access$3000(MRAIDAdSDKBridge.this).addView(MRAIDAdSDKBridge.access$3400(MRAIDAdSDKBridge.this), layoutparams);
            MRAIDAdSDKBridge.access$2500(MRAIDAdSDKBridge.this).addView(MRAIDAdSDKBridge.access$3000(MRAIDAdSDKBridge.this), new android.widget.RelativeLayout.LayoutParams(-1, -1));
            adcontrolaccessor = MRAIDAdSDKBridge.access$2000(MRAIDAdSDKBridge.this);
            if (expandProperties.getUseCustomClose().booleanValue())
            {
                flag = false;
            }
            adcontrolaccessor.enableCloseButton(flag);
            MRAIDAdSDKBridge.access$2500(MRAIDAdSDKBridge.this).getViewTreeObserver().addOnGlobalLayoutListener(new MRAIDAdSDKBridge._cls8._cls1());
        }

            
            {
                this$0 = final_mraidadsdkbridge;
                url = s;
                expandProperties = ExpandProperties.this;
                super();
            }
    }

}
