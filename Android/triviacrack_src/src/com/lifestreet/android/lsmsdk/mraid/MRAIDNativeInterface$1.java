// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.lifestreet.android.lsmsdk.mraid;


// Referenced classes of package com.lifestreet.android.lsmsdk.mraid:
//            MRAIDNativeInterface

class val.methodParams
    implements Runnable
{

    final MRAIDNativeInterface this$0;
    final String val$methodName;
    final String val$methodParams;

    public void run()
    {
        MRAIDNativeInterface.access$000(MRAIDNativeInterface.this, val$methodName, val$methodParams);
    }

    ()
    {
        this$0 = final_mraidnativeinterface;
        val$methodName = s;
        val$methodParams = String.this;
        super();
    }
}
