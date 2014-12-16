// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.lifestreet.android.lsmsdk.mraid;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import java.util.Set;

// Referenced classes of package com.lifestreet.android.lsmsdk.mraid:
//            MRAIDActivity

class this._cls0 extends BroadcastReceiver
{

    final MRAIDActivity this$0;

    private void runAction(String s)
    {
        if ("com.lifestreet.action.CLOSE".equals(s))
        {
            finish();
        } else
        {
            if ("com.lifestreet.action.SHOW_CLOSE_BUTTON".equals(s))
            {
                MRAIDActivity.access$100(MRAIDActivity.this);
                return;
            }
            if ("com.lifestreet.action.HIDE_CLOSE_BUTTON".equals(s))
            {
                MRAIDActivity.access$200(MRAIDActivity.this);
                return;
            }
        }
    }

    public void onReceive(Context context, Intent intent)
    {
        if (intent != null)
        {
            String s = intent.getAction();
            if (intent.getCategories().contains("com.lifestreet.category.MRAIDActivity") && MRAIDActivity.access$000(MRAIDActivity.this) == intent.getLongExtra("com.lifestreet.extra.VIEW_ID", -1L))
            {
                runAction(s);
            }
        }
    }

    _cls9()
    {
        this$0 = MRAIDActivity.this;
        super();
    }
}
