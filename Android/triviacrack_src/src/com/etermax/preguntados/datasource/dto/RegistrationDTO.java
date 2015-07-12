// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.datasource.dto;

import java.io.Serializable;

public class RegistrationDTO
    implements Serializable
{

    private String address;
    private String area_code;
    private String birthdate;
    private String country;
    private String email;
    private String gender;
    private String government_id;
    private String name;
    private String province;
    private String surname;
    private String telephone;
    private String township;
    private String zip_code;

    public RegistrationDTO()
    {
    }

    public void setAddress(String s)
    {
        address = s;
    }

    public void setAreaCode(String s)
    {
        area_code = s;
    }

    public void setBirthdate(String s)
    {
        birthdate = s;
    }

    public void setCountry(String s)
    {
        country = s;
    }

    public void setEmail(String s)
    {
        email = s;
    }

    public void setGender(String s)
    {
        gender = s;
    }

    public void setGovernmentId(String s)
    {
        government_id = s;
    }

    public void setName(String s)
    {
        name = s;
    }

    public void setPhone(String s)
    {
        telephone = s;
    }

    public void setProvince(String s)
    {
        province = s;
    }

    public void setSurname(String s)
    {
        surname = s;
    }

    public void setTownship(String s)
    {
        township = s;
    }

    public void setZipCode(String s)
    {
        zip_code = s;
    }
}
