// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.gson.stream;

import com.google.gson.internal.JsonReaderInternalAccess;
import com.google.gson.internal.bind.JsonTreeReader;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;

// Referenced classes of package com.google.gson.stream:
//            MalformedJsonException, JsonToken

public class JsonReader
    implements Closeable
{

    private static final long MIN_INCOMPLETE_INTEGER = 0xf333333333333334L;
    private static final char NON_EXECUTE_PREFIX[] = ")]}'\n".toCharArray();
    private static final int NUMBER_CHAR_DECIMAL = 3;
    private static final int NUMBER_CHAR_DIGIT = 2;
    private static final int NUMBER_CHAR_EXP_DIGIT = 7;
    private static final int NUMBER_CHAR_EXP_E = 5;
    private static final int NUMBER_CHAR_EXP_SIGN = 6;
    private static final int NUMBER_CHAR_FRACTION_DIGIT = 4;
    private static final int NUMBER_CHAR_NONE = 0;
    private static final int NUMBER_CHAR_SIGN = 1;
    private static final int PEEKED_BEGIN_ARRAY = 3;
    private static final int PEEKED_BEGIN_OBJECT = 1;
    private static final int PEEKED_BUFFERED = 11;
    private static final int PEEKED_DOUBLE_QUOTED = 9;
    private static final int PEEKED_DOUBLE_QUOTED_NAME = 13;
    private static final int PEEKED_END_ARRAY = 4;
    private static final int PEEKED_END_OBJECT = 2;
    private static final int PEEKED_EOF = 17;
    private static final int PEEKED_FALSE = 6;
    private static final int PEEKED_LONG = 15;
    private static final int PEEKED_NONE = 0;
    private static final int PEEKED_NULL = 7;
    private static final int PEEKED_NUMBER = 16;
    private static final int PEEKED_SINGLE_QUOTED = 8;
    private static final int PEEKED_SINGLE_QUOTED_NAME = 12;
    private static final int PEEKED_TRUE = 5;
    private static final int PEEKED_UNQUOTED = 10;
    private static final int PEEKED_UNQUOTED_NAME = 14;
    private final char buffer[] = new char[1024];
    private final Reader in;
    private boolean lenient;
    private int limit;
    private int lineNumber;
    private int lineStart;
    private int pathIndices[];
    private String pathNames[];
    private int peeked;
    private long peekedLong;
    private int peekedNumberLength;
    private String peekedString;
    private int pos;
    private int stack[];
    private int stackSize;

    public JsonReader(Reader reader)
    {
        lenient = false;
        pos = 0;
        limit = 0;
        lineNumber = 0;
        lineStart = 0;
        peeked = 0;
        stack = new int[32];
        stackSize = 0;
        int ai[] = stack;
        int i = stackSize;
        stackSize = i + 1;
        ai[i] = 6;
        pathNames = new String[32];
        pathIndices = new int[32];
        if (reader == null)
        {
            throw new NullPointerException("in == null");
        } else
        {
            in = reader;
            return;
        }
    }

    private void checkLenient()
    {
        if (!lenient)
        {
            throw syntaxError("Use JsonReader.setLenient(true) to accept malformed JSON");
        } else
        {
            return;
        }
    }

    private void consumeNonExecutePrefix()
    {
        nextNonWhitespace(true);
        pos = -1 + pos;
        if (pos + NON_EXECUTE_PREFIX.length <= limit || fillBuffer(NON_EXECUTE_PREFIX.length)) goto _L2; else goto _L1
_L1:
        return;
_L2:
        int i = 0;
label0:
        do
        {
label1:
            {
                if (i >= NON_EXECUTE_PREFIX.length)
                {
                    break label1;
                }
                if (buffer[i + pos] != NON_EXECUTE_PREFIX[i])
                {
                    break label0;
                }
                i++;
            }
        } while (true);
        if (true) goto _L1; else goto _L3
_L3:
        pos = pos + NON_EXECUTE_PREFIX.length;
        return;
    }

    private int doPeek()
    {
        int i = stack[-1 + stackSize];
        if (i != 1) goto _L2; else goto _L1
_L1:
        stack[-1 + stackSize] = 2;
_L14:
        nextNonWhitespace(true);
        JVM INSTR lookupswitch 7: default 100
    //                   34: 668
    //                   39: 655
    //                   44: 615
    //                   59: 615
    //                   91: 689
    //                   93: 603
    //                   123: 696;
           goto _L3 _L4 _L5 _L6 _L6 _L7 _L8 _L9
_L3:
        int k;
        pos = -1 + pos;
        if (stackSize == 1)
        {
            checkLenient();
        }
        k = peekKeyword();
        if (k == 0) goto _L11; else goto _L10
_L10:
        return k;
_L2:
        if (i == 2)
        {
            switch (nextNonWhitespace(true))
            {
            default:
                throw syntaxError("Unterminated array");

            case 93: // ']'
                peeked = 4;
                return 4;

            case 59: // ';'
                checkLenient();
                break;

            case 44: // ','
                break;
            }
        } else
        {
            if (i == 3 || i == 5)
            {
                stack[-1 + stackSize] = 4;
                if (i == 5)
                {
                    switch (nextNonWhitespace(true))
                    {
                    default:
                        throw syntaxError("Unterminated object");

                    case 125: // '}'
                        peeked = 2;
                        return 2;

                    case 59: // ';'
                        checkLenient();
                        break;

                    case 44: // ','
                        break;
                    }
                }
                int j = nextNonWhitespace(true);
                switch (j)
                {
                default:
                    checkLenient();
                    pos = -1 + pos;
                    if (isLiteral((char)j))
                    {
                        peeked = 14;
                        return 14;
                    } else
                    {
                        throw syntaxError("Expected name");
                    }

                case 34: // '"'
                    peeked = 13;
                    return 13;

                case 39: // '\''
                    checkLenient();
                    peeked = 12;
                    return 12;

                case 125: // '}'
                    break;
                }
                if (i != 5)
                {
                    peeked = 2;
                    return 2;
                } else
                {
                    throw syntaxError("Expected name");
                }
            }
            if (i == 4)
            {
                stack[-1 + stackSize] = 5;
                switch (nextNonWhitespace(true))
                {
                case 59: // ';'
                case 60: // '<'
                default:
                    throw syntaxError("Expected ':'");

                case 61: // '='
                    checkLenient();
                    if ((pos < limit || fillBuffer(1)) && buffer[pos] == '>')
                    {
                        pos = 1 + pos;
                    }
                    break;

                case 58: // ':'
                    break;
                }
            } else
            if (i == 6)
            {
                if (lenient)
                {
                    consumeNonExecutePrefix();
                }
                stack[-1 + stackSize] = 7;
            } else
            if (i == 7)
            {
                if (nextNonWhitespace(false) == -1)
                {
                    peeked = 17;
                    return 17;
                }
                checkLenient();
                pos = -1 + pos;
            } else
            if (i == 8)
            {
                throw new IllegalStateException("JsonReader is closed");
            }
        }
        continue; /* Loop/switch isn't completed */
_L8:
        if (i == 1)
        {
            peeked = 4;
            return 4;
        }
_L6:
        if (i == 1 || i == 2)
        {
            checkLenient();
            pos = -1 + pos;
            peeked = 7;
            return 7;
        } else
        {
            throw syntaxError("Unexpected value");
        }
_L5:
        checkLenient();
        peeked = 8;
        return 8;
_L4:
        if (stackSize == 1)
        {
            checkLenient();
        }
        peeked = 9;
        return 9;
_L7:
        peeked = 3;
        return 3;
_L9:
        peeked = 1;
        return 1;
_L11:
        if ((k = peekNumber()) != 0) goto _L10; else goto _L12
_L12:
        if (!isLiteral(buffer[pos]))
        {
            throw syntaxError("Expected value");
        } else
        {
            checkLenient();
            peeked = 10;
            return 10;
        }
        if (true) goto _L14; else goto _L13
_L13:
    }

    private boolean fillBuffer(int i)
    {
        char ac[] = buffer;
        lineStart = lineStart - pos;
        boolean flag;
        if (limit != pos)
        {
            limit = limit - pos;
            System.arraycopy(ac, pos, ac, 0, limit);
        } else
        {
            limit = 0;
        }
        pos = 0;
        do
        {
            int j = in.read(ac, limit, ac.length - limit);
            flag = false;
            if (j == -1)
            {
                break;
            }
            limit = j + limit;
            if (lineNumber == 0 && lineStart == 0 && limit > 0 && ac[0] == '\uFEFF')
            {
                pos = 1 + pos;
                lineStart = 1 + lineStart;
                i++;
            }
            if (limit < i)
            {
                continue;
            }
            flag = true;
            break;
        } while (true);
        return flag;
    }

    private int getColumnNumber()
    {
        return 1 + (pos - lineStart);
    }

    private int getLineNumber()
    {
        return 1 + lineNumber;
    }

    private boolean isLiteral(char c)
    {
        switch (c)
        {
        default:
            return true;

        case 35: // '#'
        case 47: // '/'
        case 59: // ';'
        case 61: // '='
        case 92: // '\\'
            checkLenient();
            // fall through

        case 9: // '\t'
        case 10: // '\n'
        case 12: // '\f'
        case 13: // '\r'
        case 32: // ' '
        case 44: // ','
        case 58: // ':'
        case 91: // '['
        case 93: // ']'
        case 123: // '{'
        case 125: // '}'
            return false;
        }
    }

    private int nextNonWhitespace(boolean flag)
    {
        char ac[];
        int i;
        int j;
        ac = buffer;
        i = pos;
        j = limit;
_L2:
        int k;
        do
        {
            if (i == j)
            {
                pos = i;
                char c;
                boolean flag1;
                if (!fillBuffer(1))
                {
                    if (flag)
                    {
                        throw new EOFException((new StringBuilder()).append("End of input at line ").append(getLineNumber()).append(" column ").append(getColumnNumber()).toString());
                    } else
                    {
                        return -1;
                    }
                }
                i = pos;
                j = limit;
            }
            k = i + 1;
            c = ac[i];
            if (c == '\n')
            {
                lineNumber = 1 + lineNumber;
                lineStart = k;
                i = k;
            } else
            {
label0:
                {
                    if (c == ' ' || c == '\r')
                    {
                        break label0;
                    }
                    if (c == '\t')
                    {
                        i = k;
                    } else
                    {
                        if (c == '/')
                        {
                            pos = k;
                            if (k == j)
                            {
                                pos = -1 + pos;
                                flag1 = fillBuffer(2);
                                pos = 1 + pos;
                                if (!flag1)
                                {
                                    return c;
                                }
                            }
                            checkLenient();
                            switch (ac[pos])
                            {
                            default:
                                return c;

                            case 42: // '*'
                                pos = 1 + pos;
                                if (!skipTo("*/"))
                                {
                                    throw syntaxError("Unterminated comment");
                                }
                                i = 2 + pos;
                                j = limit;
                                break;

                            case 47: // '/'
                                pos = 1 + pos;
                                skipToEndOfLine();
                                i = pos;
                                j = limit;
                                break;
                            }
                        } else
                        if (c == '#')
                        {
                            pos = k;
                            checkLenient();
                            skipToEndOfLine();
                            i = pos;
                            j = limit;
                        } else
                        {
                            pos = k;
                            return c;
                        }
                        continue; /* Loop/switch isn't completed */
                    }
                }
            }
        } while (true);
        i = k;
        if (true) goto _L2; else goto _L1
_L1:
    }

    private String nextQuotedValue(char c)
    {
        char ac[] = buffer;
        StringBuilder stringbuilder = new StringBuilder();
        do
        {
            int i = pos;
            int j = limit;
            int k = i;
            while (k < j) 
            {
                int l = k + 1;
                char c1 = ac[k];
                if (c1 == c)
                {
                    pos = l;
                    stringbuilder.append(ac, i, -1 + (l - i));
                    return stringbuilder.toString();
                }
                if (c1 == '\\')
                {
                    pos = l;
                    stringbuilder.append(ac, i, -1 + (l - i));
                    stringbuilder.append(readEscapeCharacter());
                    i = pos;
                    j = limit;
                    l = i;
                } else
                if (c1 == '\n')
                {
                    lineNumber = 1 + lineNumber;
                    lineStart = l;
                }
                k = l;
            }
            stringbuilder.append(ac, i, k - i);
            pos = k;
        } while (fillBuffer(1));
        throw syntaxError("Unterminated string");
    }

    private String nextUnquotedValue()
    {
        StringBuilder stringbuilder;
        int i;
        stringbuilder = null;
        i = 0;
_L2:
        String s;
        if (i + pos < limit)
        {
            switch (buffer[i + pos])
            {
            default:
                i++;
                continue; /* Loop/switch isn't completed */

            case 35: // '#'
            case 47: // '/'
            case 59: // ';'
            case 61: // '='
            case 92: // '\\'
                checkLenient();
                break;

            case 9: // '\t'
            case 10: // '\n'
            case 12: // '\f'
            case 13: // '\r'
            case 32: // ' '
            case 44: // ','
            case 58: // ':'
            case 91: // '['
            case 93: // ']'
            case 123: // '{'
            case 125: // '}'
                break;
            }
        } else
        if (i < buffer.length)
        {
            if (fillBuffer(i + 1))
            {
                continue; /* Loop/switch isn't completed */
            }
        } else
        {
label0:
            {
                if (stringbuilder == null)
                {
                    stringbuilder = new StringBuilder();
                }
                stringbuilder.append(buffer, pos, i);
                pos = i + pos;
                if (fillBuffer(1))
                {
                    break label0;
                }
                i = 0;
            }
        }
        if (stringbuilder == null)
        {
            s = new String(buffer, pos, i);
        } else
        {
            stringbuilder.append(buffer, pos, i);
            s = stringbuilder.toString();
        }
        pos = i + pos;
        return s;
        i = 0;
        if (true) goto _L2; else goto _L1
_L1:
    }

    private int peekKeyword()
    {
        char c = buffer[pos];
        String s;
        String s1;
        int i;
        if (c == 't' || c == 'T')
        {
            s = "true";
            s1 = "TRUE";
            i = 5;
        } else
        if (c == 'f' || c == 'F')
        {
            s = "false";
            s1 = "FALSE";
            i = 6;
        } else
        if (c == 'n' || c == 'N')
        {
            s = "null";
            s1 = "NULL";
            i = 7;
        } else
        {
            return 0;
        }
        do
        {
            int j = s.length();
            for (int k = 1; k < j; k++)
            {
                if (k + pos >= limit && !fillBuffer(k + 1))
                {
                    return 0;
                }
                char c1 = buffer[k + pos];
                if (c1 != s.charAt(k) && c1 != s1.charAt(k))
                {
                    return 0;
                }
            }

            if ((j + pos < limit || fillBuffer(j + 1)) && isLiteral(buffer[j + pos]))
            {
                return 0;
            }
            pos = j + pos;
            peeked = i;
            return i;
        } while (true);
    }

    private int peekNumber()
    {
        char ac[];
        long l;
        boolean flag;
        boolean flag1;
        int k;
        int i1;
        int j1;
        int k1;
        ac = buffer;
        int i = pos;
        int j = limit;
        l = 0L;
        flag = false;
        flag1 = true;
        k = 0;
        i1 = 0;
        j1 = j;
        k1 = i;
_L12:
        if (k1 + i1 != j1) goto _L2; else goto _L1
_L1:
        if (i1 == ac.length)
        {
            return 0;
        }
        if (fillBuffer(i1 + 1)) goto _L4; else goto _L3
_L4:
        k1 = pos;
        j1 = limit;
_L2:
        c = ac[k1 + i1];
        c;
        JVM INSTR lookupswitch 5: default 196
    //                   43: 301
    //                   45: 221
    //                   46: 360
    //                   69: 328
    //                   101: 328;
           goto _L5 _L6 _L7 _L8 _L9 _L9
_L6:
        break; /* Loop/switch isn't completed */
_L5:
        if (c >= '0' && c <= '9')
        {
            break MISSING_BLOCK_LABEL_386;
        }
        if (isLiteral(c))
        {
            return 0;
        }
        break; /* Loop/switch isn't completed */
_L7:
        int l1;
        boolean flag2;
        boolean flag3;
        long l2;
        boolean flag4;
        boolean flag5;
        if (k == 0)
        {
            l1 = 1;
            boolean flag6 = flag1;
            flag3 = true;
            flag2 = flag6;
            l2 = l;
        } else
        if (k == 5)
        {
            l1 = 6;
            flag2 = flag1;
            flag3 = flag;
            l2 = l;
        } else
        {
            return 0;
        }
        break MISSING_BLOCK_LABEL_244;
        if (true) goto _L3; else goto _L10
_L10:
        i1++;
        flag4 = flag2;
        k = l1;
        flag5 = flag3;
        flag1 = flag4;
        l = l2;
        flag = flag5;
        if (true) goto _L12; else goto _L11
_L11:
        if (k == 5)
        {
            l1 = 6;
            flag2 = flag1;
            flag3 = flag;
            l2 = l;
        } else
        {
            return 0;
        }
          goto _L10
_L9:
        if (k == 2 || k == 4)
        {
            l1 = 5;
            flag2 = flag1;
            flag3 = flag;
            l2 = l;
        } else
        {
            return 0;
        }
          goto _L10
_L8:
        if (k == 2)
        {
            l1 = 3;
            flag2 = flag1;
            flag3 = flag;
            l2 = l;
        } else
        {
            return 0;
        }
          goto _L10
        if (k == 1 || k == 0)
        {
            long l3 = -(c - 48);
            l1 = 2;
            flag2 = flag1;
            flag3 = flag;
            l2 = l3;
        } else
        if (k == 2)
        {
            if (l == 0L)
            {
                return 0;
            }
            long l4 = 10L * l - (long)(c - 48);
            boolean flag7;
            boolean flag8;
            int i2;
            if (l > 0xf333333333333334L || l == 0xf333333333333334L && l4 < l)
            {
                flag7 = true;
            } else
            {
                flag7 = false;
            }
            flag8 = flag7 & flag1;
            flag3 = flag;
            l2 = l4;
            i2 = k;
            flag2 = flag8;
            l1 = i2;
        } else
        if (k == 3)
        {
            l1 = 4;
            flag2 = flag1;
            flag3 = flag;
            l2 = l;
        } else
        if (k == 5 || k == 6)
        {
            l1 = 7;
            flag2 = flag1;
            flag3 = flag;
            l2 = l;
        } else
        {
            l1 = k;
            flag2 = flag1;
            flag3 = flag;
            l2 = l;
        }
          goto _L10
_L3:
        if (k == 2 && flag1 && (l != 0x8000000000000000L || flag))
        {
            char c;
            if (!flag)
            {
                l = -l;
            }
            peekedLong = l;
            pos = i1 + pos;
            peeked = 15;
            return 15;
        }
        if (k == 2 || k == 4 || k == 7)
        {
            peekedNumberLength = i1;
            peeked = 16;
            return 16;
        } else
        {
            return 0;
        }
    }

    private void push(int i)
    {
        if (stackSize == stack.length)
        {
            int ai1[] = new int[2 * stackSize];
            int ai2[] = new int[2 * stackSize];
            String as[] = new String[2 * stackSize];
            System.arraycopy(stack, 0, ai1, 0, stackSize);
            System.arraycopy(pathIndices, 0, ai2, 0, stackSize);
            System.arraycopy(pathNames, 0, as, 0, stackSize);
            stack = ai1;
            pathIndices = ai2;
            pathNames = as;
        }
        int ai[] = stack;
        int j = stackSize;
        stackSize = j + 1;
        ai[j] = i;
    }

    private char readEscapeCharacter()
    {
        if (pos == limit && !fillBuffer(1))
        {
            throw syntaxError("Unterminated escape sequence");
        }
        char ac[] = buffer;
        int i = pos;
        pos = i + 1;
        char c = ac[i];
        switch (c)
        {
        default:
            return c;

        case 117: // 'u'
            if (4 + pos > limit && !fillBuffer(4))
            {
                throw syntaxError("Unterminated escape sequence");
            }
            int j = pos;
            int k = j + 4;
            char c1 = '\0';
            int l = j;
            while (l < k) 
            {
                char c2 = buffer[l];
                char c3 = (char)(c1 << 4);
                if (c2 >= '0' && c2 <= '9')
                {
                    c1 = (char)(c3 + (c2 - 48));
                } else
                if (c2 >= 'a' && c2 <= 'f')
                {
                    c1 = (char)(c3 + (10 + (c2 - 97)));
                } else
                if (c2 >= 'A' && c2 <= 'F')
                {
                    c1 = (char)(c3 + (10 + (c2 - 65)));
                } else
                {
                    throw new NumberFormatException((new StringBuilder()).append("\\u").append(new String(buffer, pos, 4)).toString());
                }
                l++;
            }
            pos = 4 + pos;
            return c1;

        case 116: // 't'
            return '\t';

        case 98: // 'b'
            return '\b';

        case 110: // 'n'
            return '\n';

        case 114: // 'r'
            return '\r';

        case 102: // 'f'
            return '\f';

        case 10: // '\n'
            lineNumber = 1 + lineNumber;
            lineStart = pos;
            return c;
        }
    }

    private void skipQuotedValue(char c)
    {
        char ac[] = buffer;
        do
        {
            int i = pos;
            int j = limit;
            int k = i;
            while (k < j) 
            {
                int l = k + 1;
                char c1 = ac[k];
                if (c1 == c)
                {
                    pos = l;
                    return;
                }
                if (c1 == '\\')
                {
                    pos = l;
                    readEscapeCharacter();
                    l = pos;
                    j = limit;
                } else
                if (c1 == '\n')
                {
                    lineNumber = 1 + lineNumber;
                    lineStart = l;
                }
                k = l;
            }
            pos = k;
        } while (fillBuffer(1));
        throw syntaxError("Unterminated string");
    }

    private boolean skipTo(String s)
    {
_L2:
        boolean flag;
        if (pos + s.length() > limit)
        {
            boolean flag1 = fillBuffer(s.length());
            flag = false;
            if (!flag1)
            {
                break MISSING_BLOCK_LABEL_117;
            }
        }
        if (buffer[pos] != '\n')
        {
            break; /* Loop/switch isn't completed */
        }
        lineNumber = 1 + lineNumber;
        lineStart = 1 + pos;
_L4:
        pos = 1 + pos;
        if (true) goto _L2; else goto _L1
_L1:
        int i = 0;
_L5:
        if (i >= s.length())
        {
            break MISSING_BLOCK_LABEL_115;
        }
        if (buffer[i + pos] != s.charAt(i)) goto _L4; else goto _L3
_L3:
        i++;
          goto _L5
          goto _L4
        flag = true;
        return flag;
    }

    private void skipToEndOfLine()
    {
        char c;
        do
        {
            if (pos < limit || fillBuffer(1))
            {
                char ac[] = buffer;
                int i = pos;
                pos = i + 1;
                c = ac[i];
                if (c != '\n')
                {
                    continue;
                }
                lineNumber = 1 + lineNumber;
                lineStart = pos;
            }
            return;
        } while (c != '\r');
    }

    private void skipUnquotedValue()
    {
_L2:
        int i;
label0:
        {
            i = 0;
            do
            {
                if (i + pos >= limit)
                {
                    break label0;
                }
                switch (buffer[i + pos])
                {
                default:
                    i++;
                    break;

                case 35: // '#'
                case 47: // '/'
                case 59: // ';'
                case 61: // '='
                case 92: // '\\'
                    checkLenient();
                    // fall through

                case 9: // '\t'
                case 10: // '\n'
                case 12: // '\f'
                case 13: // '\r'
                case 32: // ' '
                case 44: // ','
                case 58: // ':'
                case 91: // '['
                case 93: // ']'
                case 123: // '{'
                case 125: // '}'
label1:
                    {
                        pos = i + pos;
                        break label1;
                    }
                    break;
                }
            } while (true);
            break label0;
        }
        return;
        pos = i + pos;
        if (!fillBuffer(1))
        {
            return;
        }
        if (true) goto _L2; else goto _L1
_L1:
    }

    private IOException syntaxError(String s)
    {
        throw new MalformedJsonException((new StringBuilder()).append(s).append(" at line ").append(getLineNumber()).append(" column ").append(getColumnNumber()).append(" path ").append(getPath()).toString());
    }

    public void beginArray()
    {
        int i = peeked;
        if (i == 0)
        {
            i = doPeek();
        }
        if (i == 3)
        {
            push(1);
            pathIndices[-1 + stackSize] = 0;
            peeked = 0;
            return;
        } else
        {
            throw new IllegalStateException((new StringBuilder()).append("Expected BEGIN_ARRAY but was ").append(peek()).append(" at line ").append(getLineNumber()).append(" column ").append(getColumnNumber()).append(" path ").append(getPath()).toString());
        }
    }

    public void beginObject()
    {
        int i = peeked;
        if (i == 0)
        {
            i = doPeek();
        }
        if (i == 1)
        {
            push(3);
            peeked = 0;
            return;
        } else
        {
            throw new IllegalStateException((new StringBuilder()).append("Expected BEGIN_OBJECT but was ").append(peek()).append(" at line ").append(getLineNumber()).append(" column ").append(getColumnNumber()).append(" path ").append(getPath()).toString());
        }
    }

    public void close()
    {
        peeked = 0;
        stack[0] = 8;
        stackSize = 1;
        in.close();
    }

    public void endArray()
    {
        int i = peeked;
        if (i == 0)
        {
            i = doPeek();
        }
        if (i == 4)
        {
            stackSize = -1 + stackSize;
            peeked = 0;
            return;
        } else
        {
            throw new IllegalStateException((new StringBuilder()).append("Expected END_ARRAY but was ").append(peek()).append(" at line ").append(getLineNumber()).append(" column ").append(getColumnNumber()).append(" path ").append(getPath()).toString());
        }
    }

    public void endObject()
    {
        int i = peeked;
        if (i == 0)
        {
            i = doPeek();
        }
        if (i == 2)
        {
            stackSize = -1 + stackSize;
            pathNames[stackSize] = null;
            peeked = 0;
            return;
        } else
        {
            throw new IllegalStateException((new StringBuilder()).append("Expected END_OBJECT but was ").append(peek()).append(" at line ").append(getLineNumber()).append(" column ").append(getColumnNumber()).append(" path ").append(getPath()).toString());
        }
    }

    public String getPath()
    {
        StringBuilder stringbuilder;
        int i;
        int j;
        stringbuilder = (new StringBuilder()).append('$');
        i = 0;
        j = stackSize;
_L2:
        if (i >= j)
        {
            break MISSING_BLOCK_LABEL_124;
        }
        switch (stack[i])
        {
        default:
            break;

        case 1: // '\001'
        case 2: // '\002'
            break; /* Loop/switch isn't completed */

        case 3: // '\003'
        case 4: // '\004'
        case 5: // '\005'
            break;
        }
        break MISSING_BLOCK_LABEL_94;
_L3:
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        stringbuilder.append('[').append(pathIndices[i]).append(']');
          goto _L3
        stringbuilder.append('.');
        if (pathNames[i] != null)
        {
            stringbuilder.append(pathNames[i]);
        }
          goto _L3
        return stringbuilder.toString();
    }

    public boolean hasNext()
    {
        int i = peeked;
        if (i == 0)
        {
            i = doPeek();
        }
        return i != 2 && i != 4;
    }

    public final boolean isLenient()
    {
        return lenient;
    }

    public boolean nextBoolean()
    {
        int i = peeked;
        if (i == 0)
        {
            i = doPeek();
        }
        if (i == 5)
        {
            peeked = 0;
            int ai1[] = pathIndices;
            int k = -1 + stackSize;
            ai1[k] = 1 + ai1[k];
            return true;
        }
        if (i == 6)
        {
            peeked = 0;
            int ai[] = pathIndices;
            int j = -1 + stackSize;
            ai[j] = 1 + ai[j];
            return false;
        } else
        {
            throw new IllegalStateException((new StringBuilder()).append("Expected a boolean but was ").append(peek()).append(" at line ").append(getLineNumber()).append(" column ").append(getColumnNumber()).append(" path ").append(getPath()).toString());
        }
    }

    public double nextDouble()
    {
        int i = peeked;
        if (i == 0)
        {
            i = doPeek();
        }
        if (i == 15)
        {
            peeked = 0;
            int ai1[] = pathIndices;
            int k = -1 + stackSize;
            ai1[k] = 1 + ai1[k];
            return (double)peekedLong;
        }
        if (i == 16)
        {
            peekedString = new String(buffer, pos, peekedNumberLength);
            pos = pos + peekedNumberLength;
        } else
        if (i == 8 || i == 9)
        {
            char c;
            if (i == 8)
            {
                c = '\'';
            } else
            {
                c = '"';
            }
            peekedString = nextQuotedValue(c);
        } else
        {
            if (i != 10)
            {
                continue;
            }
            peekedString = nextUnquotedValue();
        }
        do
        {
            peeked = 11;
            double d = Double.parseDouble(peekedString);
            if (!lenient && (Double.isNaN(d) || Double.isInfinite(d)))
            {
                throw new MalformedJsonException((new StringBuilder()).append("JSON forbids NaN and infinities: ").append(d).append(" at line ").append(getLineNumber()).append(" column ").append(getColumnNumber()).append(" path ").append(getPath()).toString());
            } else
            {
                peekedString = null;
                peeked = 0;
                int ai[] = pathIndices;
                int j = -1 + stackSize;
                ai[j] = 1 + ai[j];
                return d;
            }
        } while (i == 11);
        throw new IllegalStateException((new StringBuilder()).append("Expected a double but was ").append(peek()).append(" at line ").append(getLineNumber()).append(" column ").append(getColumnNumber()).append(" path ").append(getPath()).toString());
    }

    public int nextInt()
    {
        int i;
        i = peeked;
        if (i == 0)
        {
            i = doPeek();
        }
        if (i == 15)
        {
            int j1 = (int)peekedLong;
            if (peekedLong != (long)j1)
            {
                throw new NumberFormatException((new StringBuilder()).append("Expected an int but was ").append(peekedLong).append(" at line ").append(getLineNumber()).append(" column ").append(getColumnNumber()).append(" path ").append(getPath()).toString());
            } else
            {
                peeked = 0;
                int ai2[] = pathIndices;
                int k1 = -1 + stackSize;
                ai2[k1] = 1 + ai2[k1];
                return j1;
            }
        }
        if (i != 16) goto _L2; else goto _L1
_L1:
        peekedString = new String(buffer, pos, peekedNumberLength);
        pos = pos + peekedNumberLength;
_L3:
        peeked = 11;
        double d = Double.parseDouble(peekedString);
        int j = (int)d;
        char c;
        NumberFormatException numberformatexception;
        int l;
        int ai1[];
        int i1;
        if ((double)j != d)
        {
            throw new NumberFormatException((new StringBuilder()).append("Expected an int but was ").append(peekedString).append(" at line ").append(getLineNumber()).append(" column ").append(getColumnNumber()).append(" path ").append(getPath()).toString());
        } else
        {
            peekedString = null;
            peeked = 0;
            int ai[] = pathIndices;
            int k = -1 + stackSize;
            ai[k] = 1 + ai[k];
            return j;
        }
_L2:
        if (i != 8 && i != 9)
        {
            break MISSING_BLOCK_LABEL_364;
        }
        if (i == 8)
        {
            c = '\'';
        } else
        {
            c = '"';
        }
        peekedString = nextQuotedValue(c);
        l = Integer.parseInt(peekedString);
        peeked = 0;
        ai1 = pathIndices;
        i1 = -1 + stackSize;
        ai1[i1] = 1 + ai1[i1];
        return l;
        numberformatexception;
          goto _L3
        throw new IllegalStateException((new StringBuilder()).append("Expected an int but was ").append(peek()).append(" at line ").append(getLineNumber()).append(" column ").append(getColumnNumber()).append(" path ").append(getPath()).toString());
    }

    public long nextLong()
    {
        int i;
        i = peeked;
        if (i == 0)
        {
            i = doPeek();
        }
        if (i == 15)
        {
            peeked = 0;
            int ai2[] = pathIndices;
            int i1 = -1 + stackSize;
            ai2[i1] = 1 + ai2[i1];
            return peekedLong;
        }
        if (i != 16) goto _L2; else goto _L1
_L1:
        peekedString = new String(buffer, pos, peekedNumberLength);
        pos = pos + peekedNumberLength;
_L3:
        peeked = 11;
        double d = Double.parseDouble(peekedString);
        long l = (long)d;
        char c;
        NumberFormatException numberformatexception;
        long l1;
        int ai1[];
        int k;
        if ((double)l != d)
        {
            throw new NumberFormatException((new StringBuilder()).append("Expected a long but was ").append(peekedString).append(" at line ").append(getLineNumber()).append(" column ").append(getColumnNumber()).append(" path ").append(getPath()).toString());
        } else
        {
            peekedString = null;
            peeked = 0;
            int ai[] = pathIndices;
            int j = -1 + stackSize;
            ai[j] = 1 + ai[j];
            return l;
        }
_L2:
        if (i != 8 && i != 9)
        {
            break MISSING_BLOCK_LABEL_279;
        }
        if (i == 8)
        {
            c = '\'';
        } else
        {
            c = '"';
        }
        peekedString = nextQuotedValue(c);
        l1 = Long.parseLong(peekedString);
        peeked = 0;
        ai1 = pathIndices;
        k = -1 + stackSize;
        ai1[k] = 1 + ai1[k];
        return l1;
        numberformatexception;
          goto _L3
        throw new IllegalStateException((new StringBuilder()).append("Expected a long but was ").append(peek()).append(" at line ").append(getLineNumber()).append(" column ").append(getColumnNumber()).append(" path ").append(getPath()).toString());
    }

    public String nextName()
    {
        int i = peeked;
        if (i == 0)
        {
            i = doPeek();
        }
        String s;
        if (i == 14)
        {
            s = nextUnquotedValue();
        } else
        if (i == 12)
        {
            s = nextQuotedValue('\'');
        } else
        if (i == 13)
        {
            s = nextQuotedValue('"');
        } else
        {
            throw new IllegalStateException((new StringBuilder()).append("Expected a name but was ").append(peek()).append(" at line ").append(getLineNumber()).append(" column ").append(getColumnNumber()).append(" path ").append(getPath()).toString());
        }
        peeked = 0;
        pathNames[-1 + stackSize] = s;
        return s;
    }

    public void nextNull()
    {
        int i = peeked;
        if (i == 0)
        {
            i = doPeek();
        }
        if (i == 7)
        {
            peeked = 0;
            int ai[] = pathIndices;
            int j = -1 + stackSize;
            ai[j] = 1 + ai[j];
            return;
        } else
        {
            throw new IllegalStateException((new StringBuilder()).append("Expected null but was ").append(peek()).append(" at line ").append(getLineNumber()).append(" column ").append(getColumnNumber()).append(" path ").append(getPath()).toString());
        }
    }

    public String nextString()
    {
        int i = peeked;
        if (i == 0)
        {
            i = doPeek();
        }
        String s;
        int ai[];
        int j;
        if (i == 10)
        {
            s = nextUnquotedValue();
        } else
        if (i == 8)
        {
            s = nextQuotedValue('\'');
        } else
        if (i == 9)
        {
            s = nextQuotedValue('"');
        } else
        if (i == 11)
        {
            s = peekedString;
            peekedString = null;
        } else
        if (i == 15)
        {
            s = Long.toString(peekedLong);
        } else
        if (i == 16)
        {
            s = new String(buffer, pos, peekedNumberLength);
            pos = pos + peekedNumberLength;
        } else
        {
            throw new IllegalStateException((new StringBuilder()).append("Expected a string but was ").append(peek()).append(" at line ").append(getLineNumber()).append(" column ").append(getColumnNumber()).append(" path ").append(getPath()).toString());
        }
        peeked = 0;
        ai = pathIndices;
        j = -1 + stackSize;
        ai[j] = 1 + ai[j];
        return s;
    }

    public JsonToken peek()
    {
        int i = peeked;
        if (i == 0)
        {
            i = doPeek();
        }
        switch (i)
        {
        default:
            throw new AssertionError();

        case 1: // '\001'
            return JsonToken.BEGIN_OBJECT;

        case 2: // '\002'
            return JsonToken.END_OBJECT;

        case 3: // '\003'
            return JsonToken.BEGIN_ARRAY;

        case 4: // '\004'
            return JsonToken.END_ARRAY;

        case 12: // '\f'
        case 13: // '\r'
        case 14: // '\016'
            return JsonToken.NAME;

        case 5: // '\005'
        case 6: // '\006'
            return JsonToken.BOOLEAN;

        case 7: // '\007'
            return JsonToken.NULL;

        case 8: // '\b'
        case 9: // '\t'
        case 10: // '\n'
        case 11: // '\013'
            return JsonToken.STRING;

        case 15: // '\017'
        case 16: // '\020'
            return JsonToken.NUMBER;

        case 17: // '\021'
            return JsonToken.END_DOCUMENT;
        }
    }

    public final void setLenient(boolean flag)
    {
        lenient = flag;
    }

    public void skipValue()
    {
        int i = 0;
_L2:
        int j;
        j = peeked;
        if (j == 0)
        {
            j = doPeek();
        }
        if (j != 3)
        {
            break; /* Loop/switch isn't completed */
        }
        push(1);
        i++;
_L3:
        peeked = 0;
        if (i == 0)
        {
            int ai[] = pathIndices;
            int k = -1 + stackSize;
            ai[k] = 1 + ai[k];
            pathNames[-1 + stackSize] = "null";
            return;
        }
        if (true) goto _L2; else goto _L1
_L1:
        if (j == 1)
        {
            push(3);
            i++;
        } else
        if (j == 4)
        {
            stackSize = -1 + stackSize;
            i--;
        } else
        if (j == 2)
        {
            stackSize = -1 + stackSize;
            i--;
        } else
        if (j == 14 || j == 10)
        {
            skipUnquotedValue();
        } else
        if (j == 8 || j == 12)
        {
            skipQuotedValue('\'');
        } else
        if (j == 9 || j == 13)
        {
            skipQuotedValue('"');
        } else
        if (j == 16)
        {
            pos = pos + peekedNumberLength;
        }
          goto _L3
        if (true) goto _L2; else goto _L4
_L4:
    }

    public String toString()
    {
        return (new StringBuilder()).append(getClass().getSimpleName()).append(" at line ").append(getLineNumber()).append(" column ").append(getColumnNumber()).toString();
    }

    static 
    {
        JsonReaderInternalAccess.INSTANCE = new JsonReaderInternalAccess() {

            public void promoteNameToValue(JsonReader jsonreader)
            {
                if (jsonreader instanceof JsonTreeReader)
                {
                    ((JsonTreeReader)jsonreader).promoteNameToValue();
                    return;
                }
                int i = jsonreader.peeked;
                if (i == 0)
                {
                    i = jsonreader.doPeek();
                }
                if (i == 13)
                {
                    jsonreader.peeked = 9;
                    return;
                }
                if (i == 12)
                {
                    jsonreader.peeked = 8;
                    return;
                }
                if (i == 14)
                {
                    jsonreader.peeked = 10;
                    return;
                } else
                {
                    throw new IllegalStateException((new StringBuilder()).append("Expected a name but was ").append(jsonreader.peek()).append(" ").append(" at line ").append(jsonreader.getLineNumber()).append(" column ").append(jsonreader.getColumnNumber()).append(" path ").append(jsonreader.getPath()).toString());
                }
            }

        };
    }



/*
    static int access$002(JsonReader jsonreader, int i)
    {
        jsonreader.peeked = i;
        return i;
    }

*/



}
