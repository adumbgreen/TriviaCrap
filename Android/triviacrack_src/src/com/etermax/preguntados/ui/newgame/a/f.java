// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.newgame.a;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import com.etermax.gamescommon.language.Language;
import com.etermax.gamescommon.social.g;
import com.etermax.preguntados.datasource.e;
import com.etermax.tools.f.d;
import com.etermax.tools.social.a.j;
import org.a.a.b.a;
import org.a.a.b.b;
import org.a.a.b.c;

// Referenced classes of package com.etermax.preguntados.ui.newgame.a:
//            a, g

public final class f extends com.etermax.preguntados.ui.newgame.a.a
    implements a, b
{

    private final c k = new c();
    private View l;

    public f()
    {
    }

    private void a(Bundle bundle)
    {
        c.a(this);
        k();
        a = g.a(getActivity());
        b = com.etermax.tools.social.a.j.a(getActivity());
        c = d.c(getActivity());
        d = com.etermax.gamescommon.login.datasource.b.a(getActivity());
        h = e.a(getActivity());
    }

    public static com.etermax.preguntados.ui.newgame.a.g j()
    {
        return new com.etermax.preguntados.ui.newgame.a.g();
    }

    private void k()
    {
        Bundle bundle = getArguments();
        if (bundle != null && bundle.containsKey("mLanguage"))
        {
            g = (Language)bundle.getSerializable("mLanguage");
        }
    }

    public void a(a a1)
    {
        i = (TextView)a1.findViewById(0x7f0a01c3);
        j = (EditText)a1.findViewById(0x7f0a0358);
        b();
        i();
    }

    public View findViewById(int i)
    {
        if (l == null)
        {
            return null;
        } else
        {
            return l.findViewById(i);
        }
    }

    public void onCreate(Bundle bundle)
    {
        c c1 = c.a(k);
        a(bundle);
        super.onCreate(bundle);
        c.a(c1);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        l = super.onCreateView(layoutinflater, viewgroup, bundle);
        return l;
    }

    public void onViewCreated(View view, Bundle bundle)
    {
        super.onViewCreated(view, bundle);
        k.a(this);
    }
}
