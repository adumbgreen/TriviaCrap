// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.login.datasource.dto;


public class DeviceInfo
{

    private String account_type;
    private String courier_service_type;
    private String device;
    private String installation_id;
    private String notification_id;
    private String old_installation_id;

    public DeviceInfo()
    {
    }

    public DeviceInfo(String s, String s1, String s2)
    {
        device = s;
        installation_id = s1;
        old_installation_id = s2;
        courier_service_type = "GCM";
    }

    public String getInstallation_id()
    {
        return installation_id;
    }

    public void setAccount_type(String s)
    {
        account_type = s;
    }

    public void setNotification_id(String s)
    {
        notification_id = s;
    }
}
