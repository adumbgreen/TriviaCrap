// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.b;

import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.etermax.f;
import com.etermax.h;
import com.etermax.i;
import com.etermax.k;
import com.etermax.o;
import com.etermax.preguntados.c.a.g;
import com.etermax.preguntados.datasource.dto.CategoryQuestionDTO;
import com.etermax.preguntados.datasource.dto.PlayerStatisticsDTO;
import com.etermax.preguntados.datasource.dto.StatisticsDTO;
import com.etermax.tools.navigation.b;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.etermax.preguntados.ui.game.b:
//            c, d, b

public class a extends b
{

    StatisticsDTO a;
    int b;
    com.etermax.preguntados.c.a.b c;
    protected HashMap d;
    private PlayerStatisticsDTO e;
    private PlayerStatisticsDTO f;

    public a()
    {
    }

    public static Fragment a(StatisticsDTO statisticsdto, int j)
    {
        return com.etermax.preguntados.ui.game.b.c.c().a(statisticsdto).a(j).a();
    }

    private void a(List list, int j)
    {
        for (Iterator iterator = list.iterator(); iterator.hasNext();)
        {
            CategoryQuestionDTO categoryquestiondto = (CategoryQuestionDTO)iterator.next();
            int l = ((Integer)d.get(categoryquestiondto.getCategory())).intValue();
            TextView textview = (TextView)getView().findViewById(l).findViewById(j);
            int i1 = categoryquestiondto.getCorrect() + categoryquestiondto.getIncorrect();
            if (i1 > 0)
            {
                int j1 = (100 * categoryquestiondto.getCorrect()) / i1;
                textview.setText((new StringBuilder()).append(String.valueOf(j1)).append("%").toString());
            } else
            {
                textview.setText("-");
            }
        }

    }

    private void c()
    {
        if (b == 1)
        {
            e = a.getPlayerOneStatistics();
            f = a.getPlayerTwoStatistics();
        } else
        {
            e = a.getPlayerTwoStatistics();
            f = a.getPlayerOneStatistics();
        }
        if (e != null && e.getCategoryQuestions() != null)
        {
            a(e.getCategoryQuestions(), i.item_you_count);
        }
        if (f != null && f.getCategoryQuestions() != null)
        {
            a(f.getCategoryQuestions(), i.item_opponent_count);
        }
        d();
    }

    private void d()
    {
        View view = getView().findViewById(i.item_crown);
        View view1 = getView().findViewById(i.item_challenge);
        ((TextView)view.findViewById(i.item_you_count)).setText(String.valueOf(e.getCrownsWon()));
        ((TextView)view.findViewById(i.item_opponent_count)).setText(String.valueOf(f.getCrownsWon()));
        ((TextView)view1.findViewById(i.item_you_count)).setText(String.valueOf(e.getChallengesWon()));
        ((TextView)view1.findViewById(i.item_opponent_count)).setText(String.valueOf(f.getChallengesWon()));
        ((TextView)view.findViewById(i.item_you_count)).setTextColor(getResources().getColor(f.crown_color));
        ((TextView)view.findViewById(i.item_opponent_count)).setTextColor(getResources().getColor(f.crown_color));
        ((TextView)view1.findViewById(i.item_you_count)).setTextColor(getResources().getColor(f.challenge_color));
        ((TextView)view1.findViewById(i.item_opponent_count)).setTextColor(getResources().getColor(f.challenge_color));
        ((TextView)view.findViewById(i.item_description)).setText(o.crown_plural);
        ((TextView)view1.findViewById(i.item_description)).setText(o.trivia_challenge_plural);
        ((ImageView)view.findViewById(i.item_image)).setImageResource(h.crown_score);
        ((ImageView)view1.findViewById(i.item_image)).setImageResource(h.challenge_score);
    }

    public com.etermax.preguntados.ui.game.b.b a()
    {
        return new com.etermax.preguntados.ui.game.b.b() {

            final a a;

            
            {
                a = a.this;
                super();
            }
        };
    }

    public void b()
    {
        d = new HashMap();
        d.put(c.a(5), Integer.valueOf(i.item_category_01));
        d.put(c.a(4), Integer.valueOf(i.item_category_02));
        d.put(c.a(3), Integer.valueOf(i.item_category_03));
        d.put(c.a(2), Integer.valueOf(i.item_category_04));
        d.put(c.a(1), Integer.valueOf(i.item_category_05));
        d.put(c.a(0), Integer.valueOf(i.item_category_06));
        for (int j = 0; j < d.size(); j++)
        {
            g g1 = c.a(c.a(j));
            com.etermax.preguntados.c.a.f f1 = c.d(c.a(j));
            int l = ((Integer)d.get(c.a(j))).intValue();
            View view = getView().findViewById(l);
            ((ImageView)view.findViewById(i.item_image)).setImageResource(f1.c());
            ((TextView)view.findViewById(i.item_description)).setText(getString(g1.getNameResource()));
            ((TextView)view.findViewById(i.item_you_count)).setTextColor(getResources().getColor(g1.getTextColorResource()));
            ((TextView)view.findViewById(i.item_opponent_count)).setTextColor(getResources().getColor(g1.getTextColorResource()));
            ((TextView)view.findViewById(i.item_you_count)).setText("-");
            ((TextView)view.findViewById(i.item_opponent_count)).setText("-");
        }

        c();
    }

    public Object getDummyCallbacks()
    {
        return a();
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        return layoutinflater.inflate(k.game_statistics_fragment, viewgroup, false);
    }
}
