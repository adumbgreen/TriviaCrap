// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.ratequestion.report;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.etermax.preguntados.datasource.dto.enums.QuestionDisapprovalReason;
import com.etermax.preguntados.datasource.e;
import org.a.a.b.a;
import org.a.a.b.b;
import org.a.a.b.c;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.ratequestion.report:
//            e, h

public final class g extends com.etermax.preguntados.ui.questionsfactory.ratequestion.report.e
    implements a, b
{

    private final c d = new c();
    private View e;

    public g()
    {
    }

    private void a(Bundle bundle)
    {
        c.a(this);
        a = com.etermax.preguntados.datasource.e.a(getActivity());
        b(bundle);
    }

    private void b(Bundle bundle)
    {
        if (bundle == null)
        {
            return;
        } else
        {
            b = (QuestionDisapprovalReason)bundle.getSerializable("mSelectedReason");
            c = bundle.getInt("mSelectedIndex");
            return;
        }
    }

    public static h d()
    {
        return new h();
    }

    public void a(a a1)
    {
        View view = a1.findViewById(0x7f0a0413);
        if (view != null)
        {
            view.setOnClickListener(new android.view.View.OnClickListener() {

                final g a;

                public void onClick(View view1)
                {
                    a.c();
                }

            
            {
                a = g.this;
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

    public void onSaveInstanceState(Bundle bundle)
    {
        super.onSaveInstanceState(bundle);
        bundle.putSerializable("mSelectedReason", b);
        bundle.putInt("mSelectedIndex", c);
    }

    public void onViewCreated(View view, Bundle bundle)
    {
        super.onViewCreated(view, bundle);
        d.a(this);
    }
}
