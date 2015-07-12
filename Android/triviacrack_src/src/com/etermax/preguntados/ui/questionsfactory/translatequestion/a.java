// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.translatequestion;

import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.etermax.i;
import com.etermax.k;
import com.etermax.o;
import com.etermax.preguntados.c.a.g;
import com.etermax.preguntados.datasource.d;
import com.etermax.preguntados.datasource.dto.UserTranslationDTO;
import com.etermax.preguntados.datasource.dto.enums.QuestionCategory;
import com.etermax.tools.navigation.b;
import java.util.List;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.translatequestion:
//            c, d, b

public class a extends b
{

    d a;
    com.etermax.preguntados.c.a.b b;
    com.etermax.tools.j.a c;
    QuestionCategory d;
    UserTranslationDTO e;

    public a()
    {
    }

    public static Fragment a(QuestionCategory questioncategory, UserTranslationDTO usertranslationdto)
    {
        return com.etermax.preguntados.ui.questionsfactory.translatequestion.c.d().a(questioncategory).a(usertranslationdto).a();
    }

    static Object a(a a1)
    {
        return a1.mCallbacks;
    }

    private void a(UserTranslationDTO usertranslationdto)
    {
        (new com.etermax.tools.i.a(getString(o.loading), usertranslationdto) {

            final UserTranslationDTO a;
            final a b;

            public Object a()
            {
                return b();
            }

            public void a(a a1, Void void1)
            {
                super.a(a1, void1);
                ((com.etermax.preguntados.ui.questionsfactory.translatequestion.b)a.a(b)).b();
            }

            public volatile void a(Object obj, Object obj1)
            {
                a((a)obj, (Void)obj1);
            }

            public Void b()
            {
                b.a.a(a);
                return null;
            }

            
            {
                b = a.this;
                a = usertranslationdto;
                super(s);
            }
        }).a(this);
    }

    public com.etermax.preguntados.ui.questionsfactory.translatequestion.b a()
    {
        return new com.etermax.preguntados.ui.questionsfactory.translatequestion.b() {

            final a a;

            public void b()
            {
            }

            
            {
                a = a.this;
                super();
            }
        };
    }

    public void b()
    {
        com.etermax.a.b.b(getApplicationContext());
    }

    public void c()
    {
        a(e);
    }

    public Object getDummyCallbacks()
    {
        return a();
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        View view = layoutinflater.inflate(k.questions_factory_preview_question_fragment, null);
        TextView textview = (TextView)view.findViewById(i.questions_factory_ok_button);
        textview.setVisibility(0);
        textview.setText(getString(o.send));
        textview.setTextSize(14F);
        ((TextView)view.findViewById(i.questions_factory_header_title)).setText(getString(b.a(d).getNameResource()));
        view.findViewById(i.questions_factory_header).setBackgroundColor(getResources().getColor(b.a(d).getHeaderColorResource()));
        ((TextView)view.findViewById(i.questions_factory_preview_text_view)).setText(e.getText());
        ((TextView)view.findViewById(i.questions_factory_preview_answer_1)).setText((CharSequence)e.getAnswers().get(0));
        ((TextView)view.findViewById(i.questions_factory_preview_answer_2)).setText((CharSequence)e.getAnswers().get(1));
        ((TextView)view.findViewById(i.questions_factory_preview_answer_3)).setText((CharSequence)e.getAnswers().get(2));
        ((TextView)view.findViewById(i.questions_factory_preview_answer_4)).setText((CharSequence)e.getAnswers().get(3));
        return view;
    }
}
