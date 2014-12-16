// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.tvshow.a;

import android.widget.CompoundButton;
import android.widget.TextView;
import com.etermax.o;

// Referenced classes of package com.etermax.preguntados.ui.tvshow.a:
//            a

class a
    implements android.widget.oundButton.OnCheckedChangeListener
{

    final a a;

    public void onCheckedChanged(CompoundButton compoundbutton, boolean flag)
    {
        String s;
        if (flag)
        {
            s = a.getString(o.female);
        } else
        {
            s = a.getString(o.male);
        }
        a.r.setText(s);
    }

    hangeListener(a a1)
    {
        a = a1;
        super();
    }
}
