// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.login.accountmanager.shared;

import android.accounts.Account;
import android.accounts.AccountAuthenticatorActivity;
import android.accounts.AccountManager;
import android.content.Context;
import android.os.Bundle;
import com.etermax.gamescommon.login.accountmanager.a;
import com.etermax.tools.nationality.Nationality;
import java.util.Date;

public class SharedAccountManager extends AccountAuthenticatorActivity
    implements a
{

    private AccountManager a;

    public SharedAccountManager(Context context)
    {
        a = AccountManager.get(context);
    }

    private void a(String s, String s1)
    {
        Account account;
        account = q();
        if (account == null)
        {
            break MISSING_BLOCK_LABEL_19;
        }
        a.setUserData(account, s, s1);
        return;
        SecurityException securityexception;
        securityexception;
        com.etermax.a.a.b("SHARED", securityexception.getMessage());
        return;
    }

    private String h(String s)
    {
        Account account = q();
        String s1 = null;
        if (account != null)
        {
            String s2;
            try
            {
                s2 = a.getUserData(account, s);
            }
            catch (SecurityException securityexception)
            {
                com.etermax.a.a.b("SHARED", securityexception.getMessage());
                return null;
            }
            s1 = s2;
        }
        return s1;
    }

    private Account q()
    {
        Account aaccount[] = a.getAccountsByType("com.etermax.games.account");
        if (aaccount.length == 0)
        {
            return null;
        } else
        {
            return aaccount[0];
        }
    }

    public void a()
    {
        Account account;
        account = q();
        if (account == null)
        {
            break MISSING_BLOCK_LABEL_42;
        }
        a.setUserData(account, "angrygames_user_id_key", null);
        a.setUserData(account, "angrygames_cookie_key", null);
        a.removeAccount(account, null, null);
        return;
        SecurityException securityexception;
        securityexception;
        com.etermax.a.a.b("SHARED", securityexception.getMessage());
        return;
    }

    public void a(Nationality nationality)
    {
        a("angrygames_nationality_key", nationality.name());
    }

    public void a(String s)
    {
        a("angrygames_cookie_key", s);
    }

    public void a(String s, long l1, String s1, String s2, boolean flag, String s3, 
            String s4, String s5, boolean flag1, boolean flag2, com.etermax.gamescommon.login.datasource.dto.UserDTO.Gender gender, Date date, Nationality nationality)
    {
        if (s1 != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        Account account;
        account = q();
        if (account == null)
        {
            break MISSING_BLOCK_LABEL_284;
        }
        if (!account.name.equals(s1))
        {
            break MISSING_BLOCK_LABEL_280;
        }
        a.setUserData(account, "angrygames_cookie_key", s);
        a.setUserData(account, "angrygames_user_id_key", String.valueOf(l1));
        a.setUserData(account, "angrygames_username_key", s2);
        a.setUserData(account, "angrygames_facebook_id_key", s4);
        a.setUserData(account, "angrygames_has_pass_key", String.valueOf(flag));
        a.setUserData(account, "angrygames_photo_url_key", s3);
        a.setUserData(account, "angrygames_facebook_name_key", s5);
        a.setUserData(account, "angrygames_facebook_show_name_key", String.valueOf(flag1));
        a.setUserData(account, "angrygames_facebook_show_picture_key", String.valueOf(flag2));
        if (gender == null) goto _L4; else goto _L3
_L3:
        a.setUserData(account, "angrygames_gender_key", gender.toString());
_L7:
        if (date == null) goto _L6; else goto _L5
_L5:
        a.setUserData(account, "angrygames_birthdate_key", Long.toString(date.getTime()));
_L8:
        if (nationality != null)
        {
            try
            {
                a.setUserData(account, "angrygames_nationality_key", nationality.toString());
                return;
            }
            catch (SecurityException securityexception1)
            {
                com.etermax.a.a.b("SHARED", securityexception1.getMessage());
            }
            return;
        }
        break MISSING_BLOCK_LABEL_267;
_L4:
        a.setUserData(account, "angrygames_gender_key", null);
          goto _L7
_L6:
        a.setUserData(account, "angrygames_birthdate_key", null);
          goto _L8
        a.setUserData(account, "angrygames_nationality_key", null);
        return;
          goto _L7
        a();
        Account account1 = new Account(s1, "com.etermax.games.account");
        Bundle bundle = new Bundle();
        bundle.putString("angrygames_cookie_key", s);
        bundle.putString("angrygames_user_id_key", String.valueOf(l1));
        bundle.putString("angrygames_username_key", s2);
        bundle.putString("angrygames_facebook_id_key", s4);
        bundle.putString("angrygames_has_pass_key", String.valueOf(flag));
        bundle.putString("angrygames_photo_url_key", s3);
        bundle.putString("angrygames_facebook_name_key", s5);
        bundle.putString("angrygames_facebook_show_name_key", String.valueOf(flag1));
        bundle.putString("angrygames_facebook_show_picture_key", String.valueOf(flag2));
        SecurityException securityexception;
        Bundle bundle1;
        if (gender != null)
        {
            bundle.putString("angrygames_gender_key", gender.toString());
        } else
        {
            bundle.remove("angrygames_gender_key");
        }
        if (date != null)
        {
            bundle.putString("angrygames_birthdate_key", Long.toString(date.getTime()));
        } else
        {
            bundle.remove("angrygames_birthdate_key");
        }
        if (nationality != null)
        {
            bundle.putString("angrygames_nationality_key", nationality.toString());
        } else
        {
            bundle.remove("angrygames_nationality_key");
        }
        if (!a.addAccountExplicitly(account1, "", bundle)) goto _L1; else goto _L9
_L9:
        bundle1 = new Bundle();
        bundle1.putString("authAccount", account1.name);
        bundle1.putString("accountType", account1.type);
        setAccountAuthenticatorResult(bundle1);
        return;
        securityexception;
        com.etermax.a.a.b("SHARED", securityexception.getMessage());
        return;
    }

    public void a(boolean flag)
    {
        a("angrygames_has_pass_key", String.valueOf(flag));
    }

    public String b()
    {
        return h("angrygames_installation_id_key");
    }

    public void b(String s)
    {
        a("angrygames_username_key", s);
    }

    public void b(boolean flag)
    {
        a("angrygames_facebook_show_name_key", String.valueOf(flag));
    }

    public String c()
    {
        return h("angrygames_cookie_key");
    }

    public void c(String s)
    {
        a("angrygames_facebook_id_key", s);
    }

    public void c(boolean flag)
    {
        a("angrygames_facebook_show_picture_key", String.valueOf(flag));
    }

    public long d()
    {
        String s = h("angrygames_user_id_key");
        long l1 = 0L;
        if (s != null)
        {
            l1 = Long.valueOf(s).longValue();
        }
        return l1;
    }

    public void d(String s)
    {
        a("angrygames_facebook_name_key", s);
    }

    public String e()
    {
        Account account = q();
        String s = null;
        if (account != null)
        {
            s = account.name;
        }
        return s;
    }

    public void e(String s)
    {
        a("angrygames_photo_url_key", s);
    }

    public String f()
    {
        return h("angrygames_username_key");
    }

    public void f(String s)
    {
        a("angrygames_installation_id_key", s);
    }

    public void g(String s)
    {
    }

    public boolean g()
    {
        return Boolean.valueOf(h("angrygames_has_pass_key")).booleanValue();
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
        return Boolean.valueOf(h("angrygames_facebook_show_name_key")).booleanValue();
    }

    public boolean l()
    {
        return Boolean.valueOf(h("angrygames_facebook_show_picture_key")).booleanValue();
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
        String s = h("angrygames_birthdate_key");
        if (s == null)
        {
            return null;
        } else
        {
            return new Date(Long.parseLong(s));
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
