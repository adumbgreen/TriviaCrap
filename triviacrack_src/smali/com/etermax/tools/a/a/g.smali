.class public Lcom/etermax/tools/a/a/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Landroid/content/Context;

.field private b:Ljavax/crypto/Cipher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/etermax/tools/a/a/g;->b:Ljavax/crypto/Cipher;

    .line 212
    return-void
.end method

.method private a(Lorg/b/c/h;[B)Ljava/lang/StringBuilder;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 84
    invoke-interface {p1}, Lorg/b/c/h;->d()Lorg/b/c/c;

    move-result-object v0

    .line 86
    const-string v1, "Cookie"

    invoke-virtual {v0, v1}, Lorg/b/c/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 87
    const-string v2, "User-Agent"

    invoke-virtual {v0, v2}, Lorg/b/c/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 88
    const-string v3, "Eter-Agent"

    invoke-virtual {v0, v3}, Lorg/b/c/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lorg/b/c/h;->b()Lorg/b/c/f;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lorg/b/c/h;->c()Ljava/net/URI;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    if-eqz v1, :cond_0

    .line 94
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cookie: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    :cond_0
    if-eqz v2, :cond_1

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User-Agent: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    :cond_1
    if-eqz v0, :cond_2

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Eter-Agent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    :cond_2
    invoke-interface {p1}, Lorg/b/c/h;->b()Lorg/b/c/f;

    move-result-object v0

    sget-object v1, Lorg/b/c/f;->e:Lorg/b/c/f;

    invoke-virtual {v0, v1}, Lorg/b/c/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p1}, Lorg/b/c/h;->b()Lorg/b/c/f;

    move-result-object v0

    sget-object v1, Lorg/b/c/f;->b:Lorg/b/c/f;

    invoke-virtual {v0, v1}, Lorg/b/c/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 103
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request Body: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    :cond_4
    return-object v3
.end method

