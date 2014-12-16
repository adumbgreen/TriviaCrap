// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.etermax.preguntados.datasource.dto.UserFactoryTranslationStatDTO;
import com.etermax.preguntados.sharing.o;
import org.a.a.b.a;
import org.a.a.b.b;
import org.a.a.b.c;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate:
//            n, q

public final class p extends n
    implements a, b
{

    private final c d = new c();
    private View e;

    public p()
    {
    }

    private void a(Bundle bundle)
    {
        c.a(this);
        e();
        b = o.a(getActivity());
        a = com.etermax.preguntados.c.a.c.a(getActivity());
    }

    public static q d()
    {
        return new q();
    }

    private void e()
    {
        Bundle bundle = getArguments();
        if (bundle != null && bundle.containsKey("mQuestion"))
        {
            c = (UserFactoryTranslationStatDTO)bundle.getSerializable("mQuestion");
        }
    }

    public void a(a a1)
    {
        View view = a1.findViewById(0x7f0a0413);
        if (view != null)
        {
            view.setOnClickListener(new android.view.View.OnClickListener() {

                final p a;

                public void onClick(View view2)
                {
                    a.b();
                }

            
            {
                a = p.this;
                super();
            }
            });
        }
        View view1 = a1.findViewById(0x7f0a0414);
        if (view1 != null)
        {
            view1.setOnClickListener(new android.view.View.OnClickListener() {

                final p a;

                public void onClick(View view2)
                {
                    a.c();
                }

            
            {
                a = p.this;
                super();
            }
            });
        }
    }

    public View findViewById(int i)
    {
        if (e == null)
        {
            return null;
        } else
        {
            return e.findViewById(i);
        }
    }

    public void onCreate(Bundle bundle)
    {
        c c1 = c.a(d);
        a(bundle);
        super.onCreate(bundle);
        c.a(c1);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        e = super.onCreateView(layoutinflater, viewgroup, bundle);
        return e;
    }

    public void onViewCreated(View view, Bundle bundle)
    {
        super.onViewCreated(view, bundle);
        d.a(this);
    }
}
