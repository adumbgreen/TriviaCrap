// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.question.crown;

import android.support.v4.app.Fragment;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.etermax.i;
import com.etermax.o;
import com.etermax.preguntados.c.a.f;
import com.etermax.preguntados.datasource.d;
import com.etermax.preguntados.datasource.dto.GameDTO;
import com.etermax.preguntados.datasource.dto.PreguntadosAppConfigDTO;
import com.etermax.preguntados.datasource.dto.enums.QuestionCategory;
import com.etermax.tools.navigation.b;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.etermax.preguntados.ui.game.question.crown:
//            c, d, b

public class a extends b
{

    protected HashMap a;
    com.etermax.gamescommon.login.datasource.a b;
    d c;
    com.etermax.preguntados.c.a.b d;
    GameDTO e;

    public a()
    {
    }

    public static Fragment a(GameDTO gamedto)
    {
        return com.etermax.preguntados.ui.game.question.crown.c.c().a(gamedto).a();
    }

    private android.view.View.OnClickListener a(QuestionCategory questioncategory)
    {
        return new android.view.View.OnClickListener(questioncategory) {

            final QuestionCategory a;
            final a b;

            public void onClick(View view)
            {
                a.a(b, a);
            }

            
            {
                b = a.this;
                a = questioncategory;
                super();
            }
        };
    }

    static void a(a a1, QuestionCategory questioncategory)
    {
        a1.b(questioncategory);
    }

    private void b(QuestionCategory questioncategory)
    {
        ((com.etermax.preguntados.ui.game.question.crown.b)mCallbacks).a(e, questioncategory);
    }

    public com.etermax.preguntados.ui.game.question.crown.b a()
    {
        return new com.etermax.preguntados.ui.game.question.crown.b() {

            final a a;

            public void a(GameDTO gamedto, QuestionCategory questioncategory)
            {
            }

            
            {
                a = a.this;
                super();
            }
        };
    }

    void b()
    {
        a = new HashMap();
        a.put(d.a(5), Integer.valueOf(i.category_crown_button_01));
        a.put(d.a(4), Integer.valueOf(i.category_crown_button_02));
        a.put(d.a(3), Integer.valueOf(i.category_crown_button_03));
        a.put(d.a(2), Integer.valueOf(i.category_crown_button_04));
        a.put(d.a(1), Integer.valueOf(i.category_crown_button_05));
        a.put(d.a(0), Integer.valueOf(i.category_crown_button_06));
        StringBuilder stringbuilder = new StringBuilder();
        int j = o.round;
        Object aobj[] = new Object[1];
        aobj[0] = Integer.valueOf(e.getRound_number());
        String s = stringbuilder.append(getString(j, aobj)).append("/").append(c.s().getFinalDuelRounds()).toString();
        ((TextView)getView().findViewById(i.category_crown_header_text_view)).setText(s);
        (new com.etermax.preguntados.ui.dashboard.i()).a(getView(), b, e);
        Iterator iterator = e.getAvailableCrowns().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            QuestionCategory questioncategory = (QuestionCategory)iterator.next();
            Integer integer = (Integer)a.get(questioncategory);
            if (integer != null)
            {
                LinearLayout linearlayout = (LinearLayout)getView().findViewById(integer.intValue());
                ((ImageView)linearlayout.getChildAt(0)).setImageResource(d.d(questioncategory).a());
                linearlayout.setVisibility(0);
                linearlayout.setOnClickListener(a(questioncategory));
            }
        } while (true);
    }

    public Object getDummyCallbacks()
    {
        return a();
    }
}
