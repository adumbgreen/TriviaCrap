// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;

import android.graphics.Rect;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;

// Referenced classes of package com.amazon.device.ads:
//            MRAIDAdSDKBridge, CurrentPosition, ResizeProperties, AdUtils, 
//            RelativePosition, AdControlAccessor, SizeProperty, AdEvent

class val.resizeSize
    implements Runnable
{

    final MRAIDAdSDKBridge this$0;
    final ResizeProperties val$resizeProperties;
    final SizeProperty val$resizeSize;

    public void run()
    {
        int i;
        int j;
        RelativePosition relativeposition;
        int k;
        int l;
        MRAIDAdSDKBridge.access$3500(MRAIDAdSDKBridge.this);
        i = AdUtils.deviceIndependentPixelToPixel(MRAIDAdSDKBridge.access$3600(MRAIDAdSDKBridge.this).getX() + val$resizeProperties.getOffsetX());
        j = AdUtils.deviceIndependentPixelToPixel(MRAIDAdSDKBridge.access$3600(MRAIDAdSDKBridge.this).getY() + val$resizeProperties.getOffsetY());
        relativeposition = RelativePosition.fromString(val$resizeProperties.getCustomClosePosition());
        izeDimensions izedimensions = MRAIDAdSDKBridge.access$2000(MRAIDAdSDKBridge.this).getMaxSize(false);
        k = AdUtils.deviceIndependentPixelToPixel(izedimensions.getWidth());
        l = AdUtils.deviceIndependentPixelToPixel(izedimensions.getHeight());
        if (val$resizeProperties.getAllowOffscreen().booleanValue()) goto _L2; else goto _L1
_L1:
        if (val$resizeSize.getWidth() > k)
        {
            val$resizeSize.setWidth(k);
        }
        if (val$resizeSize.getHeight() > l)
        {
            val$resizeSize.setHeight(l);
        }
        if (i >= 0) goto _L4; else goto _L3
_L3:
        i = 0;
_L8:
        android.widget.utParams utparams;
        android.widget.arams arams;
        if (j < 0)
        {
            j = 0;
        } else
        if (j + val$resizeSize.getHeight() > l)
        {
            j = l - val$resizeSize.getHeight();
        }
_L6:
        MRAIDAdSDKBridge.access$2602(MRAIDAdSDKBridge.this, true);
        utparams = new android.widget.utParams(val$resizeSize.getWidth(), val$resizeSize.getHeight());
        MRAIDAdSDKBridge.access$2000(MRAIDAdSDKBridge.this).moveViewToViewGroup(MRAIDAdSDKBridge.access$3100(MRAIDAdSDKBridge.this), utparams, false);
        arams = new android.widget.arams(val$resizeSize.getWidth(), val$resizeSize.getHeight());
        arams.gravity = 48;
        arams.leftMargin = i;
        arams.topMargin = j;
        if (MRAIDAdSDKBridge.access$2500(MRAIDAdSDKBridge.this).equals(MRAIDAdSDKBridge.access$3100(MRAIDAdSDKBridge.this).getParent()))
        {
            MRAIDAdSDKBridge.access$3100(MRAIDAdSDKBridge.this).setLayoutParams(arams);
        } else
        {
            MRAIDAdSDKBridge.access$2500(MRAIDAdSDKBridge.this).addView(MRAIDAdSDKBridge.access$3100(MRAIDAdSDKBridge.this), arams);
        }
        MRAIDAdSDKBridge.access$2000(MRAIDAdSDKBridge.this).enableCloseButton(false, relativeposition);
        MRAIDAdSDKBridge.access$2500(MRAIDAdSDKBridge.this).getViewTreeObserver().addOnGlobalLayoutListener(new android.view.ViewTreeObserver.OnGlobalLayoutListener() {

            final MRAIDAdSDKBridge._cls9 this$1;
            private boolean triggered;

            public void onGlobalLayout()
            {
                if (!triggered)
                {
                    triggered = true;
                    int ai[] = new int[2];
                    MRAIDAdSDKBridge.access$3100(this$0).getLocationOnScreen(ai);
                    Rect rect = new Rect(ai[0], ai[1], ai[0] + MRAIDAdSDKBridge.access$3100(this$0).getWidth(), ai[1] + MRAIDAdSDKBridge.access$3100(this$0).getHeight());
                    AdEvent adevent = new AdEvent(AdEvent.AdEventType.RESIZED);
                    adevent.setParameter("positionOnScreen", rect);
                    MRAIDAdSDKBridge.access$2000(this$0).fireAdEvent(adevent);
                    MRAIDAdSDKBridge.access$2000(this$0).injectJavascript("mraidBridge.stateChange('resized');");
                    reportSizeChangeEvent();
                }
            }

            
            {
                this$1 = MRAIDAdSDKBridge._cls9.this;
                super();
                triggered = false;
            }
        });
        return;
_L4:
        if (i + val$resizeSize.getWidth() > k)
        {
            i = k - val$resizeSize.getWidth();
        }
        continue; /* Loop/switch isn't completed */
_L2:
        if (MRAIDAdSDKBridge.access$3700(MRAIDAdSDKBridge.this, relativeposition, j, i, val$resizeSize, k, l)) goto _L6; else goto _L5
_L5:
        MRAIDAdSDKBridge.access$2400(MRAIDAdSDKBridge.this, "Resize failed because close event area must be entirely on screen.", "resize");
        return;
        if (true) goto _L8; else goto _L7
_L7:
    }

    _cls1.triggered()
    {
        this$0 = final_mraidadsdkbridge;
        val$resizeProperties = resizeproperties;
        val$resizeSize = SizeProperty.this;
        super();
    }
}
