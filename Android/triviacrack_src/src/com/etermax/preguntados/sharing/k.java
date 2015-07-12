// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.sharing;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.etermax.o;
import com.etermax.preguntados.c.a.b;
import com.etermax.preguntados.datasource.dto.QuestionDTO;
import com.etermax.preguntados.datasource.dto.enums.QuestionType;
import com.etermax.preguntados.e.c;
import com.etermax.preguntados.ui.game.duelmode.g;
import java.util.List;

// Referenced classes of package com.etermax.preguntados.sharing:
//            ShareView, p

public class k extends ShareView
{

    b a;
    protected ImageView b;
    protected LinearLayout c;
    protected TextView d;
    protected Button e;
    protected Button f;
    protected Button g;
    protected Button h;
    protected ImageView i;
    protected LinearLayout j;
    protected TextView k;
    private p o;
    private g p;
    private c q;

    public k(Context context, QuestionDTO questiondto, b b1, g g1, c c1)
    {
        super(context);
        o = questiondto;
        a = b1;
        p = g1;
        q = c1;
    }

    public k(Context context, p p1, b b1)
    {
        super(context);
        o = p1;
        p = g.a;
        a = b1;
    }

    private void a(Bitmap bitmap)
    {
        i.setImageBitmap(bitmap);
        j.setVisibility(0);
    }

    public void a()
    {
        b();
    }

    public void b()
    {
        List list = o.getAnswers();
        b.setImageResource(a.b(o.getCategory()));
        c.setBackgroundColor(getResources().getColor(a.a(o.getCategory()).getHeaderColorResource()));
        if (o.getQuestionType() == QuestionType.IMAGE)
        {
            a(q.a(o.getId(), o.getCategory()));
        }
        d.setText(o.getText());
        e.setText((CharSequence)list.get(0));
        f.setText((CharSequence)list.get(1));
        g.setText((CharSequence)list.get(2));
        h.setText((CharSequence)list.get(3));
    }

    public String getShareText()
    {
        return (new StringBuilder()).append(getContext().getString(o.user_answered_quiz)).append(" - ").append(getContext().getString(o.landing_url)).toString();
    }
}
