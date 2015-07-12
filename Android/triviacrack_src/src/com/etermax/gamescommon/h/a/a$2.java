// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.h.a;

import android.text.TextUtils;
import android.view.KeyEvent;
import android.widget.Filter;
import android.widget.TextView;
import com.etermax.a.b;
import com.etermax.gamescommon.user.a.g;
import com.etermax.i;

// Referenced classes of package com.etermax.gamescommon.h.a:
//            a

class a
    implements android.widget.View.OnEditorActionListener
{

    final a a;

    public boolean onEditorAction(TextView textview, int j, KeyEvent keyevent)
    {
        if (j == 3 || j == 6 || j == 2 || j == 5 || j == 4 || keyevent.getAction() == 23 || keyevent.getAction() == 66 || keyevent.getAction() == 84 || keyevent.getAction() == 0)
        {
            b.b(a.getActivity());
            String s = textview.getText().toString().trim();
            if (com.etermax.gamescommon.h.a.a.a(a) == i.tab_all_button)
            {
                if (!TextUtils.isEmpty(s))
                {
                    a.a(s);
                } else
                {
                    com.etermax.gamescommon.h.a.a.a(a, com.etermax.gamescommon.h.a.a.a(a));
                }
            } else
            if (com.etermax.gamescommon.h.a.a.a(a) == i.tab_favorite_button)
            {
                ((g)com.etermax.gamescommon.h.a.a.b(a)).getFilter().filter(s);
            } else
            {
                ((g)com.etermax.gamescommon.h.a.a.c(a)).getFilter().filter(s);
            }
            return true;
        } else
        {
            return false;
        }
    }

    (a a1)
    {
        a = a1;
        super();
    }
}
