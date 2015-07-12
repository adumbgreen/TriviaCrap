// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package twitter4j;

import java.io.Serializable;

final class ExceptionDiagnosis
    implements Serializable
{

    private static final long serialVersionUID = 0x75f9a75938250289L;
    private String hexString;
    private int lineNumberHash;
    private int stackLineHash;
    private final Throwable th;

    ExceptionDiagnosis(Throwable throwable)
    {
        this(throwable, new String[0]);
    }

    ExceptionDiagnosis(Throwable throwable, String as[])
    {
        hexString = "";
        th = throwable;
        StackTraceElement astacktraceelement[] = throwable.getStackTrace();
        stackLineHash = 0;
        lineNumberHash = 0;
        int i = -1 + astacktraceelement.length;
label0:
        do
        {
            if (i >= 0)
            {
                StackTraceElement stacktraceelement = astacktraceelement[i];
                int j = as.length;
                int k = 0;
                do
                {
label1:
                    {
                        if (k < j)
                        {
                            String s = as[k];
                            if (!stacktraceelement.getClassName().startsWith(s))
                            {
                                break label1;
                            }
                            stackLineHash = stacktraceelement.getClassName().hashCode() + stacktraceelement.getMethodName().hashCode() + 31 * stackLineHash;
                            lineNumberHash = 31 * lineNumberHash + stacktraceelement.getLineNumber();
                        }
                        i--;
                        continue label0;
                    }
                    k++;
                } while (true);
            }
            hexString = (new StringBuilder()).append(hexString).append(toHexString(stackLineHash)).append("-").append(toHexString(lineNumberHash)).toString();
            if (throwable.getCause() != null)
            {
                hexString = (new StringBuilder()).append(hexString).append(" ").append((new ExceptionDiagnosis(throwable.getCause(), as)).asHexString()).toString();
            }
            return;
        } while (true);
    }

    private String toHexString(int i)
    {
        String s = (new StringBuilder()).append("0000000").append(Integer.toHexString(i)).toString();
        return s.substring(-8 + s.length(), s.length());
    }

    String asHexString()
    {
        return hexString;
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj == null || getClass() != obj.getClass())
            {
                return false;
            }
            ExceptionDiagnosis exceptiondiagnosis = (ExceptionDiagnosis)obj;
            if (lineNumberHash != exceptiondiagnosis.lineNumberHash)
            {
                return false;
            }
            if (stackLineHash != exceptiondiagnosis.stackLineHash)
            {
                return false;
            }
        }
        return true;
    }

    int getLineNumberHash()
    {
        return lineNumberHash;
    }

    String getLineNumberHashAsHex()
    {
        return toHexString(lineNumberHash);
    }

    int getStackLineHash()
    {
        return stackLineHash;
    }

    String getStackLineHashAsHex()
    {
        return toHexString(stackLineHash);
    }

    public int hashCode()
    {
        return 31 * stackLineHash + lineNumberHash;
    }

    public String toString()
    {
        return (new StringBuilder()).append("ExceptionDiagnosis{stackLineHash=").append(stackLineHash).append(", lineNumberHash=").append(lineNumberHash).append('}').toString();
    }
}
