// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.question.duel;

import android.content.res.Resources;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.etermax.i;
import com.etermax.o;
import com.etermax.preguntados.c.a.f;
import com.etermax.preguntados.c.a.g;
import com.etermax.preguntados.datasource.dto.GameDTO;
import com.etermax.preguntados.datasource.dto.GameUserDTO;
import com.etermax.preguntados.datasource.dto.enums.QuestionCategory;
import com.etermax.tools.navigation.b;
import com.etermax.tools.widget.CustomLinearButton;
import com.etermax.tools.widget.b.c;
import java.util.HashMap;
import java.util.List;

// Referenced classes of package com.etermax.preguntados.ui.game.question.duel:
//            c, d, b

public class a extends b
{

    GameDTO a;
    com.etermax.preguntados.c.a.b b;
    protected HashMap c;
    private QuestionCategory d[];

    public a()
    {
        d = new QuestionCategory[2];
    }

    public static Fragment a(GameDTO gamedto, int j, int k)
    {
        return com.etermax.preguntados.ui.game.question.duel.c.d().a(gamedto).a();
    }

    private android.view.View.OnClickListener a(int j, QuestionCategory questioncategory, int k, View view)
    {
        return new android.view.View.OnClickListener(view, questioncategory, k, j) {

            final View a;
            final QuestionCategory b;
            final int c;
            final int d;
            final a e;

            public void onClick(View view1)
            {
                ((FrameLayout)((CustomLinearButton)a.findViewWithTag(e.c.get(b))).getParent()).getChildAt(1).setVisibility(0);
                TextView textview = (TextView)a.findViewById(i.title_category_selected_textview);
                textview.setText(e.b.a(b).getNameResource());
                textview.setTextColor(e.getResources().getColor(e.b.a(b).getHeaderColorResource()));
                if (a.a(e)[c] != null && a.a(e)[c] != b)
                {
                    int l = ((Integer)e.c.get(a.a(e)[c])).intValue();
                    ((FrameLayout)((CustomLinearButton)a.findViewWithTag(Integer.valueOf(l))).getParent()).getChildAt(1).setVisibility(4);
                }
                a.a(e)[d] = b;
            }

            
            {
                e = a.this;
                a = view;
                b = questioncategory;
                c = j;
                d = k;
                super();
            }
        };
    }

    private void a(int j, GameUserDTO gameuserdto, int k)
    {
        View view;
        List list;
        int l;
        int i1;
        int j1;
        view = getView().findViewById(j);
        list = gameuserdto.getCrowns();
        l = list.size();
        i1 = 0;
        j1 = 0;
_L8:
        if (i1 >= 2) goto _L2; else goto _L1
_L1:
        int k1;
        int l1;
        k1 = 0;
        l1 = j1;
_L6:
        if (k1 < 3 && l1 <= l - 1) goto _L4; else goto _L3
_L3:
        if (l1 <= l - 1)
        {
            break; /* Loop/switch isn't completed */
        }
_L2:
        return;
_L4:
        int i2 = b.d((QuestionCategory)list.get(l1)).a();
        ((FrameLayout)((LinearLayout)((LinearLayout)view).getChildAt(i1 + 1)).getChildAt(k1)).setVisibility(0);
        CustomLinearButton customlinearbutton = (CustomLinearButton)((FrameLayout)((LinearLayout)((LinearLayout)view).getChildAt(i1 + 1)).getChildAt(k1)).getChildAt(0);
        ((ImageView)customlinearbutton.getChildAt(0)).setImageResource(i2);
        customlinearbutton.setOnClickListener(a(k, (QuestionCategory)list.get(l1), k, view));
        customlinearbutton.setTag(c.get(list.get(l1)));
        int j2 = l1 + 1;
        k1++;
        l1 = j2;
        if (true) goto _L6; else goto _L5
_L5:
        i1++;
        j1 = l1;
        if (true) goto _L8; else goto _L7
_L7:
    }

    static QuestionCategory[] a(a a1)
    {
        return a1.d;
    }

    public com.etermax.preguntados.ui.game.question.duel.b a()
    {
        return new com.etermax.preguntados.ui.game.question.duel.b() {

            final a a;

            public void a(QuestionCategory questioncategory, QuestionCategory questioncategory1)
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
        c = new HashMap();
        c.put(b.a(5), Integer.valueOf(i.category_crown_button_01));
        c.put(b.a(4), Integer.valueOf(i.category_crown_button_02));
        c.put(b.a(3), Integer.valueOf(i.category_crown_button_03));
        c.put(b.a(2), Integer.valueOf(i.category_crown_button_04));
        c.put(b.a(1), Integer.valueOf(i.category_crown_button_05));
        c.put(b.a(0), Integer.valueOf(i.category_crown_button_06));
        String s = getString(o.trivia_challenge);
        ((TextView)getView().findViewById(i.category_duel_crown_header_text_view)).setText(s);
        a(i.duel_my_crowns_container, a.getMyPlayerInfo(), 0);
        a(i.duel_opponent_crowns_container, a.getOpponentPlayerInfo(), 1);
    }

    void c()
    {
        if (d[0] == null)
        {
            com.etermax.tools.widget.b.c.c(getString(o.attention), getString(o.trivia_challenge_character_title), getString(o.accept), null).show(getActivity().getSupportFragmentManager(), "");
            return;
        }
        if (d[1] == null)
        {
            com.etermax.tools.widget.b.c.c(getString(o.attention), getString(o.trivia_challenge_character_title), getString(o.accept), null).show(getActivity().getSupportFragmentManager(), "");
            return;
        } else
        {
            ((com.etermax.preguntados.ui.game.question.duel.b)mCallbacks).a(d[0], d[1]);
            return;
        }
    }

    public Object getDummyCallbacks()
    {
        return a();
    }
}
