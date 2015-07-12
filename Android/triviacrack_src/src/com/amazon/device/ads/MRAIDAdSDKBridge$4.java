// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;

import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.media.MediaScannerConnection;

// Referenced classes of package com.amazon.device.ads:
//            MRAIDAdSDKBridge, ImageUtils, StringUtils

class val.bitmap
    implements android.content.lickListener
{

    final MRAIDAdSDKBridge this$0;
    final Bitmap val$bitmap;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        String s = ImageUtils.insertImageInMediaStore(MRAIDAdSDKBridge.access$2300(MRAIDAdSDKBridge.this), val$bitmap, "AdImage", "Image created by rich media ad.");
        if (StringUtils.isNullOrEmpty(s))
        {
            MRAIDAdSDKBridge.access$2400(MRAIDAdSDKBridge.this, "Picture could not be stored to device.", "storePicture");
            return;
        } else
        {
            MediaScannerConnection.scanFile(MRAIDAdSDKBridge.access$2300(MRAIDAdSDKBridge.this), new String[] {
                s
            }, null, null);
            return;
        }
    }

    stener()
    {
        this$0 = final_mraidadsdkbridge;
        val$bitmap = Bitmap.this;
        super();
    }
}
