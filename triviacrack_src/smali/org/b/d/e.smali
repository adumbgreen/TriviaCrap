.class public abstract Lorg/b/d/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 106
    const-string v1, "No InputStream specified"

    invoke-static {p0, v1}, Lorg/b/d/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    const-string v1, "No OutputStream specified"

    invoke-static {p1, v1}, Lorg/b/d/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    const/16 v1, 0x1000

    :try_start_0
    new-array v1, v1, [B

    .line 112
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 113
    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 114
    add-int/2addr v0, v2

    goto :goto_0

    .line 116
    :cond_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 126
    :goto_1
    :try_start_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 129
    :goto_2
    return v0

    .line 120
    :catchall_0
    move-exception v0

    .line 121
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 126
    :goto_3
    :try_start_4
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 129
    :goto_4
    throw v0

    .line 123
    :catch_0
    move-exception v1

    goto :goto_1

    .line 128
    :catch_1
    move-exception v1

    goto :goto_2

    .line 123
    :catch_2
    move-exception v1

    goto :goto_3

    .line 128
    :catch_3
    move-exception v1

    goto :goto_4
.end method

.method public static a(Ljava/io/Reader;Ljava/io/Writer;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 182
    const-string v1, "No Reader specified"

    invoke-static {p0, v1}, Lorg/b/d/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    const-string v1, "No Writer specified"

    invoke-static {p1, v1}, Lorg/b/d/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    const/16 v1, 0x1000

    :try_start_0
    new-array v1, v1, [C

    .line 188
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/Reader;->read([C)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 189
    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Ljava/io/Writer;->write([CII)V

    .line 190
    add-int/2addr v0, v2

    goto :goto_0

    .line 192
    :cond_0
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    :try_start_1
    invoke-virtual {p0}, Ljava/io/Reader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 202
    :goto_1
    :try_start_2
    invoke-virtual {p1}, Ljava/io/Writer;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 205
    :goto_2
    return v0

    .line 196
    :catchall_0
    move-exception v0

    .line 197
    :try_start_3
    invoke-virtual {p0}, Ljava/io/Reader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 202
    :goto_3
    :try_start_4
    invoke-virtual {p1}, Ljava/io/Writer;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 205
    :goto_4
    throw v0

    .line 199
    :catch_0
    move-exception v1

    goto :goto_1

    .line 204
    :catch_1
    move-exception v1

    goto :goto_2

    .line 199
    :catch_2
    move-exception v1

    goto :goto_3

    .line 204
    :catch_3
    move-exception v1

    goto :goto_4
.end method

.method public static a(Ljava/io/Reader;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 239
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 240
    invoke-static {p0, v0}, Lorg/b/d/e;->a(Ljava/io/Reader;Ljava/io/Writer;)I

    .line 241
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/io/Writer;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 217
    const-string v0, "No input String specified"

    invoke-static {p0, v0}, Lorg/b/d/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    const-string v0, "No Writer specified"

    invoke-static {p1, v0}, Lorg/b/d/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    :try_start_1
    invoke-virtual {p1}, Ljava/io/Writer;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 229
    :goto_0
    return-void

    .line 223
    :catchall_0
    move-exception v0

    .line 224
    :try_start_2
    invoke-virtual {p1}, Ljava/io/Writer;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 227
    :goto_1
    throw v0

    .line 226
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static a([BLjava/io/OutputStream;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 141
    const-string v0, "No input byte array specified"

    invoke-static {p0, v0}, Lorg/b/d/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    const-string v0, "No OutputStream specified"

    invoke-static {p1, v0}, Lorg/b/d/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    :try_start_1
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 153
    :goto_0
    return-void

    .line 147
    :catchall_0
    move-exception v0

    .line 148
    :try_start_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 151
    :goto_1
    throw v0

    .line 150
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static a(Ljava/io/InputStream;)[B
    .locals 2
    .parameter

    .prologue
    .line 163
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 164
    invoke-static {p0, v0}, Lorg/b/d/e;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 165
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
