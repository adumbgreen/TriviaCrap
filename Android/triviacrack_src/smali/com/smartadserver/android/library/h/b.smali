.class public Lcom/smartadserver/android/library/h/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/smartadserver/android/library/h/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/smartadserver/android/library/h/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/FileOutputStream;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 23
    const/4 v3, 0x0

    .line 25
    if-eqz p0, :cond_2

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    .line 28
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 30
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 32
    const-string v2, "/"

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 35
    :goto_0
    array-length v2, v4

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1

    .line 36
    new-instance v2, Ljava/io/File;

    aget-object v5, v4, v0

    invoke-direct {v2, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 37
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 38
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 35
    :cond_0
    add-int/lit8 v0, v0, 0x1

    move-object v1, v2

    goto :goto_0

    .line 43
    :cond_1
    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v4, v0

    .line 45
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 47
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_1
    return-object v0

    .line 48
    :catch_0
    move-exception v0

    move-object v0, v3

    goto :goto_1

    :cond_2
    move-object v0, v3

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 189
    const/4 v0, 0x0

    .line 192
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 193
    invoke-static {v1}, Lcom/smartadserver/android/library/h/b;->a(Ljava/net/URL;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 197
    :goto_0
    return-object v0

    .line 194
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a(Ljava/net/URL;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 206
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/smartadserver/android/library/h/b;->a(Ljava/net/URL;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/net/URL;[Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 215
    .line 224
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 229
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 232
    if-eqz p1, :cond_0

    array-length v2, p1

    if-lez v2, :cond_0

    .line 233
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v2

    .line 236
    :cond_0
    new-instance v2, Ljava/io/BufferedInputStream;

    const/16 v1, 0x1000

    invoke-direct {v2, v4, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v4, 0x1000

    invoke-direct {v1, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 244
    const/16 v4, 0x1000

    :try_start_2
    new-array v4, v4, [B

    .line 245
    :goto_0
    const/4 v5, -0x1

    if-eq v3, v5, :cond_1

    .line 246
    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 247
    invoke-virtual {v2, v4}, Ljava/io/BufferedInputStream;->read([B)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    move-result v3

    goto :goto_0

    .line 253
    :cond_1
    if-eqz v1, :cond_2

    .line 254
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    .line 255
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 257
    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 263
    :cond_3
    :goto_1
    return-object v0

    .line 250
    :catch_0
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    .line 253
    :goto_2
    if-eqz v1, :cond_4

    .line 254
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    .line 255
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 257
    :cond_4
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 258
    :catch_1
    move-exception v1

    goto :goto_1

    .line 252
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    .line 253
    :goto_3
    if-eqz v1, :cond_5

    .line 254
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    .line 255
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 257
    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 260
    :cond_6
    :goto_4
    throw v0

    .line 258
    :catch_2
    move-exception v1

    goto :goto_4

    .line 252
    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_3

    .line 250
    :catch_3
    move-exception v1

    move-object v1, v0

    goto :goto_2

    :catch_4
    move-exception v3

    goto :goto_2

    .line 258
    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 66
    .line 74
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 76
    const/16 v3, 0xbb8

    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 77
    const/16 v3, 0xbb8

    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 82
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 83
    new-instance v2, Ljava/io/BufferedInputStream;

    const/16 v4, 0x1000

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 84
    :try_start_1
    invoke-static {p0, p2, p3}, Lcom/smartadserver/android/library/h/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 86
    if-nez v1, :cond_2

    .line 87
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not write file to location :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    :goto_0
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 104
    :catchall_0
    move-exception v0

    .line 105
    :goto_1
    if-eqz v1, :cond_0

    .line 106
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 108
    :cond_0
    if-eqz v2, :cond_1

    .line 109
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 112
    :cond_1
    throw v0

    .line 94
    :cond_2
    const/16 v3, 0x1000

    :try_start_4
    new-array v3, v3, [B

    .line 95
    :goto_2
    const/4 v4, -0x1

    if-eq v0, v4, :cond_3

    .line 96
    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v0}, Ljava/io/FileOutputStream;->write([BII)V

    .line 97
    invoke-virtual {v2, v3}, Ljava/io/BufferedInputStream;->read([B)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-result v0

    goto :goto_2

    .line 105
    :cond_3
    if-eqz v1, :cond_4

    .line 106
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 108
    :cond_4
    if-eqz v2, :cond_5

    .line 109
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 117
    :cond_5
    return-void

    .line 111
    :catch_1
    move-exception v0

    .line 112
    throw v0

    .line 111
    :catch_2
    move-exception v0

    .line 112
    throw v0

    .line 104
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_1

    .line 101
    :catch_3
    move-exception v0

    move-object v2, v1

    goto :goto_0
.end method

.method public static a(Ljava/io/File;)V
    .locals 4
    .parameter

    .prologue
    .line 176
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 178
    invoke-static {v3}, Lcom/smartadserver/android/library/h/b;->a(Ljava/io/File;)V

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 180
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 181
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/io/Serializable;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 154
    .line 160
    :try_start_0
    invoke-static {p0, p2, p3}, Lcom/smartadserver/android/library/h/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 161
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 162
    new-instance v0, Ljava/io/ObjectOutputStream;

    invoke-direct {v0, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 164
    invoke-virtual {v0, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 165
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->flush()V

    .line 166
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    const/4 v0, 0x1

    .line 172
    :goto_0
    return v0

    .line 169
    :catch_0
    move-exception v0

    .line 170
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 120
    const/4 v3, 0x0

    .line 121
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 124
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 126
    const-string v2, "/"

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 129
    :goto_0
    array-length v2, v4

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 130
    new-instance v2, Ljava/io/File;

    aget-object v5, v4, v0

    invoke-direct {v2, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 129
    add-int/lit8 v0, v0, 0x1

    move-object v1, v2

    goto :goto_0

    .line 134
    :cond_0
    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v4, v0

    .line 136
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 139
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 140
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 141
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 142
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 143
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 149
    :goto_1
    return-object v0

    .line 144
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v3

    .line 145
    :goto_2
    sget-object v2, Lcom/smartadserver/android/library/h/b;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/smartadserver/android/library/h/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 144
    :catch_1
    move-exception v1

    goto :goto_2

    :cond_1
    move-object v0, v3

    goto :goto_1
.end method
