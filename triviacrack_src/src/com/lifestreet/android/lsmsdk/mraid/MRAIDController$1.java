// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.lifestreet.android.lsmsdk.mraid;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import java.util.Set;

// Referenced classes of package com.lifestreet.android.lsmsdk.mraid:
//            MRAIDController, MRAIDView

class this._cls0 extends BroadcastReceiver
{

    final MRAIDController this$0;

    private void runAction(String s)
    {
        if ("com.lifestreet.action.PRESENT_SCREEN".equals(s))
        {
            MRAIDController.access$000(MRAIDController.this);
        } else
        if ("com.lifestreet.action.DISMISS_SCREEN".equals(s))
        {
            MRAIDView mraidview = getMraidView();
            if (mraidview != null)
            {
                mraidview.onCloseMraidActivity();
                return;
            }
        }
    }

    public void onReceive(Context context, Intent intent)
    {
        if (intent != null)
        {
            String s = intent.getAction();
            if (intent.getCategories().contains("com.lifestreet.category.MRAIDActivity"))
            {
                long l = intent.getLongExtra("com.lifestreet.extra.VIEW_ID", -1L);
                MRAIDView mraidview = getMraidView();
                if (mraidview != null && mraidview.getViewId() == l)
                {
                    runAction(s);
                }
            }
        }
    }

    ()
    {
        this$0 = MRAIDController.this;
        super();
    }
}
