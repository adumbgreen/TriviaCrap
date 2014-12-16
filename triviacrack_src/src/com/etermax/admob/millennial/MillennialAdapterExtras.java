// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.admob.millennial;

import com.google.ads.mediation.NetworkExtras;

public final class MillennialAdapterExtras
    implements NetworkExtras
{

    private Boolean children;
    private Education education;
    private Ethnicity ethnicity;
    private Integer income;
    private InterstitialTime interstitialTime;
    private MaritalStatus maritalStatus;
    private Orientation orientation;
    private Politics politics;
    private String postalCode;

    public MillennialAdapterExtras()
    {
        interstitialTime = InterstitialTime.UNKNOWN;
        income = null;
        maritalStatus = null;
        ethnicity = null;
        orientation = null;
        politics = null;
        education = null;
        children = null;
        postalCode = null;
    }

    public Boolean getChildren()
    {
        return children;
    }

    public Education getEducation()
    {
        return education;
    }

    public Ethnicity getEthnicity()
    {
        return ethnicity;
    }

    public Integer getIncomeInUsDollars()
    {
        return income;
    }

    public MaritalStatus getMaritalStatus()
    {
        return maritalStatus;
    }

    public Politics getPolitics()
    {
        return politics;
    }

    public String getPostalCode()
    {
        return postalCode;
    }

    private class InterstitialTime extends Enum
    {

        private static final InterstitialTime $VALUES[];
        public static final InterstitialTime APP_LAUNCH;
        public static final InterstitialTime TRANSITION;
        public static final InterstitialTime UNKNOWN;

        public static InterstitialTime valueOf(String s)
        {
            return (InterstitialTime)Enum.valueOf(com/etermax/admob/millennial/MillennialAdapterExtras$InterstitialTime, s);
        }

        public static InterstitialTime[] values()
        {
            return (InterstitialTime[])$VALUES.clone();
        }

        static 
        {
            UNKNOWN = new InterstitialTime("UNKNOWN", 0);
            APP_LAUNCH = new InterstitialTime("APP_LAUNCH", 1);
            TRANSITION = new InterstitialTime("TRANSITION", 2);
            InterstitialTime ainterstitialtime[] = new InterstitialTime[3];
            ainterstitialtime[0] = UNKNOWN;
            ainterstitialtime[1] = APP_LAUNCH;
            ainterstitialtime[2] = TRANSITION;
            $VALUES = ainterstitialtime;
        }

        private InterstitialTime(String s, int i)
        {
            super(s, i);
        }
    }

}
