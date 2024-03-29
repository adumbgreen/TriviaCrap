// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;

import java.util.Locale;

// Referenced classes of package com.amazon.device.ads:
//            NumberUtils, Log

public class AdSize
{

    private static final String LOG_TAG = "AdSize";
    public static final AdSize SIZE_1024x50 = new AdSize(1024, 50);
    public static final AdSize SIZE_300x250 = new AdSize(300, 250);
    public static final AdSize SIZE_300x50 = new AdSize(300, 50);
    public static final AdSize SIZE_320x50 = new AdSize(320, 50);
    public static final AdSize SIZE_600x90 = new AdSize(600, 90);
    public static final AdSize SIZE_728x90 = new AdSize(728, 90);
    public static final AdSize SIZE_AUTO;
    static final AdSize SIZE_INTERSTITIAL;
    private int height;
    private SizeType type;
    private int width;

    public AdSize(int i, int j)
    {
        initialize(i, j);
    }

    AdSize(SizeType sizetype)
    {
        type = sizetype;
    }

    AdSize(String s, String s1)
    {
        initialize(NumberUtils.parseInt(s, 0), NumberUtils.parseInt(s1, 0));
    }

    protected static String getAsSizeString(int i, int j)
    {
        return (new StringBuilder()).append(Integer.toString(i)).append("x").append(Integer.toString(j)).toString();
    }

    private void initialize(int i, int j)
    {
        if (i <= 0 || j <= 0)
        {
            Log.e("AdSize", "The width and height must be positive integers.");
            throw new IllegalArgumentException("The width and height must be positive integers.");
        } else
        {
            width = i;
            height = j;
            type = SizeType.EXPLICIT;
            return;
        }
    }

    public int getHeight()
    {
        return height;
    }

    public int getWidth()
    {
        return width;
    }

    public boolean isAuto()
    {
        return type == SizeType.AUTO;
    }

    public String toString()
    {
        class _cls1
        {

            static final int $SwitchMap$com$amazon$device$ads$AdSize$SizeType[];

            static 
            {
                $SwitchMap$com$amazon$device$ads$AdSize$SizeType = new int[SizeType.values().length];
                try
                {
                    $SwitchMap$com$amazon$device$ads$AdSize$SizeType[SizeType.EXPLICIT.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    $SwitchMap$com$amazon$device$ads$AdSize$SizeType[SizeType.AUTO.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    $SwitchMap$com$amazon$device$ads$AdSize$SizeType[SizeType.INTERSTITIAL.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2)
                {
                    return;
                }
            }
        }

        switch (_cls1..SwitchMap.com.amazon.device.ads.AdSize.SizeType[type.ordinal()])
        {
        default:
            return null;

        case 1: // '\001'
            Locale locale = Locale.US;
            Object aobj[] = new Object[2];
            aobj[0] = Integer.valueOf(width);
            aobj[1] = Integer.valueOf(height);
            return String.format(locale, "%dx%d", aobj);

        case 2: // '\002'
            return "auto";

        case 3: // '\003'
            return "interstitial";
        }
    }

    static 
    {
        SIZE_AUTO = new AdSize(SizeType.AUTO);
        SIZE_INTERSTITIAL = new AdSize(SizeType.INTERSTITIAL);
    }

    private class SizeType extends Enum
    {

        private static final SizeType $VALUES[];
        public static final SizeType AUTO;
        public static final SizeType EXPLICIT;
        public static final SizeType INTERSTITIAL;

        public static SizeType valueOf(String s)
        {
            return (SizeType)Enum.valueOf(com/amazon/device/ads/AdSize$SizeType, s);
        }

        public static SizeType[] values()
        {
            return (SizeType[])$VALUES.clone();
        }

        static 
        {
            EXPLICIT = new SizeType("EXPLICIT", 0);
            AUTO = new SizeType("AUTO", 1);
            INTERSTITIAL = new SizeType("INTERSTITIAL", 2);
            SizeType asizetype[] = new SizeType[3];
            asizetype[0] = EXPLICIT;
            asizetype[1] = AUTO;
            asizetype[2] = INTERSTITIAL;
            $VALUES = asizetype;
        }

        private SizeType(String s, int i)
        {
            super(s, i);
        }
    }

}
