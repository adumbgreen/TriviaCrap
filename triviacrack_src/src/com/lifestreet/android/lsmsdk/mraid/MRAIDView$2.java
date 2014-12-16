// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.lifestreet.android.lsmsdk.mraid;

import android.view.View;
import android.view.ViewGroup;
import java.lang.ref.WeakReference;

// Referenced classes of package com.lifestreet.android.lsmsdk.mraid:
//            MRAIDView

class val.viewRef
    implements Runnable
{

    final MRAIDView this$0;
    final WeakReference val$viewGroupRef;
    final WeakReference val$viewRef;

    public void run()
    {
        if (!MRAIDView.access$200(MRAIDView.this) && val$viewGroupRef != null && val$viewRef != null)
        {
            View view = (View)val$viewRef.get();
            ViewGroup viewgroup = (ViewGroup)val$viewGroupRef.get();
            if (view != null && viewgroup != null)
            {
                viewgroup.addView(view);
            }
        }
    }

    ()
    {
        this$0 = final_mraidview;
        val$viewGroupRef = weakreference;
        val$viewRef = WeakReference.this;
        super();
    }
}
