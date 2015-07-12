// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.ratequestion;

import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import com.etermax.preguntados.datasource.dto.QuestionDTO;
import com.etermax.preguntados.datasource.dto.UserSuggestionConfigDTO;
import com.etermax.preguntados.datasource.e;
import org.a.a.b.a;
import org.a.a.b.c;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.ratequestion:
//            RateQuestionActivity

public final class RateQuestionActivity_ extends RateQuestionActivity
    implements a
{

    private final c d = new c();

    public RateQuestionActivity_()
    {
    }

    private void a(Bundle bundle)
    {
        c();
        a = e.a(this);
        b(bundle);
    }

    private void b(Bundle bundle)
    {
        if (bundle == null)
        {
            return;
        } else
        {
            c = (QuestionDTO)bundle.getSerializable("mQuestion");
            return;
        }
    }

    private void c()
    {
        Bundle bundle = getIntent().getExtras();
        if (bundle != null && bundle.containsKey("mConfigDTO"))
        {
            b = (UserSuggestionConfigDTO)bundle.getSerializable("mConfigDTO");
        }
    }

    public void onCreate(Bundle bundle)
    {
        c c1 = org.a.a.b.c.a(d);
        a(bundle);
        super.onCreate(bundle);
        org.a.a.b.c.a(c1);
    }

    public boolean onKeyDown(int i, KeyEvent keyevent)
    {
        if (org.a.a.c.a() < 5 && i == 4 && keyevent.getRepeatCount() == 0)
        {
            onBackPressed();
        }
        return super.onKeyDown(i, keyevent);
    }

    public void onSaveInstanceState(Bundle bundle)
    {
        super.onSaveInstanceState(bundle);
        bundle.putSerializable("mQuestion", c);
    }

    public void setContentView(int i)
    {
        super.setContentView(i);
        d.a(this);
    }

    public void setContentView(View view)
    {
        super.setContentView(view);
        d.a(this);
    }

    public void setContentView(View view, android.view.ViewGroup.LayoutParams layoutparams)
    {
        super.setContentView(view, layoutparams);
        d.a(this);
    }

    public void setIntent(Intent intent)
    {
        super.setIntent(intent);
        c();
    }
}
