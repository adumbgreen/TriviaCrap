// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.tvshow;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.etermax.preguntados.datasource.dto.TvShowQuestionDTO;
import com.etermax.preguntados.ui.widget.AnswerButtonView;
import com.etermax.tools.widget.OutlineTextView;
import org.a.a.b.a;
import org.a.a.b.b;
import org.a.a.b.c;

// Referenced classes of package com.etermax.preguntados.ui.tvshow:
//            g, k

public final class j extends g
    implements a, b
{

    private final c w = new c();
    private View x;

    public j()
    {
    }

    private void a(Bundle bundle)
    {
        c.a(this);
        g();
        b = com.etermax.preguntados.c.a.c.a(getActivity());
        a = com.etermax.preguntados.g.b.a(getActivity());
        b(bundle);
    }

    private void b(Bundle bundle)
    {
        if (bundle == null)
        {
            return;
        } else
        {
            p = bundle.getBoolean("mHasAnswered");
            q = bundle.getBoolean("mIsLoading");
            o = bundle.getLong("mStartTime");
            return;
        }
    }

    public static k f()
    {
        return new k();
    }

    private void g()
    {
        Bundle bundle = getArguments();
        if (bundle != null && bundle.containsKey("mQuestion"))
        {
            c = (TvShowQuestionDTO)bundle.getSerializable("mQuestion");
        }
    }

    public void a(a a1)
    {
        e = (ImageView)a1.findViewById(0x7f0a0387);
        t = (TextView)a1.findViewById(0x7f0a0112);
        s = (ProgressBar)a1.findViewById(0x7f0a03f7);
        f = (TextView)a1.findViewById(0x7f0a03f8);
        u = a1.findViewById(0x7f0a03f6);
        g = a1.findViewById(0x7f0a0288);
        v = (OutlineTextView)a1.findViewById(0x7f0a0299);
        l = (AnswerButtonView)a1.findViewById(0x7f0a0544);
        h = (TextView)a1.findViewById(0x7f0a03f2);
        n = (AnswerButtonView)a1.findViewById(0x7f0a0546);
        m = (AnswerButtonView)a1.findViewById(0x7f0a0545);
        k = (AnswerButtonView)a1.findViewById(0x7f0a0543);
        d = a1.findViewById(0x7f0a0286);
        i = a1.findViewById(0x7f0a0541);
        c();
    }

    public View findViewById(int i)
    {
        if (x == null)
        {
            return null;
        } else
        {
            return x.findViewById(i);
        }
    }

    public void onCreate(Bundle bundle)
    {
        c c1 = c.a(w);
        a(bundle);
        super.onCreate(bundle);
        c.a(c1);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        x = super.onCreateView(layoutinflater, viewgroup, bundle);
        if (x == null)
        {
            x = layoutinflater.inflate(0x7f030140, viewgroup, false);
        }
        return x;
    }

    public void onSaveInstanceState(Bundle bundle)
    {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("mHasAnswered", p);
        bundle.putBoolean("mIsLoading", q);
        bundle.putLong("mStartTime", o);
    }

    public void onViewCreated(View view, Bundle bundle)
    {
        super.onViewCreated(view, bundle);
        w.a(this);
    }
}
