// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.login.accountmanager.a;

import android.content.Context;
import android.content.SharedPreferences;
import com.etermax.tools.nationality.Nationality;
import java.util.Date;

public class a
    implements com.etermax.gamescommon.login.accountmanager.a
{

    private Context a;

    public a(Context context)
    {
        a = context;
    }

    private void b(String s, long l1, String s1, String s2, boolean flag, String s3, 
            String s4, String s5, boolean flag1, boolean flag2, com.etermax.gamescommon.login.datasource.dto.UserDTO.Gender gender, Date date, Nationality nationality)
    {
        String s6;
        String s7;
        SharedPreferences sharedpreferences;
        if (gender != null)
        {
            s6 = gender.toString();
        } else
        {
            s6 = null;
        }
        s7 = null;
        if (nationality != null)
        {
            s7 = nationality.name();
        }
        sharedpreferences = q();
        sharedpreferences.edit().putString("angrygames_cookie_key", s).putLong("angrygames_user_id_key", l1).putString("angrygames_email_key", s1).putString("angrygames_username_key", s2).putBoolean("angrygames_has_pass_key", flag).putString("angrygames_photo_url_key", s3).putString("angrygames_facebook_name_key", s5).putString("angrygames_facebook_id_key", s4).putBoolean("angrygames_facebook_show_name_key", flag1).putBoolean("angrygames_facebook_show_picture_key", flag2).putString("angrygames_gender_key", s6).putString("angrygames_nationality_key", s7).commit();
        if (date != null)
        {
            sharedpreferences.edit().putLong("angrygames_birthdate_key", date.getTime()).commit();
            return;
        } else
        {
            sharedpreferences.edit().remove("angrygames_birthdate_key").commit();
            return;
        }
    }

    private String h(String s)
    {
        return q().getString(s, null);
    }

    private SharedPreferences q()
    {
        return a.getSharedPreferences("angrygames_credential_preferences_key", 0);
    }

    public void a()
    {
        b(null, 0L, null, null, false, null, null, null, false, false, null, null, null);
    }

    public void a(long l1)
    {
        q().edit().putLong("angrygames_user_id_key", l1).commit();
    }

    public void a(com.etermax.gamescommon.login.datasource.dto.UserDTO.Gender gender)
    {
        q().edit().putString("angrygames_gender_key", gender.toString()).commit();
    }

    public void a(Nationality nationality)
    {
        q().edit().putString("angrygames_nationality_key", nationality.name()).commit();
    }

    public void a(String s)
    {
        q().edit().putString("angrygames_cookie_key", s).commit();
    }

    public void a(String s, long l1, String s1, String s2, boolean flag, String s3, 
            String s4, String s5, boolean flag1, boolean flag2, com.etermax.gamescommon.login.datasource.dto.UserDTO.Gender gender, Date date, Nationality nationality)
    {
        b(s, l1, s1, s2, flag, s3, s4, s5, flag1, flag2, gender, date, nationality);
    }

    public void a(Date date)
    {
        q().edit().putLong("angrygames_birthdate_key", date.getTime()).commit();
    }

    public void a(boolean flag)
    {
        q().edit().putBoolean("angrygames_has_pass_key", flag).commit();
    }

    public String b()
    {
        return h("angrygames_installation_id_key");
    }

    public void b(String s)
    {
        q().edit().putString("angrygames_username_key", s).commit();
    }

    public void b(boolean flag)
    {
        q().edit().putBoolean("angrygames_facebook_show_name_key", flag).commit();
    }

    public String c()
    {
        return h("angrygames_cookie_key");
    }

    public void c(String s)
    {
        q().edit().putString("angrygames_facebook_id_key", s).commit();
    }

    public void c(boolean flag)
    {
        q().edit().putBoolean("angrygames_facebook_show_picture_key", flag).commit();
    }

    public long d()
    {
        return q().getLong("angrygames_user_id_key", 0L);
    }

    public void d(String s)
    {
        q().edit().putString("angrygames_facebook_name_key", s).commit();
    }

    public String e()
    {
        return h("angrygames_email_key");
    }

    public void e(String s)
    {
        q().edit().putString("angrygames_photo_url_key", s).commit();
    }

    public String f()
    {
        return h("angrygames_username_key");
    }

    public void f(String s)
    {
        q().edit().putString("angrygames_installation_id_key", s).commit();
    }

    public void g(String s)
    {
        q().edit().putString("angrygames_email_key", s).commit();
    }

    public boolean g()
    {
        return q().getBoolean("angrygames_has_pass_key", false);
    }

    public String h()
    {
        return h("angrygames_photo_url_key");
    }

    public String i()
    {
        return h("angrygames_facebook_id_key");
    }

    public String j()
    {
        return h("angrygames_facebook_name_key");
    }

    public boolean k()
    {
        return q().getBoolean("angrygames_facebook_show_name_key", false);
    }

    public boolean l()
    {
        return q().getBoolean("angrygames_facebook_show_picture_key", false);
    }

    public com.etermax.gamescommon.login.datasource.dto.UserDTO.Gender m()
    {
        String s = h("angrygames_gender_key");
        if (s != null)
        {
            if (s.equals(com.etermax.gamescommon.login.datasource.dto.UserDTO.Gender.MALE.toString()))
            {
                return com.etermax.gamescommon.login.datasource.dto.UserDTO.Gender.MALE;
            }
            if (s.equals(com.etermax.gamescommon.login.datasource.dto.UserDTO.Gender.FEMALE.toString()))
            {
                return com.etermax.gamescommon.login.datasource.dto.UserDTO.Gender.FEMALE;
            }
        }
        return null;
    }

    public Date n()
    {
        long l1 = q().getLong("angrygames_birthdate_key", -1L);
        if (l1 == -1L)
        {
            return null;
        } else
        {
            return new Date(l1);
        }
    }

    public Nationality o()
    {
        String s = h("angrygames_nationality_key");
        if (s == null)
        {
            return null;
        }
        Nationality nationality;
        try
        {
            nationality = Nationality.valueOf(s);
        }
        catch (IllegalArgumentException illegalargumentexception)
        {
            com.etermax.a.a.c("COUNTRY_NOT_FOUND", "Country not found");
            return null;
        }
        return nationality;
    }

    public boolean p()
    {
        return d() > 0L;
    }
}
