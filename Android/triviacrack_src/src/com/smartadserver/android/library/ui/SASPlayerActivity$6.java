// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.smartadserver.android.library.ui;

import android.view.View;
import android.widget.ImageView;
import com.smartadserver.android.library.g.a;

// Referenced classes of package com.smartadserver.android.library.ui:
//            SASPlayerActivity, SASVideoView

class a
    implements android.view.
{

    final SASPlayerActivity a;

    public void onClick(View view)
    {
        if (com.smartadserver.android.library.ui.SASPlayerActivity.a(a).c())
        {
            com.smartadserver.android.library.ui.SASPlayerActivity.a(a).b();
            if (SASPlayerActivity.k(a) != null)
            {
                SASPlayerActivity.k(a).setImageBitmap(a.e);
            }
        } else
        {
            com.smartadserver.android.library.ui.SASPlayerActivity.a(a).a();
            if (SASPlayerActivity.k(a) != null)
            {
                SASPlayerActivity.k(a).setImageBitmap(a.f);
                return;
            }
        }
    }

    (SASPlayerActivity sasplayeractivity)
    {
        a = sasplayeractivity;
        super();
    }
}
