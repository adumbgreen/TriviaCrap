// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.social;

import android.content.Intent;
import android.net.Uri;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import com.etermax.tools.social.a.d;

// Referenced classes of package com.etermax.gamescommon.social:
//            e

class a
    implements android.view..OnClickListener
{

    final e a;

    public void onClick(View view)
    {
        e.b(a);
        if (a.getActivity() != null)
        {
            String s = ((d)a.getActivity().getApplication()).e();
            a.getActivity().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(s)));
        }
        a.dismiss();
    }

    vity(e e1)
    {
        a = e1;
        super();
    }
}
