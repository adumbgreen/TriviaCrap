// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;

import java.util.Map;

// Referenced classes of package com.mopub.mobileads:
//            ak, ag, ai, av, 
//            aq, as, ao, at, 
//            ar, au, al, am, 
//            an, ap, ah, MraidView, 
//            af

class aj
{

    protected static aj a = new aj();

    aj()
    {
    }

    public static af create(String s, Map map, MraidView mraidview)
    {
        return a.a(s, map, mraidview);
    }

    public static void setInstance(aj aj1)
    {
        a = aj1;
    }

    protected af a(String s, Map map, MraidView mraidview)
    {
        ak ak1 = ak.a(s);
        class _cls1
        {

            static final int a[];

            static 
            {
                a = new int[ak.values().length];
                try
                {
                    a[ak.CLOSE.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    a[ak.EXPAND.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    a[ak.USECUSTOMCLOSE.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    a[ak.OPEN.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror3) { }
                try
                {
                    a[ak.RESIZE.ordinal()] = 5;
                }
                catch (NoSuchFieldError nosuchfielderror4) { }
                try
                {
                    a[ak.GET_RESIZE_PROPERTIES.ordinal()] = 6;
                }
                catch (NoSuchFieldError nosuchfielderror5) { }
                try
                {
                    a[ak.SET_RESIZE_PROPERTIES.ordinal()] = 7;
                }
                catch (NoSuchFieldError nosuchfielderror6) { }
                try
                {
                    a[ak.PLAY_VIDEO.ordinal()] = 8;
                }
                catch (NoSuchFieldError nosuchfielderror7) { }
                try
                {
                    a[ak.STORE_PICTURE.ordinal()] = 9;
                }
                catch (NoSuchFieldError nosuchfielderror8) { }
                try
                {
                    a[ak.GET_CURRENT_POSITION.ordinal()] = 10;
                }
                catch (NoSuchFieldError nosuchfielderror9) { }
                try
                {
                    a[ak.GET_DEFAULT_POSITION.ordinal()] = 11;
                }
                catch (NoSuchFieldError nosuchfielderror10) { }
                try
                {
                    a[ak.GET_MAX_SIZE.ordinal()] = 12;
                }
                catch (NoSuchFieldError nosuchfielderror11) { }
                try
                {
                    a[ak.GET_SCREEN_SIZE.ordinal()] = 13;
                }
                catch (NoSuchFieldError nosuchfielderror12) { }
                try
                {
                    a[ak.CREATE_CALENDAR_EVENT.ordinal()] = 14;
                }
                catch (NoSuchFieldError nosuchfielderror13) { }
                try
                {
                    a[ak.UNSPECIFIED.ordinal()] = 15;
                }
                catch (NoSuchFieldError nosuchfielderror14)
                {
                    return;
                }
            }
        }

        switch (_cls1.a[ak1.ordinal()])
        {
        case 15: // '\017'
        default:
            return null;

        case 1: // '\001'
            return new ag(map, mraidview);

        case 2: // '\002'
            return new ai(map, mraidview);

        case 3: // '\003'
            return new av(map, mraidview);

        case 4: // '\004'
            return new aq(map, mraidview);

        case 5: // '\005'
            return new as(map, mraidview);

        case 6: // '\006'
            return new ao(map, mraidview);

        case 7: // '\007'
            return new at(map, mraidview);

        case 8: // '\b'
            return new ar(map, mraidview);

        case 9: // '\t'
            return new au(map, mraidview);

        case 10: // '\n'
            return new al(map, mraidview);

        case 11: // '\013'
            return new am(map, mraidview);

        case 12: // '\f'
            return new an(map, mraidview);

        case 13: // '\r'
            return new ap(map, mraidview);

        case 14: // '\016'
            return new ah(map, mraidview);
        }
    }

}
