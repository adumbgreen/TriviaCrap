// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate;

import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import com.etermax.preguntados.datasource.dto.UserFactoryStatsCountDTO;
import org.a.a.b.a;
import org.a.a.b.c;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate:
//            TranslatedQuestionsStatsActivity

public final class TranslatedQuestionsStatsActivity_ extends TranslatedQuestionsStatsActivity
    implements a
{

    private final c b = new c();

    public TranslatedQuestionsStatsActivity_()
    {
    }

    private void a(Bundle bundle)
    {
        o();
    }

    private void o()
    {
        Bundle bundle = getIntent().getExtras();
        if (bundle != null && bundle.containsKey("mQuestionsStatsCountDTO"))
        {
            a = (UserFactoryStatsCountDTO)bundle.getSerializable("mQuestionsStatsCountDTO");
        }
    }

    public void onCreate(Bundle bundle)
    {
        c c1 = c.a(b);
        a(bundle);
        super.onCreate(bundle);
        c.a(c1);
    }

    public boolean onKeyDown(int i, KeyEvent keyevent)
    {
        if (org.a.a.c.a() < 5 && i == 4 && keyevent.getRepeatCount() == 0)
        {
            onBackPressed();
        }
        return super.onKeyDown(i, keyevent);
    }

    public void setContentView(int i)
    {
        super.setContentView(i);
        b.a(this);
    }

    public void setContentView(View view)
    {
        super.setContentView(view);
        b.a(this);
    }

    public void setContentView(View view, android.view.ViewGroup.LayoutParams layoutparams)
    {
        super.setContentView(view, layoutparams);
        b.a(this);
    }

    public void setIntent(Intent intent)
    {
        super.setIntent(intent);
        o();
    }
}
