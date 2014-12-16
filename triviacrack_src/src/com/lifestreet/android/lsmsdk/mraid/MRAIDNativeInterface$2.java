// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.lifestreet.android.lsmsdk.mraid;


// Referenced classes of package com.lifestreet.android.lsmsdk.mraid:
//            MRAIDNativeInterface, MRAIDController

class val.height
    implements Runnable
{

    final MRAIDNativeInterface this$0;
    final String val$browserUserAgent;
    final int val$height;
    final String val$url;
    final int val$width;

    public void run()
    {
        MRAIDController mraidcontroller = MRAIDNativeInterface.access$100(MRAIDNativeInterface.this);
        if (mraidcontroller != null)
        {
            mraidcontroller.loadURLAndExpand(val$url, val$browserUserAgent, val$width, val$height);
        }
    }

    ()
    {
        this$0 = final_mraidnativeinterface;
        val$url = s;
        val$browserUserAgent = s1;
        val$width = i;
        val$height = I.this;
        super();
    }
}
