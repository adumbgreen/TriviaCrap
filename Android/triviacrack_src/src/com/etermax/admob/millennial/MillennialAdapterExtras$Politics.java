// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.admob.millennial;


public final class description extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES CONSERVATIVE;
    public static final .VALUES DEMOCRAT;
    public static final .VALUES INDEPENDENT;
    public static final .VALUES LIBERAL;
    public static final .VALUES MODERATE;
    public static final .VALUES OTHER;
    public static final .VALUES REPUBLICAN;
    public static final .VALUES UNKNOWN;
    private final String description;

    public static description valueOf(String s)
    {
        return (description)Enum.valueOf(com/etermax/admob/millennial/MillennialAdapterExtras$Politics, s);
    }

    public static description[] values()
    {
        return (description[])$VALUES.clone();
    }

    public String getDescription()
    {
        return description;
    }

    static 
    {
        REPUBLICAN = new <init>("REPUBLICAN", 0, "republican");
        DEMOCRAT = new <init>("DEMOCRAT", 1, "democrat");
        CONSERVATIVE = new <init>("CONSERVATIVE", 2, "conservative");
        MODERATE = new <init>("MODERATE", 3, "moderate");
        LIBERAL = new <init>("LIBERAL", 4, "liberal");
        INDEPENDENT = new <init>("INDEPENDENT", 5, "independent");
        OTHER = new <init>("OTHER", 6, "other");
        UNKNOWN = new <init>("UNKNOWN", 7, "unknown");
        description adescription[] = new <init>[8];
        adescription[0] = REPUBLICAN;
        adescription[1] = DEMOCRAT;
        adescription[2] = CONSERVATIVE;
        adescription[3] = MODERATE;
        adescription[4] = LIBERAL;
        adescription[5] = INDEPENDENT;
        adescription[6] = OTHER;
        adescription[7] = UNKNOWN;
        $VALUES = adescription;
    }

    private (String s, int i, String s1)
    {
        super(s, i);
        description = s1;
    }
}
