// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.inapp.purchasing;

import java.util.Date;

public final class SubscriptionPeriod
{

    private static final String TO_STRING_FORMAT = "(%s, startDate: \"%s\", endDate: \"%s\")";
    final Date _endDate;
    final Date _startDate;

    SubscriptionPeriod(Date date, Date date1)
    {
        _startDate = date;
        _endDate = date1;
    }

    public Date getEndDate()
    {
        return _endDate;
    }

    public Date getStartDate()
    {
        return _startDate;
    }

    public String toString()
    {
        Object aobj[] = new Object[3];
        aobj[0] = super.toString();
        aobj[1] = _startDate;
        aobj[2] = _endDate;
        return String.format("(%s, startDate: \"%s\", endDate: \"%s\")", aobj);
    }
}
