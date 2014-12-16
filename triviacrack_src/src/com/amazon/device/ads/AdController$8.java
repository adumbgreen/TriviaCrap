// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;

import android.view.KeyEvent;
import android.view.View;

// Referenced classes of package com.amazon.device.ads:
//            AdController

class this._cls0
    implements android.view.ner
{

    final AdController this$0;

    public boolean onKey(View view, int i, KeyEvent keyevent)
    {
        if (i == 4 && keyevent.getRepeatCount() == 0)
        {
            closeAd();
            return true;
        } else
        {
            return false;
        }
    }

    ()
    {
        this$0 = AdController.this;
        super();
    }
}
