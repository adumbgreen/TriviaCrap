// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.d;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.ArrayList;

public class i
{

    public i()
    {
    }

    private ArrayList a(SharedPreferences sharedpreferences)
    {
        ArrayList arraylist = new ArrayList();
        for (int j = 0; j < 4; j++)
        {
            if (sharedpreferences.getInt((new StringBuilder()).append("tip_shown_").append(j).toString(), 0) < 5 && sharedpreferences.getInt((new StringBuilder()).append("tip_uses_").append(j).toString(), 0) < 3)
            {
                arraylist.add(Integer.valueOf(j));
            }
        }

        return arraylist;
    }

    public void a(Context context)
    {
        context.getSharedPreferences("tutorial_preferences", 0).edit().putBoolean("tutorial_answer_crown_ok", true).commit();
    }

    public void a(Context context, int j)
    {
        SharedPreferences sharedpreferences = context.getSharedPreferences("tutorial_preferences", 0);
        int k = 1 + sharedpreferences.getInt((new StringBuilder()).append("tip_shown_").append(j).toString(), 0);
        sharedpreferences.edit().putInt((new StringBuilder()).append("tip_shown_").append(j).toString(), k).commit();
        if (a(sharedpreferences).size() == 0)
        {
            sharedpreferences.edit().putBoolean("tips_must_show", false).commit();
        }
    }

    public boolean a(Context context, String s)
    {
        if (context != null)
        {
            SharedPreferences sharedpreferences = context.getSharedPreferences("tutorial_preferences", 0);
            if (sharedpreferences.getBoolean(s, true))
            {
                sharedpreferences.edit().putBoolean(s, false).commit();
                return true;
            } else
            {
                return false;
            }
        } else
        {
            return false;
        }
    }

    public void b(Context context, int j)
    {
        SharedPreferences sharedpreferences = context.getSharedPreferences("tutorial_preferences", 0);
        int k = sharedpreferences.getInt((new StringBuilder()).append("tip_uses_").append(j).toString(), 0);
        if (k <= 2)
        {
            int l = k + 1;
            sharedpreferences.edit().putInt((new StringBuilder()).append("tip_uses_").append(j).toString(), l).commit();
            if (a(sharedpreferences).size() == 0)
            {
                sharedpreferences.edit().putBoolean("tips_must_show", false).commit();
                return;
            }
        }
    }

    public boolean b(Context context)
    {
        return context.getSharedPreferences("tutorial_preferences", 0).getBoolean("tutorial_answer_crown_ok", false);
    }

    public int c(Context context)
    {
        SharedPreferences sharedpreferences = context.getSharedPreferences("tutorial_preferences", 0);
        ArrayList arraylist = a(sharedpreferences);
        if (arraylist.size() == 0)
        {
            sharedpreferences.edit().putBoolean("tips_must_show", false).commit();
            return 0;
        } else
        {
            int j = (1 + sharedpreferences.getInt("tips_next_tip", 0)) % arraylist.size();
            int k = ((Integer)arraylist.get(j)).intValue();
            sharedpreferences.edit().putInt("tips_next_tip", j).commit();
            return k;
        }
    }

    public boolean d(Context context)
    {
        SharedPreferences sharedpreferences = context.getSharedPreferences("tutorial_preferences", 0);
        boolean flag = sharedpreferences.getBoolean("tips_must_show", false);
        boolean flag1 = false;
        if (flag)
        {
            sharedpreferences.edit().putBoolean("tips_must_show", false).commit();
            flag1 = true;
        }
        return flag1;
    }

    public void e(Context context)
    {
        SharedPreferences sharedpreferences = context.getSharedPreferences("tutorial_preferences", 0);
        if (a(sharedpreferences).size() == 0)
        {
            return;
        }
        int j = 1 + sharedpreferences.getInt("tips_counter_responses", 0);
        if (j > 9)
        {
            sharedpreferences.edit().putBoolean("tips_must_show", true).commit();
            sharedpreferences.edit().putInt("tips_counter_responses", 0).commit();
            return;
        } else
        {
            sharedpreferences.edit().putInt("tips_counter_responses", j).commit();
            return;
        }
    }

    public void f(Context context)
    {
        context.getSharedPreferences("tutorial_preferences", 0).edit().putBoolean("tutorial_spin", true).putBoolean("tutorial_category_fragment", true).putBoolean("tutorial_category_confirm", true).putBoolean("tutorial_chrown_challenge", true).putBoolean("tutorial_first_charge", true).putBoolean("tutorial_second_charge", true).putBoolean("tutorial_you_won", true).putBoolean("tutorial_answer_crown_ok", false).commit();
    }
}
