// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.ratequestion.report;

import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.text.Editable;
import android.text.InputFilter;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import com.etermax.f;
import com.etermax.i;
import com.etermax.k;
import com.etermax.m;
import com.etermax.o;
import com.etermax.tools.navigation.b;
import com.etermax.tools.widget.b.c;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.ratequestion.report:
//            c, d, b

public class a extends b
{

    public a()
    {
    }

    public static Fragment b()
    {
        return com.etermax.preguntados.ui.questionsfactory.ratequestion.report.c.d().a();
    }

    private void d()
    {
        Resources resources = getResources();
        int j = m.characters_limit;
        Object aobj[] = new Object[1];
        aobj[0] = Integer.valueOf(15);
        c c1 = com.etermax.tools.widget.b.c.b(resources.getQuantityString(j, 15, aobj), getString(o.accept));
        c1.setTargetFragment(this, 0);
        c1.show(getActivity().getSupportFragmentManager(), "question_min_length");
    }

    public com.etermax.preguntados.ui.questionsfactory.ratequestion.report.b a()
    {
        return new com.etermax.preguntados.ui.questionsfactory.ratequestion.report.b() {

            final a a;

            public void a(String s)
            {
            }

            
            {
                a = a.this;
                super();
            }
        };
    }

    public void c()
    {
        String s = ((EditText)getView().findViewById(i.rate_question_report_edit_text)).getText().toString();
        if (s.length() < 15)
        {
            d();
            return;
        } else
        {
            com.etermax.a.b.b(getApplicationContext());
            ((com.etermax.preguntados.ui.questionsfactory.ratequestion.report.b)mCallbacks).a(s);
            return;
        }
    }

    public Object getDummyCallbacks()
    {
        return a();
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        View view = layoutinflater.inflate(k.report_question_write_comment_fragment, viewgroup, false);
        view.findViewById(i.questions_factory_ok_button).setVisibility(0);
        ((TextView)view.findViewById(i.questions_factory_header_title)).setText(getString(o.report));
        EditText edittext = (EditText)view.findViewById(i.rate_question_report_edit_text);
        TextView textview = (TextView)view.findViewById(i.rate_question_report_remaining_characters);
        InputFilter ainputfilter[] = new InputFilter[1];
        ainputfilter[0] = new android.text.InputFilter.LengthFilter(150);
        textview.setText(String.valueOf(150 - edittext.length()));
        edittext.setFilters(ainputfilter);
        edittext.setImeOptions(4);
        edittext.addTextChangedListener(new TextWatcher(textview, edittext) {

            final TextView a;
            final EditText b;
            final a c;

            public void afterTextChanged(Editable editable)
            {
                a.setText(String.valueOf(150 - b.length()));
            }

            public void beforeTextChanged(CharSequence charsequence, int j, int l, int i1)
            {
            }

            public void onTextChanged(CharSequence charsequence, int j, int l, int i1)
            {
            }

            
            {
                c = a.this;
                a = textview;
                b = edittext;
                super();
            }
        });
        edittext.setOnEditorActionListener(new android.widget.TextView.OnEditorActionListener() {

            final a a;

            public boolean onEditorAction(TextView textview1, int j, KeyEvent keyevent)
            {
                if ((j == 0 || j == 4) && keyevent != null && keyevent.getAction() == 0)
                {
                    a.c();
                }
                return true;
            }

            
            {
                a = a.this;
                super();
            }
        });
        edittext.setOnFocusChangeListener(new android.view.View.OnFocusChangeListener() {

            final a a;

            public void onFocusChange(View view1, boolean flag)
            {
                if (flag)
                {
                    ((EditText)view1).setHintTextColor(a.getResources().getColor(f.transparent));
                    return;
                } else
                {
                    ((EditText)view1).setHintTextColor(a.getResources().getColor(f.grayLight));
                    return;
                }
            }

            
            {
                a = a.this;
                super();
            }
        });
        com.etermax.a.b.a(getApplicationContext());
        return view;
    }
}
