// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import com.etermax.i;
import com.etermax.k;
import com.etermax.preguntados.datasource.d;
import com.etermax.preguntados.datasource.dto.UserFactoryTranslationStatDTO;
import com.etermax.preguntados.datasource.dto.UserQuestionStatsDTO;
import com.etermax.preguntados.datasource.dto.enums.QuestionCategory;
import com.etermax.preguntados.ui.questionsfactory.statistics.enums.TranslationOrigin;
import com.etermax.preguntados.ui.questionsfactory.statistics.enums.TranslationStatus;
import com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.a.f;
import com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.a.g;
import com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.a.h;
import com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.a.n;
import com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.a.o;
import com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.a.p;
import com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.a.r;
import com.etermax.tools.navigation.b;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public abstract class a extends b
{

    d a;
    TranslationOrigin b;
    int c;
    int d;
    private Map e;
    private r f;

    public a()
    {
    }

    static int a(a a1, QuestionCategory questioncategory)
    {
        return a1.c(questioncategory);
    }

    static Context a(a a1)
    {
        return a1.getApplicationContext();
    }

    static void a(a a1, Map map)
    {
        a1.a(map);
    }

    private void a(Map map)
    {
        Iterator iterator = map.keySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            QuestionCategory questioncategory = (QuestionCategory)iterator.next();
            UserQuestionStatsDTO userquestionstatsdto = (UserQuestionStatsDTO)map.get(questioncategory);
            int j = userquestionstatsdto.getTotal();
            ArrayList arraylist = new ArrayList();
            if (c(questioncategory) == 1)
            {
                arraylist.add(new com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.a.b(questioncategory, j));
            }
            if (userquestionstatsdto.getQuestions() != null)
            {
                for (Iterator iterator1 = userquestionstatsdto.getQuestions().iterator(); iterator1.hasNext(); arraylist.add(a((UserFactoryTranslationStatDTO)iterator1.next()))) { }
                if (c(questioncategory) == 1)
                {
                    e.put(questioncategory, Integer.valueOf(1));
                    f.a(questioncategory, arraylist);
                } else
                {
                    f.b(questioncategory, arraylist);
                }
                if (f.a(questioncategory) < j)
                {
                    o o1 = new o(questioncategory);
                    ArrayList arraylist1 = new ArrayList();
                    arraylist1.add(o1);
                    f.b(questioncategory, arraylist1);
                }
            }
        } while (true);
    }

    static r b(a a1)
    {
        return a1.f;
    }

    private void b(QuestionCategory questioncategory)
    {
        (new com.etermax.tools.i.a(questioncategory) {

            final QuestionCategory a;
            final a b;

            public Object a()
            {
                return b();
            }

            public void a(a a1, Map map)
            {
                super.a(a1, map);
                a.a(a1, map);
                com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.a.b(a1, a);
            }

            public volatile void a(Object obj, Object obj1)
            {
                a((a)obj, (Map)obj1);
            }

            public Map b()
            {
                return b.a.a(b.a(), b.b, a.a(b, a), a);
            }

            
            {
                b = a.this;
                a = questioncategory;
                super();
            }
        }).a(this);
    }

    static void b(a a1, QuestionCategory questioncategory)
    {
        a1.d(questioncategory);
    }

    private int c(QuestionCategory questioncategory)
    {
        if (e.containsKey(questioncategory))
        {
            return ((Integer)e.get(questioncategory)).intValue();
        } else
        {
            return 1;
        }
    }

    private void d(QuestionCategory questioncategory)
    {
        if (e.containsKey(questioncategory))
        {
            int j = 1 + ((Integer)e.get(questioncategory)).intValue();
            e.put(questioncategory, Integer.valueOf(j));
        }
    }

    protected android.widget.AdapterView.OnItemClickListener a(BaseAdapter baseadapter)
    {
        return new android.widget.AdapterView.OnItemClickListener(baseadapter) {

            final BaseAdapter a;
            final a b;

            public void onItemClick(AdapterView adapterview, View view, int j, long l)
            {
                com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.a.a a1 = (com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.a.a)a.getItem(j);
                class _cls4
                {

                    static final int a[];

                    static 
                    {
                        a = new int[n.values().length];
                        try
                        {
                            a[n.b.ordinal()] = 1;
                        }
                        catch (NoSuchFieldError nosuchfielderror) { }
                        try
                        {
                            a[n.c.ordinal()] = 2;
                        }
                        catch (NoSuchFieldError nosuchfielderror1)
                        {
                            return;
                        }
                    }
                }

                _cls4.a[a1.a().ordinal()];
                JVM INSTR tableswitch 1 2: default 48
            //                           1 49
            //                           2 106;
                   goto _L1 _L2 _L3
_L1:
                return;
_L2:
                f f1 = (f)a1;
                if ((a1 instanceof com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.a.k) || (a1 instanceof g))
                {
                    b.b(f1.c());
                    return;
                }
                if (a1 instanceof h)
                {
                    b.c(f1.c());
                    return;
                }
                continue; /* Loop/switch isn't completed */
_L3:
                o o1 = (o)a1;
                if (!o1.c())
                {
                    o1.a(true);
                    if (view instanceof p)
                    {
                        ((p)view).b();
                    }
                    b.a(o1.b());
                    return;
                }
                if (true) goto _L1; else goto _L4
_L4:
            }

            
            {
                b = a.this;
                a = baseadapter;
                super();
            }
        };
    }

    protected abstract TranslationStatus a();

    protected abstract com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.a.a a(UserFactoryTranslationStatDTO userfactorytranslationstatdto);

    protected void a(QuestionCategory questioncategory)
    {
        b(questioncategory);
    }

    protected void b()
    {
        c();
    }

    protected abstract void b(UserFactoryTranslationStatDTO userfactorytranslationstatdto);

    protected void c()
    {
        if (f != null)
        {
            f.a();
        }
        (new com.etermax.tools.i.a(getString(com.etermax.o.loading)) {

            final a a;

            public Object a()
            {
                return b();
            }

            public void a(a a1, Exception exception)
            {
                if ((exception instanceof com.etermax.preguntados.datasource.a.b) && ((com.etermax.preguntados.datasource.a.b)exception).c() == 416)
                {
                    Toast.makeText(a.a(a), a.getString(com.etermax.o.no_more_questions), 0).show();
                    b(false);
                    com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.a.b(a).a();
                }
                super.a(a1, exception);
            }

            public void a(a a1, Map map)
            {
                super.a(a1, map);
                a.a(a1, map);
            }

            public volatile void a(Object obj, Exception exception)
            {
                a((a)obj, exception);
            }

            public volatile void a(Object obj, Object obj1)
            {
                a((a)obj, (Map)obj1);
            }

            public Map b()
            {
                return a.a.a(a.a(), a.b);
            }

            
            {
                a = a.this;
                super(s);
            }
        }).a(this);
    }

    protected abstract void c(UserFactoryTranslationStatDTO userfactorytranslationstatdto);

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        f = new r(getApplicationContext());
        e = new HashMap();
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        View view = layoutinflater.inflate(k.statistics_questions_list_fragment, viewgroup, false);
        ((TextView)view.findViewById(i.questions_factory_header_title)).setText(com.etermax.o.my_questions);
        ((TextView)view.findViewById(i.statistics_questions_list_title)).setText(getString(c));
        ((TextView)view.findViewById(i.statistics_questions_list_subtitle)).setText(getString(d));
        ((ListView)view.findViewById(i.statistics_questions_list_view)).setAdapter(f);
        ((ListView)view.findViewById(i.statistics_questions_list_view)).setOnItemClickListener(a(f));
        return view;
    }
}
