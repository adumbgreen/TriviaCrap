// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate;

import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.etermax.f;
import com.etermax.h;
import com.etermax.i;
import com.etermax.k;
import com.etermax.preguntados.c.a.g;
import com.etermax.preguntados.datasource.dto.UserFactoryTranslationStatDTO;
import com.etermax.preguntados.sharing.m;
import com.etermax.preguntados.sharing.r;
import com.etermax.preguntados.ui.questionsfactory.statistics.enums.TranslationOrigin;
import com.etermax.tools.navigation.b;
import com.etermax.tools.widget.CustomFontButton;
import java.util.List;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate:
//            p, q, o

public class n extends b
{

    com.etermax.preguntados.c.a.b a;
    m b;
    UserFactoryTranslationStatDTO c;

    public n()
    {
    }

    public static Fragment a(UserFactoryTranslationStatDTO userfactorytranslationstatdto)
    {
        return p.d().a(userfactorytranslationstatdto).a();
    }

    public o a()
    {
        return new o() {

            final n a;

            
            {
                a = n.this;
                super();
            }
        };
    }

    public void b()
    {
        getActivity().onBackPressed();
    }

    void c()
    {
        com.etermax.preguntados.sharing.q q1 = r.a(getApplicationContext(), c, a);
        b.a(q1);
    }

    public Object getDummyCallbacks()
    {
        return a();
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        View view = layoutinflater.inflate(k.questions_factory_preview_question_fragment, null);
        ImageView imageview = (ImageView)view.findViewById(i.questions_factory_header_image);
        imageview.setImageResource(a.b(c.getCategory()));
        imageview.setVisibility(0);
        ((TextView)view.findViewById(i.questions_factory_header_title)).setText(getString(a.a(c.getCategory()).getNameResource()));
        view.findViewById(i.questions_factory_header).setBackgroundColor(getResources().getColor(a.a(c.getCategory()).getHeaderColorResource()));
        ((ImageView)view.findViewById(i.question_factory_header_share_image)).setVisibility(0);
        view.findViewById(i.questions_factory_preview_title).setVisibility(8);
        ((TextView)view.findViewById(i.questions_factory_preview_text_view)).setText(c.getText());
        int ai[] = new int[4];
        ai[0] = i.questions_factory_preview_answer_1;
        ai[1] = i.questions_factory_preview_answer_2;
        ai[2] = i.questions_factory_preview_answer_3;
        ai[3] = i.questions_factory_preview_answer_4;
        for (int j = 0; j < ai.length; j++)
        {
            CustomFontButton customfontbutton = (CustomFontButton)view.findViewById(ai[j]);
            customfontbutton.setText((CharSequence)c.getAnswers().get(j));
            if (j == c.getCorrectAnswer() && c.getOrigin() != TranslationOrigin.TRANSLATION)
            {
                customfontbutton.a(h.button_green_background, h.button_green_background_pressed);
                customfontbutton.setTextColor(getResources().getColor(f.white));
            }
        }

        return view;
    }
}
