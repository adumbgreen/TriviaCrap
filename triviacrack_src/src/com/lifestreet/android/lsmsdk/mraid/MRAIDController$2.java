// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.lifestreet.android.lsmsdk.mraid;


// Referenced classes of package com.lifestreet.android.lsmsdk.mraid:
//            MRAIDController, MRAIDView

class val.expandHeight
    implements Runnable
{

    final MRAIDController this$0;
    final int val$expandHeight;
    final int val$expandWidth;
    final String val$responseBody;

    public void run()
    {
        MRAIDView mraidview = getMraidView();
        if (mraidview != null)
        {
            mraidview.expandToSizeWithContent(val$responseBody, val$expandWidth, val$expandHeight);
        }
    }

    ()
    {
        this$0 = final_mraidcontroller;
        val$responseBody = s;
        val$expandWidth = i;
        val$expandHeight = I.this;
        super();
    }
}
