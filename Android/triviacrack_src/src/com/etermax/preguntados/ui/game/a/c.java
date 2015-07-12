// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.a;

import com.etermax.preguntados.datasource.dto.AnswerDTO;
import com.etermax.preguntados.datasource.dto.AnswerListDTO;
import com.etermax.preguntados.datasource.dto.enums.GameType;
import com.etermax.preguntados.datasource.dto.enums.QuestionCategory;
import com.etermax.preguntados.datasource.dto.enums.Vote;
import java.util.ArrayList;
import java.util.List;

public class c
{

    private long a;
    private GameType b;
    private long c;
    private AnswerListDTO d;
    private long e;
    private int f;
    private int g;
    private QuestionCategory h;
    private ArrayList i;
    private Vote j;
    private int k;
    private Long l;

    public c(long l1, GameType gametype, long l2, int i1)
    {
        a = l1;
        b = gametype;
        c = l2;
        k = i1;
        l = Long.valueOf(0L);
        d = new AnswerListDTO();
        d.setAnswers(new ArrayList());
        b(0);
    }

    private void b(int i1)
    {
        f = i1;
        e = 0L;
        g = -2;
        i = new ArrayList();
        j = null;
    }

    public long a()
    {
        return a;
    }

    public void a(int i1)
    {
        g = i1;
    }

    public void a(long l1, QuestionCategory questioncategory)
    {
        e = l1;
        h = questioncategory;
    }

    public void a(Vote vote)
    {
        j = vote;
    }

    public void a(Long long1)
    {
        if (l == null)
        {
            l = Long.valueOf(0L);
        }
        l = Long.valueOf(l.longValue() + long1.longValue());
    }

    public void a(ArrayList arraylist)
    {
        i = arraylist;
    }

    public GameType b()
    {
        return b;
    }

    public int c()
    {
        return f;
    }

    public int d()
    {
        return g;
    }

    public ArrayList e()
    {
        return i;
    }

    public boolean f()
    {
        return g != -2;
    }

    public AnswerListDTO g()
    {
        d.setFinishTime(l);
        return d;
    }

    public long h()
    {
        return l.longValue();
    }

    public long i()
    {
        return c;
    }

    public void j()
    {
        AnswerDTO answerdto = new AnswerDTO();
        answerdto.setId(e);
        answerdto.setCategory(h);
        answerdto.setAnswer(g);
        answerdto.setPowerUps(i);
        answerdto.setVote(j);
        if (!d.getAnswers().contains(answerdto))
        {
            d.getAnswers().add(answerdto);
        }
    }

    public void k()
    {
        f = 1 + f;
        b(f);
    }

    public boolean l()
    {
        class _cls1
        {

            static final int a[];

            static 
            {
                a = new int[GameType.values().length];
                try
                {
                    a[GameType.DUEL_GAME.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    a[GameType.NORMAL.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1)
                {
                    return;
                }
            }
        }

        _cls1.a[b.ordinal()];
        JVM INSTR tableswitch 1 2: default 32
    //                   1 34
    //                   2 32;
           goto _L1 _L2 _L1
_L1:
        return false;
_L2:
        if (f < -1 + k)
        {
            return true;
        }
        if (true) goto _L1; else goto _L3
_L3:
    }
}
