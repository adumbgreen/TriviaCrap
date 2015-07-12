// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.login.ui;

import android.view.View;
import android.widget.Button;
import android.widget.Toast;
import com.etermax.gamescommon.datasource.g;

// Referenced classes of package com.etermax.gamescommon.login.ui:
//            d

class a
    implements g
{

    final View a;
    final d b;

    public void a(String s)
    {
        ((Button)a).setText("Renew");
        if (s != null)
        {
            Toast.makeText(b.getActivity(), s, 0).show();
        }
    }

    (d d1, View view)
    {
        b = d1;
        a = view;
        super();
    }
}
