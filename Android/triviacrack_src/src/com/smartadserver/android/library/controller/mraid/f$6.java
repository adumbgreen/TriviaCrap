// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.smartadserver.android.library.controller.mraid;

import android.view.View;
import com.smartadserver.android.library.ui.SASVideoView;

// Referenced classes of package com.smartadserver.android.library.controller.mraid:
//            f

class a
    implements android.view..OnClickListener
{

    final f a;

    public void onClick(View view)
    {
        if (f.d(a).isPlaying())
        {
            f.t(a);
            return;
        } else
        {
            f.u(a);
            f.a(a, false);
            return;
        }
    }

    (f f1)
    {
        a = f1;
        super();
    }
}
