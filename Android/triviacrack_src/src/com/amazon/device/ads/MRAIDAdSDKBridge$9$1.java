// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;

import android.graphics.Rect;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;

// Referenced classes of package com.amazon.device.ads:
//            MRAIDAdSDKBridge, AdEvent, AdControlAccessor, CurrentPosition, 
//            ResizeProperties, AdUtils, RelativePosition, SizeProperty

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
            int ai[] = new int[2];
            MRAIDAdSDKBridge.access$3100(_fld0).getLocationOnScreen(ai);
            Rect rect = new Rect(ai[0], ai[1], ai[0] + MRAIDAdSDKBridge.access$3100(_fld0).getWidth(), ai[1] + MRAIDAdSDKBridge.access$3100(_fld0).getHeight());
            AdEvent adevent = new AdEvent(ESIZED);
            adevent.setParameter("positionOnScreen", rect);
            MRAIDAdSDKBridge.access$2000(_fld0).fireAdEvent(adevent);
            MRAIDAdSDKBridge.access$2000(_fld0).injectJavascript("mraidBridge.stateChange('resized');");
            reportSizeChangeEvent();
        }
    }

    l.resizeSize()
    {
        this$1 = this._cls1.this;
        super();
        triggered = false;
    }

    // Unreferenced inner class com/amazon/device/ads/MRAIDAdSDKBridge$9

/* anonymous class */
    class MRAIDAdSDKBridge._cls9
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
            i = AdUtils.deviceIndependentPixelToPixel(MRAIDAdSDKBridge.access$3600(MRAIDAdSDKBridge.this).getX() + resizeProperties.getOffsetX());
            j = AdUtils.deviceIndependentPixelToPixel(MRAIDAdSDKBridge.access$3600(MRAIDAdSDKBridge.this).getY() + resizeProperties.getOffsetY());
            relativeposition = RelativePosition.fromString(resizeProperties.getCustomClosePosition());
            AdControlAccessor.SizeDimensions sizedimensions = MRAIDAdSDKBridge.access$2000(MRAIDAdSDKBridge.this).getMaxSize(false);
            k = AdUtils.deviceIndependentPixelToPixel(sizedimensions.getWidth());
            l = AdUtils.deviceIndependentPixelToPixel(sizedimensions.getHeight());
            if (resizeProperties.getAllowOffscreen().booleanValue()) goto _L2; else goto _L1
_L1:
            if (resizeSize.getWidth() > k)
            {
                resizeSize.setWidth(k);
            }
            if (resizeSize.getHeight() > l)
            {
                resizeSize.setHeight(l);
            }
            if (i >= 0) goto _L4; else goto _L3
_L3:
            i = 0;
_L8:
            android.widget.RelativeLayout.LayoutParams layoutparams;
            android.widget.FrameLayout.LayoutParams layoutparams1;
            if (j < 0)
            {
                j = 0;
            } else
            if (j + resizeSize.getHeight() > l)
            {
                j = l - resizeSize.getHeight();
            }
_L6:
            MRAIDAdSDKBridge.access$2602(MRAIDAdSDKBridge.this, true);
            layoutparams = new android.widget.RelativeLayout.LayoutParams(resizeSize.getWidth(), resizeSize.getHeight());
            MRAIDAdSDKBridge.access$2000(MRAIDAdSDKBridge.this).moveViewToViewGroup(MRAIDAdSDKBridge.access$3100(MRAIDAdSDKBridge.this), layoutparams, false);
            layoutparams1 = new android.widget.FrameLayout.LayoutParams(resizeSize.getWidth(), resizeSize.getHeight());
            layoutparams1.gravity = 48;
            layoutparams1.leftMargin = i;
            layoutparams1.topMargin = j;
            if (MRAIDAdSDKBridge.access$2500(MRAIDAdSDKBridge.this).equals(MRAIDAdSDKBridge.access$3100(MRAIDAdSDKBridge.this).getParent()))
            {
                MRAIDAdSDKBridge.access$3100(MRAIDAdSDKBridge.this).setLayoutParams(layoutparams1);
            } else
            {
                MRAIDAdSDKBridge.access$2500(MRAIDAdSDKBridge.this).addView(MRAIDAdSDKBridge.access$3100(MRAIDAdSDKBridge.this), layoutparams1);
            }
            MRAIDAdSDKBridge.access$2000(MRAIDAdSDKBridge.this).enableCloseButton(false, relativeposition);
            MRAIDAdSDKBridge.access$2500(MRAIDAdSDKBridge.this).getViewTreeObserver().addOnGlobalLayoutListener(new MRAIDAdSDKBridge._cls9._cls1());
            return;
_L4:
            if (i + resizeSize.getWidth() > k)
            {
                i = k - resizeSize.getWidth();
            }
            continue; /* Loop/switch isn't completed */
_L2:
            if (MRAIDAdSDKBridge.access$3700(MRAIDAdSDKBridge.this, relativeposition, j, i, resizeSize, k, l)) goto _L6; else goto _L5
_L5:
            MRAIDAdSDKBridge.access$2400(MRAIDAdSDKBridge.this, "Resize failed because close event area must be entirely on screen.", "resize");
            return;
            if (true) goto _L8; else goto _L7
_L7:
        }

            
            {
                this$0 = final_mraidadsdkbridge;
                resizeProperties = resizeproperties;
                resizeSize = SizeProperty.this;
                super();
            }
    }

}
