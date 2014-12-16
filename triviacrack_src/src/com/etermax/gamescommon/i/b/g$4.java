// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.i.b;

import android.content.Intent;
import android.net.Uri;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import com.etermax.tools.b;

// Referenced classes of package com.etermax.gamescommon.i.b:
//            g, h

class a
    implements android.view..OnClickListener
{

    final g a;

    public void onClick(View view)
    {
        ((h)g.d(a)).a(1);
        try
        {
            if (!((h)g.e(a)).d())
            {
                Uri uri = Uri.parse(((b)a.getActivity().getApplication()).q());
                a.startActivity(new Intent("android.intent.action.VIEW", uri));
            }
            return;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
    }

    ctivity(g g1)
    {
        a = g1;
        super();
    }
}
