// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;


// Referenced classes of package com.amazon.device.ads:
//            AppEventRegistrationHandler, AppEvent

class val.appEvent
    implements Runnable
{

    final AppEventRegistrationHandler this$0;
    final AppEvent val$appEvent;

    public void run()
    {
        appendAppEventToFile(val$appEvent);
    }

    _cls9()
    {
        this$0 = final_appeventregistrationhandler;
        val$appEvent = AppEvent.this;
        super();
    }
}
