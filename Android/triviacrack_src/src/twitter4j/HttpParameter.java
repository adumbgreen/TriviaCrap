// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package twitter4j;

import java.io.File;
import java.io.InputStream;
import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Iterator;
import java.util.List;

public final class HttpParameter
    implements Serializable, Comparable
{

    private static final String GIF = "image/gif";
    private static final String JPEG = "image/jpeg";
    private static final String OCTET = "application/octet-stream";
    private static final String PNG = "image/png";
    private static final long serialVersionUID = 0x382981cb088625a4L;
    private File file;
    private InputStream fileBody;
    private String name;
    private String value;

    public HttpParameter(String s, double d)
    {
        name = null;
        value = null;
        file = null;
        fileBody = null;
        name = s;
        value = String.valueOf(d);
    }

    public HttpParameter(String s, int i)
    {
        name = null;
        value = null;
        file = null;
        fileBody = null;
        name = s;
        value = String.valueOf(i);
    }

    public HttpParameter(String s, long l)
    {
        name = null;
        value = null;
        file = null;
        fileBody = null;
        name = s;
        value = String.valueOf(l);
    }

    public HttpParameter(String s, File file1)
    {
        name = null;
        value = null;
        file = null;
        fileBody = null;
        name = s;
        file = file1;
    }

    public HttpParameter(String s, String s1)
    {
        name = null;
        value = null;
        file = null;
        fileBody = null;
        name = s;
        value = s1;
    }

    public HttpParameter(String s, String s1, InputStream inputstream)
    {
        name = null;
        value = null;
        file = null;
        fileBody = null;
        name = s;
        file = new File(s1);
        fileBody = inputstream;
    }

    public HttpParameter(String s, boolean flag)
    {
        name = null;
        value = null;
        file = null;
        fileBody = null;
        name = s;
        value = String.valueOf(flag);
    }

    static boolean containsFile(List list)
    {
        for (Iterator iterator = list.iterator(); iterator.hasNext();)
        {
            if (((HttpParameter)iterator.next()).isFile())
            {
                return true;
            }
        }

        return false;
    }

    public static boolean containsFile(HttpParameter ahttpparameter[])
    {
        if (ahttpparameter != null)
        {
            int i = ahttpparameter.length;
            int j = 0;
            while (j < i) 
            {
                if (ahttpparameter[j].isFile())
                {
                    return true;
                }
                j++;
            }
        }
        return false;
    }

    public static String encode(String s)
    {
        String s2 = URLEncoder.encode(s, "UTF-8");
        String s1 = s2;
_L2:
        StringBuilder stringbuilder = new StringBuilder(s1.length());
        int i = 0;
        while (i < s1.length()) 
        {
            char c = s1.charAt(i);
            if (c == '*')
            {
                stringbuilder.append("%2A");
            } else
            if (c == '+')
            {
                stringbuilder.append("%20");
            } else
            if (c == '%' && i + 1 < s1.length() && s1.charAt(i + 1) == '7' && s1.charAt(i + 2) == 'E')
            {
                stringbuilder.append('~');
                i += 2;
            } else
            {
                stringbuilder.append(c);
            }
            i++;
        }
        return stringbuilder.toString();
        UnsupportedEncodingException unsupportedencodingexception;
        unsupportedencodingexception;
        s1 = null;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static String encodeParameters(HttpParameter ahttpparameter[])
    {
        if (ahttpparameter == null)
        {
            return "";
        }
        StringBuilder stringbuilder = new StringBuilder();
        for (int i = 0; i < ahttpparameter.length; i++)
        {
            if (ahttpparameter[i].isFile())
            {
                throw new IllegalArgumentException((new StringBuilder()).append("parameter [").append(ahttpparameter[i].name).append("]should be text").toString());
            }
            if (i != 0)
            {
                stringbuilder.append("&");
            }
            stringbuilder.append(encode(ahttpparameter[i].name)).append("=").append(encode(ahttpparameter[i].value));
        }

        return stringbuilder.toString();
    }

    public static HttpParameter[] getParameterArray(String s, int i)
    {
        return getParameterArray(s, String.valueOf(i));
    }

    public static HttpParameter[] getParameterArray(String s, int i, String s1, int j)
    {
        return getParameterArray(s, String.valueOf(i), s1, String.valueOf(j));
    }

    public static HttpParameter[] getParameterArray(String s, String s1)
    {
        HttpParameter ahttpparameter[] = new HttpParameter[1];
        ahttpparameter[0] = new HttpParameter(s, s1);
        return ahttpparameter;
    }

    public static HttpParameter[] getParameterArray(String s, String s1, String s2, String s3)
    {
        HttpParameter ahttpparameter[] = new HttpParameter[2];
        ahttpparameter[0] = new HttpParameter(s, s1);
        ahttpparameter[1] = new HttpParameter(s2, s3);
        return ahttpparameter;
    }

    public int compareTo(Object obj)
    {
        HttpParameter httpparameter = (HttpParameter)obj;
        int i = name.compareTo(httpparameter.name);
        if (i == 0)
        {
            i = value.compareTo(httpparameter.value);
        }
        return i;
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (!(obj instanceof HttpParameter))
            {
                return false;
            }
            HttpParameter httpparameter = (HttpParameter)obj;
            if (file == null ? httpparameter.file != null : !file.equals(httpparameter.file))
            {
                return false;
            }
            if (fileBody == null ? httpparameter.fileBody != null : !fileBody.equals(httpparameter.fileBody))
            {
                return false;
            }
            if (!name.equals(httpparameter.name))
            {
                return false;
            }
            if (value == null ? httpparameter.value != null : !value.equals(httpparameter.value))
            {
                return false;
            }
        }
        return true;
    }

    public String getContentType()
    {
        if (!isFile())
        {
            throw new IllegalStateException("not a file");
        }
        String s = file.getName();
        if (-1 == s.lastIndexOf("."))
        {
            return "application/octet-stream";
        }
        String s1 = s.substring(1 + s.lastIndexOf(".")).toLowerCase();
        if (s1.length() == 3)
        {
            if ("gif".equals(s1))
            {
                return "image/gif";
            }
            if ("png".equals(s1))
            {
                return "image/png";
            }
            if ("jpg".equals(s1))
            {
                return "image/jpeg";
            } else
            {
                return "application/octet-stream";
            }
        }
        if (s1.length() == 4)
        {
            if ("jpeg".equals(s1))
            {
                return "image/jpeg";
            } else
            {
                return "application/octet-stream";
            }
        } else
        {
            return "application/octet-stream";
        }
    }

    public File getFile()
    {
        return file;
    }

    public InputStream getFileBody()
    {
        return fileBody;
    }

    public String getName()
    {
        return name;
    }

    public String getValue()
    {
        return value;
    }

    public boolean hasFileBody()
    {
        return fileBody != null;
    }

    public int hashCode()
    {
        int i = 31 * name.hashCode();
        int j;
        int k;
        int l;
        int i1;
        InputStream inputstream;
        int j1;
        if (value != null)
        {
            j = value.hashCode();
        } else
        {
            j = 0;
        }
        k = 31 * (j + i);
        if (file != null)
        {
            l = file.hashCode();
        } else
        {
            l = 0;
        }
        i1 = 31 * (l + k);
        inputstream = fileBody;
        j1 = 0;
        if (inputstream != null)
        {
            j1 = fileBody.hashCode();
        }
        return i1 + j1;
    }

    public boolean isFile()
    {
        return file != null;
    }

    public String toString()
    {
        return (new StringBuilder()).append("PostParameter{name='").append(name).append('\'').append(", value='").append(value).append('\'').append(", file=").append(file).append(", fileBody=").append(fileBody).append('}').toString();
    }
}
