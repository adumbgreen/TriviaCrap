// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.datasource;

import com.etermax.preguntados.datasource.dto.GameDTO;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class a
{

    static Comparator a = new Comparator() {

        public int a(GameDTO gamedto, GameDTO gamedto1)
        {
            if (gamedto.getEnded_date() != null && gamedto1.getEnded_date() != null)
            {
                return gamedto1.getEnded_date().compareTo(gamedto.getEnded_date());
            }
            if (gamedto1.getEnded_date() == null && gamedto.getEnded_date() != null)
            {
                return gamedto1.getCreated().compareTo(gamedto.getEnded_date());
            }
            if (gamedto.getEnded_date() == null && gamedto1.getEnded_date() != null)
            {
                return gamedto1.getEnded_date().compareTo(gamedto.getCreated());
            } else
            {
                return gamedto1.getCreated().compareTo(gamedto.getCreated());
            }
        }

        public int compare(Object obj, Object obj1)
        {
            return a((GameDTO)obj, (GameDTO)obj1);
        }

    };
    static Comparator b = new Comparator() {

        public int a(GameDTO gamedto, GameDTO gamedto1)
        {
            if (!gamedto.isFirstTurn() || gamedto1.isFirstTurn())
            {
                if (!gamedto.isFirstTurn() && gamedto1.isFirstTurn())
                {
                    return 1;
                }
                if (!gamedto.isSecondTurn() || gamedto1.isSecondTurn())
                {
                    if (!gamedto.isSecondTurn() && gamedto1.isSecondTurn())
                    {
                        return 1;
                    }
                    if (gamedto.getLast_turn() != null && gamedto1.getLast_turn() != null)
                    {
                        return gamedto.getLast_turn().compareTo(gamedto1.getLast_turn());
                    }
                    if (gamedto.getLast_turn() == null && gamedto1.getLast_turn() != null)
                    {
                        return gamedto.getCreated().compareTo(gamedto1.getLast_turn());
                    }
                    if (gamedto1.getLast_turn() == null && gamedto.getLast_turn() != null)
                    {
                        return gamedto.getLast_turn().compareTo(gamedto1.getCreated());
                    } else
                    {
                        return gamedto.getCreated().compareTo(gamedto1.getCreated());
                    }
                }
            }
            return -1;
        }

        public int compare(Object obj, Object obj1)
        {
            return a((GameDTO)obj, (GameDTO)obj1);
        }

    };
    static Comparator c = new Comparator() {

        public int a(GameDTO gamedto, GameDTO gamedto1)
        {
            return gamedto.getLast_turn().compareTo(gamedto1.getLast_turn());
        }

        public int compare(Object obj, Object obj1)
        {
            return a((GameDTO)obj, (GameDTO)obj1);
        }

    };
    static Comparator d = new Comparator() {

        public int a(GameDTO gamedto, GameDTO gamedto1)
        {
            if (gamedto.getLast_turn() != null && gamedto1.getLast_turn() != null)
            {
                return gamedto.getLast_turn().compareTo(gamedto1.getLast_turn());
            }
            if (gamedto.getLast_turn() == null && gamedto1.getLast_turn() != null)
            {
                return gamedto.getCreated().compareTo(gamedto1.getLast_turn());
            }
            if (gamedto1.getLast_turn() == null && gamedto.getLast_turn() != null)
            {
                return gamedto.getLast_turn().compareTo(gamedto1.getCreated());
            } else
            {
                return gamedto.getCreated().compareTo(gamedto1.getCreated());
            }
        }

        public int compare(Object obj, Object obj1)
        {
            return a((GameDTO)obj, (GameDTO)obj1);
        }

    };

    public static List a(List list)
    {
        ArrayList arraylist = new ArrayList(list.size());
        ArrayList arraylist1 = new ArrayList();
        ArrayList arraylist2 = new ArrayList();
        ArrayList arraylist3 = new ArrayList();
        ArrayList arraylist4 = new ArrayList();
        for (Iterator iterator = list.iterator(); iterator.hasNext();)
        {
            GameDTO gamedto = (GameDTO)iterator.next();
            if (gamedto.isEnded())
            {
                arraylist1.add(gamedto);
            } else
            if (gamedto.isMyTurn())
            {
                arraylist2.add(gamedto);
            } else
            if (gamedto.isPendingApproval())
            {
                arraylist3.add(gamedto);
            } else
            {
                arraylist4.add(gamedto);
            }
        }

        Collections.sort(arraylist1, a);
        Collections.sort(arraylist2, b);
        Collections.sort(arraylist3, c);
        Collections.sort(arraylist4, d);
        arraylist.addAll(arraylist1);
        arraylist.addAll(arraylist2);
        arraylist.addAll(arraylist3);
        arraylist.addAll(arraylist4);
        return arraylist;
    }

}
