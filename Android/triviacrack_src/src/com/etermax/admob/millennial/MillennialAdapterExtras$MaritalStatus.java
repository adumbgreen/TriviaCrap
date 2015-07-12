// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.admob.millennial;


public final class description extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES DIVORCED;
    public static final .VALUES ENGAGED;
    public static final .VALUES MARRIED;
    public static final .VALUES RELATIONSHIP;
    public static final .VALUES SINGLE;
    private final String description;

    public static description valueOf(String s)
    {
        return (description)Enum.valueOf(com/etermax/admob/millennial/MillennialAdapterExtras$MaritalStatus, s);
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
        SINGLE = new <init>("SINGLE", 0, "single");
        DIVORCED = new <init>("DIVORCED", 1, "divorced");
        ENGAGED = new <init>("ENGAGED", 2, "engaged");
        RELATIONSHIP = new <init>("RELATIONSHIP", 3, "relationship");
        MARRIED = new <init>("MARRIED", 4, "married");
        description adescription[] = new <init>[5];
        adescription[0] = SINGLE;
        adescription[1] = DIVORCED;
        adescription[2] = ENGAGED;
        adescription[3] = RELATIONSHIP;
        adescription[4] = MARRIED;
        $VALUES = adescription;
    }

    private (String s, int i, String s1)
    {
        super(s, i);
        description = s1;
    }
}
