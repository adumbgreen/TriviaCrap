// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.a.a;

import com.millennialmedia.a.a.b.a;
import com.millennialmedia.a.a.b.i;
import java.math.BigInteger;

// Referenced classes of package com.millennialmedia.a.a:
//            j

public final class o extends j
{

    private static final Class a[];
    private Object b;

    public o(Boolean boolean1)
    {
        a(boolean1);
    }

    public o(Number number)
    {
        a(number);
    }

    public o(String s)
    {
        a(s);
    }

    private static boolean a(o o1)
    {
        if (o1.b instanceof Number)
        {
            Number number = (Number)o1.b;
            return (number instanceof BigInteger) || (number instanceof Long) || (number instanceof Integer) || (number instanceof Short) || (number instanceof Byte);
        } else
        {
            return false;
        }
    }

    private static boolean b(Object obj)
    {
        if (!(obj instanceof String)) goto _L2; else goto _L1
_L1:
        return true;
_L2:
        Class class1 = obj.getClass();
        Class aclass[] = a;
        int k = aclass.length;
        int l = 0;
label0:
        do
        {
label1:
            {
                if (l >= k)
                {
                    break label1;
                }
                if (aclass[l].isAssignableFrom(class1))
                {
                    break label0;
                }
                l++;
            }
        } while (true);
        if (true) goto _L1; else goto _L3
_L3:
        return false;
    }

    public Number a()
    {
        if (b instanceof String)
        {
            return new i((String)b);
        } else
        {
            return (Number)b;
        }
    }

    void a(Object obj)
    {
        if (obj instanceof Character)
        {
            b = String.valueOf(((Character)obj).charValue());
            return;
        }
        boolean flag;
        if ((obj instanceof Number) || b(obj))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        com.millennialmedia.a.a.b.a.a(flag);
        b = obj;
    }

    public String b()
    {
        if (p())
        {
            return a().toString();
        }
        if (o())
        {
            return n().toString();
        } else
        {
            return (String)b;
        }
    }

    public double c()
    {
        if (p())
        {
            return a().doubleValue();
        } else
        {
            return Double.parseDouble(b());
        }
    }

    public long d()
    {
        if (p())
        {
            return a().longValue();
        } else
        {
            return Long.parseLong(b());
        }
    }

    public int e()
    {
        if (p())
        {
            return a().intValue();
        } else
        {
            return Integer.parseInt(b());
        }
    }

    public boolean equals(Object obj)
    {
        if (this != obj) goto _L2; else goto _L1
_L1:
        return true;
_L2:
        o o1;
        if (obj == null || getClass() != obj.getClass())
        {
            return false;
        }
        o1 = (o)obj;
        if (b != null)
        {
            break; /* Loop/switch isn't completed */
        }
        if (o1.b != null)
        {
            return false;
        }
        if (true) goto _L1; else goto _L3
_L3:
        if (!a(this) || !a(o1))
        {
            break; /* Loop/switch isn't completed */
        }
        if (a().longValue() != o1.a().longValue())
        {
            return false;
        }
        if (true) goto _L1; else goto _L4
_L4:
label0:
        {
            boolean flag;
label1:
            {
                if (!(b instanceof Number) || !(o1.b instanceof Number))
                {
                    break label0;
                }
                double d1 = a().doubleValue();
                double d2 = o1.a().doubleValue();
                if (d1 != d2)
                {
                    boolean flag1 = Double.isNaN(d1);
                    flag = false;
                    if (!flag1)
                    {
                        break label1;
                    }
                    boolean flag2 = Double.isNaN(d2);
                    flag = false;
                    if (!flag2)
                    {
                        break label1;
                    }
                }
                flag = true;
            }
            return flag;
        }
        return b.equals(o1.b);
    }

    public boolean f()
    {
        if (o())
        {
            return n().booleanValue();
        } else
        {
            return Boolean.parseBoolean(b());
        }
    }

    public int hashCode()
    {
        if (b == null)
        {
            return 31;
        }
        if (a(this))
        {
            long l1 = a().longValue();
            return (int)(l1 ^ l1 >>> 32);
        }
        if (b instanceof Number)
        {
            long l = Double.doubleToLongBits(a().doubleValue());
            return (int)(l ^ l >>> 32);
        } else
        {
            return b.hashCode();
        }
    }

    Boolean n()
    {
        return (Boolean)b;
    }

    public boolean o()
    {
        return b instanceof Boolean;
    }

    public boolean p()
    {
        return b instanceof Number;
    }

    public boolean q()
    {
        return b instanceof String;
    }

    static 
    {
        Class aclass[] = new Class[16];
        aclass[0] = Integer.TYPE;
        aclass[1] = Long.TYPE;
        aclass[2] = Short.TYPE;
        aclass[3] = Float.TYPE;
        aclass[4] = Double.TYPE;
        aclass[5] = Byte.TYPE;
        aclass[6] = Boolean.TYPE;
        aclass[7] = Character.TYPE;
        aclass[8] = java/lang/Integer;
        aclass[9] = java/lang/Long;
        aclass[10] = java/lang/Short;
        aclass[11] = java/lang/Float;
        aclass[12] = java/lang/Double;
        aclass[13] = java/lang/Byte;
        aclass[14] = java/lang/Boolean;
        aclass[15] = java/lang/Character;
        a = aclass;
    }
}
