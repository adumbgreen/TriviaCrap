// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.login.datasource.dto;

import com.etermax.tools.nationality.Nationality;
import java.util.Date;

// Referenced classes of package com.etermax.gamescommon.login.datasource.dto:
//            DeviceInfo

public class UserInfo
{

    private boolean autogenerate_username;
    private Date birthdate;
    private Nationality country;
    private String email;
    private UserDTO.Gender gender;
    private boolean guest;
    private String language;
    private String new_password;
    private String password;
    private DeviceInfo user_device;
    private String username;
    private boolean validate_domain;

    public UserInfo()
    {
    }

    public UserInfo(String s)
    {
        email = s;
    }

    public UserInfo(String s, DeviceInfo deviceinfo)
    {
        email = s;
        user_device = deviceinfo;
    }

    public UserInfo(String s, String s1, DeviceInfo deviceinfo)
    {
        this(s, deviceinfo);
        password = s1;
    }

    public void setAutogenerate_username(boolean flag)
    {
        autogenerate_username = flag;
    }

    public void setBirthdate(Date date)
    {
        birthdate = date;
    }

    public void setEmail(String s)
    {
        email = s;
    }

    public void setGender(UserDTO.Gender gender1)
    {
        gender = gender1;
    }

    public void setGuest(boolean flag)
    {
        guest = flag;
    }

    public void setLanguage(String s)
    {
        language = s;
    }

    public void setNationality(Nationality nationality)
    {
        country = nationality;
    }

    public void setNew_password(String s)
    {
        new_password = s;
    }

    public void setPassword(String s)
    {
        password = s;
    }

    public void setUser_device(DeviceInfo deviceinfo)
    {
        user_device = deviceinfo;
    }

    public void setUsername(String s)
    {
        username = s;
    }

    public void setValidate_domain(boolean flag)
    {
        validate_domain = flag;
    }
}
