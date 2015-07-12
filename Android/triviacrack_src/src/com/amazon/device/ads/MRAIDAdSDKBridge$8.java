// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;

import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;

// Referenced classes of package com.amazon.device.ads:
//            MRAIDAdSDKBridge, AdControlAccessor, SizeProperty, ExpandProperties, 
//            Log, AdEvent

class val.expandProperties
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
        android.widget.utParams utparams;
        AdControlAccessor adcontrolaccessor;
        if (val$url != null)
        {
            MRAIDAdSDKBridge.access$2000(MRAIDAdSDKBridge.this).stashView();
            MRAIDAdSDKBridge.access$2702(MRAIDAdSDKBridge.this, flag);
        } else
        {
            MRAIDAdSDKBridge.access$2702(MRAIDAdSDKBridge.this, false);
        }
        sizeproperty = MRAIDAdSDKBridge.access$3200(MRAIDAdSDKBridge.this, val$expandProperties, val$url);
        MRAIDAdSDKBridge.access$3300(MRAIDAdSDKBridge.this);
        MRAIDAdSDKBridge.access$2000(MRAIDAdSDKBridge.this).moveViewToViewGroup(MRAIDAdSDKBridge.access$3400(MRAIDAdSDKBridge.this), new android.widget.utParams(-1, -1), flag);
        utparams = new android.widget.utParams(sizeproperty.getWidth(), sizeproperty.getHeight());
        utparams.addRule(13);
        MRAIDAdSDKBridge.access$3000(MRAIDAdSDKBridge.this).addView(MRAIDAdSDKBridge.access$3400(MRAIDAdSDKBridge.this), utparams);
        MRAIDAdSDKBridge.access$2500(MRAIDAdSDKBridge.this).addView(MRAIDAdSDKBridge.access$3000(MRAIDAdSDKBridge.this), new android.widget.utParams(-1, -1));
        adcontrolaccessor = MRAIDAdSDKBridge.access$2000(MRAIDAdSDKBridge.this);
        if (val$expandProperties.getUseCustomClose().booleanValue())
        {
            flag = false;
        }
        adcontrolaccessor.enableCloseButton(flag);
        MRAIDAdSDKBridge.access$2500(MRAIDAdSDKBridge.this).getViewTreeObserver().addOnGlobalLayoutListener(new android.view.ViewTreeObserver.OnGlobalLayoutListener() {

            final MRAIDAdSDKBridge._cls8 this$1;
            private boolean triggered;

            public void onGlobalLayout()
            {
                if (!triggered)
                {
                    triggered = true;
                    Log.d(MRAIDAdSDKBridge.access$2800(), "Expand ViewTreeObserver fired");
                    MRAIDAdSDKBridge.access$2000(this$0).fireAdEvent(new AdEvent(AdEvent.AdEventType.EXPANDED));
                    MRAIDAdSDKBridge.access$2000(this$0).injectJavascript("mraidBridge.stateChange('expanded');");
                    reportSizeChangeEvent();
                    orientationPropertyChange();
                }
            }

            
            {
                this$1 = MRAIDAdSDKBridge._cls8.this;
                super();
                triggered = false;
            }
        });
    }

    _cls1.triggered()
    {
        this$0 = final_mraidadsdkbridge;
        val$url = s;
        val$expandProperties = ExpandProperties.this;
        super();
    }
}
