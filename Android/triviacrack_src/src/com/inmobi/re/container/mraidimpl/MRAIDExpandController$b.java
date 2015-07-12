// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.inmobi.re.container.mraidimpl;

import android.view.View;
import com.inmobi.re.container.IMWebView;

// Referenced classes of package com.inmobi.re.container.mraidimpl:
//            MRAIDExpandController

class a
    implements android.view.IDExpandController.b
{

    final MRAIDExpandController a;

    public void onClick(View view)
    {
        IMWebView.userInitiatedClose = true;
        if (!a.mIsExpandUrlValid)
        {
            MRAIDExpandController.a(a).close();
            return;
        } else
        {
            MRAIDExpandController.b(a).close();
            return;
        }
    }

    (MRAIDExpandController mraidexpandcontroller)
    {
        a = mraidexpandcontroller;
        super();
    }
}
