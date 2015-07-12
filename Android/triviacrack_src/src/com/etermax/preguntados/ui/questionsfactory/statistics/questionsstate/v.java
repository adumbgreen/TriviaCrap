// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.etermax.i;
import com.etermax.k;
import com.etermax.preguntados.datasource.dto.UserFactoryStatsCountDTO;
import com.etermax.tools.navigation.b;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate:
//            x, y, w

public class v extends b
{

    int a;
    UserFactoryStatsCountDTO b;

    public v()
    {
    }

    public static Fragment a(int j, UserFactoryStatsCountDTO userfactorystatscountdto)
    {
        return x.e().a(j).a(userfactorystatscountdto).a();
    }

    public w a()
    {
        return new w() {

            final v a;

            public void k()
            {
            }

            public void l()
            {
            }

            public void m()
            {
            }

            
            {
                a = v.this;
                super();
            }
        };
    }

    public void b()
    {
        ((w)mCallbacks).k();
    }

    public void c()
    {
        ((w)mCallbacks).l();
    }

    public void d()
    {
        ((w)mCallbacks).m();
    }

    public Object getDummyCallbacks()
    {
        return a();
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        View view = layoutinflater.inflate(k.statistics_questions_state_fragment, viewgroup, false);
        ((TextView)view.findViewById(i.questions_factory_header_title)).setText(getString(a));
        ((TextView)view.findViewById(i.statistics_state_rate_counter)).setText(String.valueOf(b.getInRate()));
        ((TextView)view.findViewById(i.statistics_state_approved_counter)).setText(String.valueOf(b.getApproved()));
        ((TextView)view.findViewById(i.statistics_state_rejected_counter)).setText(String.valueOf(b.getRejected()));
        return view;
    }
}
