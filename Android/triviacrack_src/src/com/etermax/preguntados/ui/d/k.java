// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.d;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.etermax.preguntados.b.a;
import com.etermax.preguntados.c.a.b;
import com.etermax.preguntados.c.a.f;
import com.etermax.preguntados.datasource.dto.enums.QuestionCategory;

// Referenced classes of package com.etermax.preguntados.ui.d:
//            l, m

public class k extends Fragment
{

    QuestionCategory a;
    ImageView b;
    RelativeLayout c;
    a d;
    b e;

    public k()
    {
    }

    public static Fragment a(QuestionCategory questioncategory)
    {
        return l.c().a(questioncategory).a();
    }

    public void a()
    {
        if (a == null)
        {
            break MISSING_BLOCK_LABEL_113;
        }
        int i = e.d(a).a();
        b.setImageResource(i);
        if (d.b(e.d(a).b()))
        {
            d.a(c, e.d(a).b());
            b.setVisibility(8);
            return;
        }
        try
        {
            b.setVisibility(0);
            return;
        }
        catch (OutOfMemoryError outofmemoryerror)
        {
            b.setVisibility(0);
        }
    }

    void b()
    {
        getFragmentManager().beginTransaction().remove(this).commit();
    }

    public void onPause()
    {
        super.onPause();
        d.a(c);
    }
}
