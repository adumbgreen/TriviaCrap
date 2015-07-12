// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.login.accountmanager;

import com.etermax.tools.nationality.Nationality;
import java.util.Date;

public interface a
{

    public abstract void a();

    public abstract void a(Nationality nationality);

    public abstract void a(String s);

    public abstract void a(String s, long l1, String s1, String s2, boolean flag, String s3, 
            String s4, String s5, boolean flag1, boolean flag2, com.etermax.gamescommon.login.datasource.dto.UserDTO.Gender gender, Date date, Nationality nationality);

    public abstract void a(boolean flag);

    public abstract String b();

    public abstract void b(String s);

    public abstract void b(boolean flag);

    public abstract String c();

    public abstract void c(String s);

    public abstract void c(boolean flag);

    public abstract long d();

    public abstract void d(String s);

    public abstract String e();

    public abstract void e(String s);

    public abstract String f();

    public abstract void f(String s);

    public abstract void g(String s);

    public abstract boolean g();

    public abstract String h();

    public abstract String i();

    public abstract String j();

    public abstract boolean k();

    public abstract boolean l();

    public abstract com.etermax.gamescommon.login.datasource.dto.UserDTO.Gender m();

    public abstract Date n();

    public abstract Nationality o();

    public abstract boolean p();
}
