// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.ratequestion.report;

import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import com.etermax.i;
import com.etermax.k;
import com.etermax.o;
import com.etermax.preguntados.datasource.d;
import com.etermax.preguntados.datasource.dto.enums.QuestionDisapprovalReason;
import com.etermax.tools.navigation.b;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.ratequestion.report:
//            i, j, m, k, 
//            g, h, f

public class e extends b
{

    d a;
    QuestionDisapprovalReason b;
    int c;

    public e()
    {
        c = -1;
    }

    private void a(ListView listview)
    {
        ArrayList arraylist = new ArrayList();
        m m1;
        for (Iterator iterator = i.a().iterator(); iterator.hasNext(); arraylist.add(m1))
        {
            j j1 = (j)iterator.next();
            m1 = new m();
            m1.a(j1);
            m1.a(false);
        }

        com.etermax.preguntados.ui.questionsfactory.ratequestion.report.k k1 = new com.etermax.preguntados.ui.questionsfactory.ratequestion.report.k(getApplicationContext(), arraylist);
        if (c != -1)
        {
            k1.a(c);
        }
        listview.setAdapter(k1);
        listview.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {

            final e a;

            public void onItemClick(AdapterView adapterview, View view, int l, long l1)
            {
                com.etermax.preguntados.ui.questionsfactory.ratequestion.report.k k2 = (com.etermax.preguntados.ui.questionsfactory.ratequestion.report.k)adapterview.getAdapter();
                k2.a(l);
                a.b = k2.b(l).a().a();
                a.c = l;
            }

            
            {
                a = e.this;
                super();
            }
        });
    }

    public static Fragment b()
    {
        return com.etermax.preguntados.ui.questionsfactory.ratequestion.report.g.d().a();
    }

    public f a()
    {
        return new f() {

            final e a;

            public void a(QuestionDisapprovalReason questiondisapprovalreason)
            {
            }

            public void b()
            {
            }

            
            {
                a = e.this;
                super();
            }
        };
    }

    public void c()
    {
        if (b == null)
        {
            Toast.makeText(getActivity(), getActivity().getString(o.report_options), 0).show();
            return;
        }
        if (b.name().compareToIgnoreCase(QuestionDisapprovalReason.OTHER.name()) == 0)
        {
            ((f)mCallbacks).b();
            return;
        } else
        {
            ((f)mCallbacks).a(b);
            return;
        }
    }

    public Object getDummyCallbacks()
    {
        return a();
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        View view = layoutinflater.inflate(k.rate_question_report_fragment, viewgroup, false);
        ((TextView)view.findViewById(i.questions_factory_header_title)).setText(getResources().getString(o.report));
        view.findViewById(i.questions_factory_ok_button).setVisibility(0);
        a((ListView)view.findViewById(i.rate_question_report_list));
        return view;
    }
}