.method private a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/etermax/tools/a/a/g;->b:Ljavax/crypto/Cipher;

    if-eqz v0, :cond_0

    .line 112
    invoke-direct {p0, p1}, Lcom/etermax/tools/a/a/g;->b(Ljava/lang/String;)[B

    move-result-object v0

    .line 113
    if-eqz v0, :cond_0

    .line 114
    invoke-direct {p0, v0}, Lcom/etermax/tools/a/a/g;->a([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 118
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a([B)V
    .locals 5
    .parameter

    .prologue
    .line 263
    :try_start_0
    invoke-direct {p0}, Lcom/etermax/tools/a/a/g;->d()Z

    move-result v0

    .line 264
    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {p0}, Lcom/etermax/tools/a/a/g;->b()Ljava/io/File;

    move-result-object v0

    .line 266
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 267
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 268
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm:ss,SSS"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 269
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 271
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 272
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write(I)V

    .line 273
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 274
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 276
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a([BI)[B
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 136
    new-array v0, v1, [B

    .line 139
    new-array v3, v1, [B

    .line 141
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    const/16 v0, 0x64

    .line 144
    :goto_0
    new-array v2, v0, [B

    .line 146
    :goto_1
    array-length v4, p1

    if-ge v1, v4, :cond_2

    .line 149
    if-lez v1, :cond_0

    rem-int v4, v1, v0

    if-nez v4, :cond_0

    .line 151
    iget-object v4, p0, Lcom/etermax/tools/a/a/g;->b:Ljavax/crypto/Cipher;

    invoke-virtual {v4, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    .line 153
    invoke-static {v3, v2}, Lcom/etermax/tools/a/a/g;->a([B[B)[B

    move-result-object v3

    .line 158
    add-int v2, v1, v0

    array-length v4, p1

    if-le v2, v4, :cond_3

    .line 159
    array-length v2, p1

    sub-int/2addr v2, v1

    .line 162
    :goto_2
    new-array v2, v2, [B

    .line 165
    :cond_0
    rem-int v4, v1, v0

    aget-byte v5, p1, v1

    aput-byte v5, v2, v4

    .line 146
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 141
    :cond_1
    const/16 v0, 0x80

    goto :goto_0

    .line 170
    :cond_2
    iget-object v0, p0, Lcom/etermax/tools/a/a/g;->b:Ljavax/crypto/Cipher;

    invoke-virtual {v0, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 173
    invoke-static {v3, v0}, Lcom/etermax/tools/a/a/g;->a([B[B)[B

    move-result-object v0

    .line 175
    return-object v0

    :cond_3
    move v2, v0

    goto :goto_2
.end method

.method private static a([B[B)[B
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 199
    array-length v0, p0

    array-length v2, p1

    add-int/2addr v0, v2

    new-array v2, v0, [B

    move v0, v1

    .line 200
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_0

    .line 201
    aget-byte v3, p0, v0

    aput-byte v3, v2, v0

    .line 200
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 203
    :cond_0
    :goto_1
    array-length v0, p1

    if-ge v1, v0, :cond_1

    .line 204
    array-length v0, p0

    add-int/2addr v0, v1

    aget-byte v3, p1, v1

    aput-byte v3, v2, v0

    .line 203
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 206
    :cond_1
    return-object v2
.end method

.method private b(Ljava/lang/String;)[B
    .locals 2
    .parameter

    .prologue
    .line 126
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 127
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/etermax/tools/a/a/g;->a([BI)[B

    move-result-object v0

    .line 128
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encode([BI)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 130
    :goto_0
    return-object v0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 4
    .parameter

    .prologue
    .line 180
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    .line 182
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 183
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 185
    :try_start_0
    invoke-interface {v2}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    .line 186
    invoke-interface {v2}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/math/BigInteger;

    .line 187
    new-instance v3, Ljava/security/spec/RSAPublicKeySpec;

    invoke-direct {v3, v0, v1}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 188
    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 189
    invoke-virtual {v0, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 194
    invoke-interface {v2}, Ljava/io/ObjectInput;->close()V

    return-object v0

    .line 191
    :catch_0
    move-exception v0

    .line 192
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "Spurious serialisation error"

    invoke-direct {v1, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Ljava/io/ObjectInput;->close()V

    throw v0
.end method

.method private d()Z
    .locals 6

    .prologue
    .line 282
    const/4 v0, 0x1

    .line 283
    invoke-virtual {p0}, Lcom/etermax/tools/a/a/g;->b()Ljava/io/File;

    move-result-object v1

    .line 284
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/32 v4, 0x7d000

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 285
    invoke-virtual {p0}, Lcom/etermax/tools/a/a/g;->c()Ljava/io/File;

    move-result-object v2

    .line 286
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 287
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v0

    .line 290
    :cond_0
    if-eqz v0, :cond_1

    .line 291
    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 294
    :cond_1
    return v0
.end method


# virtual methods
.method a()V
    .locals 3

    .prologue
    .line 48
    :try_start_0
    const-string v0, "RSA/ECB/PKCS1Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/tools/a/a/g;->b:Ljavax/crypto/Cipher;

    .line 49
    iget-object v0, p0, Lcom/etermax/tools/a/a/g;->b:Ljavax/crypto/Cipher;

    const/4 v1, 0x1

    const-string v2, "rO0ABXNyABRqYXZhLm1hdGguQmlnSW50ZWdlcoz8nx+pO/sdAwAGSQAIYml0Q291bnRJAAliaXRMZW5ndGhJABNmaXJzdE5vbnplcm9CeXRlTnVtSQAMbG93ZXN0U2V0Qml0SQAGc2lnbnVtWwAJbWFnbml0dWRldAACW0J4cgAQamF2YS5sYW5nLk51bWJlcoaslR0LlOCLAgAAeHD///////////////7////+AAAAAXVyAAJbQqzzF/gGCFTgAgAAeHAAAACAj+rPBELRVd+4lDl8yA/FyDo6CHcn/U42yHk3NNCWDnVdAfg1eBol/hpNibqKYx7geMWu+hxzjR3CoMox7oE2jv0nJxbgv2jk8O8MNeOW+TAIrs5ZuscL77ZuLuMfmPIHpgQCl3yg+0nqMgJRMqi75BKJ8LIh10DlXx7lv3JP9wt4c3EAfgAA///////////////+/////gAAAAF1cQB+AAQAAAADAQABeA=="

    invoke-static {v2}, Lcom/etermax/tools/a/a/g;->c(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Lorg/b/c/h;[BLjava/io/IOException;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/etermax/tools/a/a/g;->a(Lorg/b/c/h;[B)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IOException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/etermax/tools/a/a/g;->a(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public a(Lorg/b/c/h;[BLorg/b/c/a/i;J)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/etermax/tools/a/a/g;->a(Lorg/b/c/h;[B)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 59
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-interface {p3}, Lorg/b/c/a/i;->e()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lorg/b/d/e;->a(Ljava/io/InputStream;)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p4

    .line 61
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p3}, Lorg/b/c/a/i;->a()Lorg/b/c/i;

    move-result-object v5

    invoke-virtual {v5}, Lorg/b/c/i;->a()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms] Response Body: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    invoke-interface {p3}, Lorg/b/c/a/i;->d()Lorg/b/c/c;

    move-result-object v0

    .line 68
    const-string v2, "Set-Cookie"

    invoke-virtual {v0, v2}, Lorg/b/c/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    if-eqz v0, :cond_0

    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set-Cookie: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/etermax/tools/a/a/g;->a(Ljava/lang/String;)V

    .line 75
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Response body IOException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public b()Ljava/io/File;
    .locals 3

    .prologue
    .line 254
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "requests.log"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public c()Ljava/io/File;
    .locals 3

    .prologue
    .line 258
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "requests.2.log"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method
