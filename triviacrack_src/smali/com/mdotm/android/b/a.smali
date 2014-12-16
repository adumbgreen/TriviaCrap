.class public Lcom/mdotm/android/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 405
    const-string v0, "jpg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "png"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 406
    const-string v0, "jpeg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 407
    :cond_0
    sget v0, Lcom/mdotm/android/b/c;->f:I

    .line 416
    :goto_0
    return v0

    .line 408
    :cond_1
    const-string v0, "mp4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "m4v"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 409
    const-string v0, "avi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "3gp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 410
    :cond_2
    sget v0, Lcom/mdotm/android/b/c;->g:I

    goto :goto_0

    .line 411
    :cond_3
    const-string v0, "gif"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 412
    sget v0, Lcom/mdotm/android/b/c;->i:I

    goto :goto_0

    .line 413
    :cond_4
    const-string v0, "webarchive"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 414
    sget v0, Lcom/mdotm/android/b/c;->h:I

    goto :goto_0

    .line 416
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 422
    const-string v0, "\\"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 423
    const-string v1, "/"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 424
    const-string v1, "."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 425
    const-string v1, ":"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 426
    const-string v1, "?"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 427
    if-nez p2, :cond_0

    .line 428
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "-"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 430
    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(Lcom/mdotm/android/vast/e;Lcom/mdotm/android/d/b;ILandroid/content/Context;Z)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    const/4 v0, 0x0

    .line 34
    const/4 v2, 0x0

    .line 35
    if-eqz p1, :cond_29

    .line 36
    const/4 v0, 0x1

    move v4, v0

    .line 39
    :goto_0
    const/4 v1, 0x0

    .line 40
    if-nez v4, :cond_3

    .line 41
    invoke-virtual {p2}, Lcom/mdotm/android/d/b;->d()Ljava/lang/String;

    move-result-object v0

    move-object v3, v2

    move-object v2, v0

    .line 69
    :goto_1
    if-eqz v2, :cond_25

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 70
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_25

    .line 73
    :try_start_0
    const-string v0, "."

    invoke-virtual {v2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-direct {p0, v0}, Lcom/mdotm/android/b/a;->a(Ljava/lang/String;)I

    move-result v5

    .line 78
    if-eqz v4, :cond_4

    .line 81
    invoke-virtual {v3, v5}, Lcom/mdotm/android/vast/a;->a(I)V

    .line 86
    :goto_2
    sget v0, Lcom/mdotm/android/b/c;->f:I

    if-eq v5, v0, :cond_0

    .line 87
    sget v0, Lcom/mdotm/android/b/c;->g:I

    if-eq v5, v0, :cond_0

    .line 88
    sget v0, Lcom/mdotm/android/b/c;->i:I

    if-ne v5, v0, :cond_2

    .line 90
    :cond_0
    const-string v0, "image/video/gifimage resource"

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    invoke-direct {p0, v2, p5}, Lcom/mdotm/android/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 93
    if-eqz p3, :cond_7

    if-eqz p5, :cond_7

    .line 94
    const/4 v0, 0x2

    if-ne p3, v0, :cond_5

    .line 95
    new-instance v1, Ljava/io/File;

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 97
    const-string v7, "/"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 98
    sget-object v7, Lcom/mdotm/android/b/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 99
    const-string v7, "/"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 100
    sget-object v7, Lcom/mdotm/android/b/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 102
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 105
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v0

    .line 185
    :goto_3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 186
    if-eqz v4, :cond_f

    if-eqz v3, :cond_f

    .line 188
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/mdotm/android/vast/a;->a(Ljava/lang/String;)V

    .line 189
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/mdotm/android/vast/a;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    :cond_2
    :goto_4
    return-void

    .line 43
    :cond_3
    invoke-virtual {p1}, Lcom/mdotm/android/vast/e;->c()Ljava/util/ArrayList;

    move-result-object v3

    .line 44
    if-eqz v3, :cond_28

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_28

    .line 47
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mdotm/android/vast/b;

    invoke-virtual {v0}, Lcom/mdotm/android/vast/b;->a()I

    move-result v0

    .line 48
    packed-switch v0, :pswitch_data_0

    .line 57
    :goto_5
    if-eqz v2, :cond_27

    .line 58
    invoke-virtual {v2}, Lcom/mdotm/android/vast/a;->a()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_27

    .line 59
    invoke-virtual {v2}, Lcom/mdotm/android/vast/a;->b()Ljava/lang/String;

    move-result-object v0

    move-object v3, v2

    move-object v2, v0

    goto/16 :goto_1

    .line 50
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mdotm/android/vast/c;

    .line 51
    invoke-virtual {v0}, Lcom/mdotm/android/vast/c;->d()Lcom/mdotm/android/vast/a;

    move-result-object v2

    goto :goto_5

    .line 83
    :cond_4
    :try_start_1
    invoke-virtual {p2, v5}, Lcom/mdotm/android/d/b;->b(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 370
    :catch_0
    move-exception v0

    .line 373
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 375
    if-eqz v4, :cond_24

    .line 377
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mdotm/android/vast/e;->a(I)V

    goto :goto_4

    .line 107
    :cond_5
    :try_start_2
    new-instance v1, Ljava/io/File;

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 109
    const-string v7, "/"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 110
    sget-object v7, Lcom/mdotm/android/b/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 111
    const-string v7, "/"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 112
    sget-object v7, Lcom/mdotm/android/b/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_6

    .line 114
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 116
    :cond_6
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v0

    .line 118
    goto/16 :goto_3

    .line 120
    :cond_7
    const-string v0, "cache is not enabled"

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    if-nez v4, :cond_b

    invoke-virtual {p2}, Lcom/mdotm/android/d/b;->a()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 124
    const/4 v0, 0x1

    if-ne p3, v0, :cond_9

    .line 126
    new-instance v1, Ljava/io/File;

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    .line 128
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    .line 129
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    const-string v7, "/"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 131
    sget-object v7, Lcom/mdotm/android/b/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 132
    const-string v7, "/"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 133
    sget-object v7, Lcom/mdotm/android/b/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 126
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_8

    .line 135
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 138
    :cond_8
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v0

    .line 139
    goto/16 :goto_3

    .line 140
    :cond_9
    new-instance v1, Ljava/io/File;

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 142
    const-string v7, "/"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 143
    sget-object v7, Lcom/mdotm/android/b/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 144
    const-string v7, "/"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 145
    sget-object v7, Lcom/mdotm/android/b/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 141
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 140
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_a

    .line 147
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 150
    :cond_a
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v0

    .line 152
    goto/16 :goto_3

    .line 153
    :cond_b
    const/4 v0, 0x1

    if-ne p3, v0, :cond_d

    .line 154
    new-instance v1, Ljava/io/File;

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    .line 156
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    .line 157
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    const-string v7, "/"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 159
    sget-object v7, Lcom/mdotm/android/b/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 160
    const-string v7, "/"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 161
    sget-object v7, Lcom/mdotm/android/b/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 154
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_c

    .line 164
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 167
    :cond_c
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v0

    .line 168
    goto/16 :goto_3

    .line 170
    :cond_d
    new-instance v1, Ljava/io/File;

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 172
    const-string v7, "/"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 173
    sget-object v7, Lcom/mdotm/android/b/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 174
    const-string v7, "/"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 175
    sget-object v7, Lcom/mdotm/android/b/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 170
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_e

    .line 177
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 179
    :cond_e
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v0

    goto/16 :goto_3

    .line 193
    :cond_f
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mdotm/android/d/b;->a(Ljava/lang/String;)V

    .line 194
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/mdotm/android/d/b;->b(Z)V

    goto/16 :goto_4

    .line 197
    :cond_10
    if-eqz p5, :cond_11

    .line 200
    const-string v0, "cache does not exist"

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    invoke-static {p4}, Lcom/mdotm/android/a/a;->a(Landroid/content/Context;)Lcom/mdotm/android/a/a;

    move-result-object v0

    .line 202
    invoke-virtual {v0, v6}, Lcom/mdotm/android/a/a;->b(Ljava/lang/String;)V

    .line 205
    :cond_11
    if-eqz p5, :cond_19

    .line 206
    new-instance v0, Lcom/mdotm/android/b/b;

    invoke-direct {v0}, Lcom/mdotm/android/b/b;-><init>()V

    invoke-virtual {v0, p4, v2}, Lcom/mdotm/android/b/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 208
    if-nez v0, :cond_13

    .line 209
    const-string v0, "unable to download file"

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    if-eqz v4, :cond_12

    .line 212
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcom/mdotm/android/vast/a;->a(Z)V

    .line 213
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mdotm/android/vast/e;->a(I)V

    goto/16 :goto_4

    .line 216
    :cond_12
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/mdotm/android/d/b;->e(I)V

    .line 219
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/mdotm/android/d/b;->b(Z)V

    goto/16 :goto_4

    .line 223
    :cond_13
    const/4 v2, 0x2

    if-ne p3, v2, :cond_15

    .line 224
    invoke-virtual {p2}, Lcom/mdotm/android/d/b;->g()I

    move-result v2

    sget v5, Lcom/mdotm/android/b/c;->g:I

    if-ne v2, v5, :cond_15

    .line 225
    if-eqz v4, :cond_14

    .line 227
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mdotm/android/vast/e;->a(I)V

    .line 228
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcom/mdotm/android/vast/a;->a(Z)V

    goto/16 :goto_4

    .line 245
    :cond_14
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/mdotm/android/d/b;->e(I)V

    .line 247
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/mdotm/android/d/b;->b(Z)V

    goto/16 :goto_4

    .line 252
    :cond_15
    const-string v2, "inserting file neme to ad cache1"

    invoke-static {p0, v2}, Lcom/mdotm/android/e/d;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 254
    new-instance v2, Lcom/mdotm/android/b/b;

    invoke-direct {v2}, Lcom/mdotm/android/b/b;-><init>()V

    .line 255
    invoke-virtual {v2, v0, v1}, Lcom/mdotm/android/b/b;->a(Ljava/io/InputStream;Ljava/io/File;)Z

    move-result v0

    .line 256
    if-eqz v0, :cond_17

    .line 257
    if-eqz v4, :cond_16

    if-eqz v3, :cond_16

    .line 261
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 260
    invoke-virtual {v3, v0}, Lcom/mdotm/android/vast/a;->a(Ljava/lang/String;)V

    .line 262
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/mdotm/android/vast/a;->a(Z)V

    .line 269
    :goto_6
    const-string v0, "inserting file neme to ad cache"

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    invoke-static {p4}, Lcom/mdotm/android/a/a;->a(Landroid/content/Context;)Lcom/mdotm/android/a/a;

    move-result-object v0

    .line 274
    const-string v1, "AdCache"

    .line 272
    invoke-virtual {v0, v6, v1}, Lcom/mdotm/android/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 266
    :cond_16
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 265
    invoke-virtual {p2, v0}, Lcom/mdotm/android/d/b;->a(Ljava/lang/String;)V

    .line 267
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/mdotm/android/d/b;->b(Z)V

    goto :goto_6

    .line 276
    :cond_17
    if-eqz v4, :cond_18

    if-eqz v3, :cond_18

    .line 278
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/mdotm/android/d/b;->b(Z)V

    .line 279
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mdotm/android/vast/e;->a(I)V

    goto/16 :goto_4

    .line 282
    :cond_18
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/mdotm/android/d/b;->e(I)V

    .line 284
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/mdotm/android/d/b;->b(Z)V

    goto/16 :goto_4

    .line 293
    :cond_19
    if-eqz v4, :cond_1b

    const/4 v0, 0x2

    if-ne p3, v0, :cond_1a

    const/4 v0, 0x1

    .line 295
    :goto_7
    if-nez v0, :cond_22

    .line 296
    new-instance v0, Lcom/mdotm/android/b/b;

    invoke-direct {v0}, Lcom/mdotm/android/b/b;-><init>()V

    invoke-virtual {v0, p4, v2}, Lcom/mdotm/android/b/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 300
    if-nez v0, :cond_1e

    .line 302
    if-eqz v4, :cond_1d

    .line 304
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcom/mdotm/android/vast/a;->a(Z)V

    .line 305
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mdotm/android/vast/e;->a(I)V

    goto/16 :goto_4

    .line 293
    :cond_1a
    const/4 v0, 0x0

    goto :goto_7

    .line 294
    :cond_1b
    sget v0, Lcom/mdotm/android/b/c;->g:I

    if-ne v5, v0, :cond_1c

    const/4 v0, 0x2

    if-ne p3, v0, :cond_1c

    .line 293
    const/4 v0, 0x1

    goto :goto_7

    :cond_1c
    const/4 v0, 0x0

    goto :goto_7

    .line 308
    :cond_1d
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/mdotm/android/d/b;->e(I)V

    .line 310
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/mdotm/android/d/b;->b(Z)V

    goto/16 :goto_4

    .line 316
    :cond_1e
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 317
    new-instance v2, Lcom/mdotm/android/b/b;

    invoke-direct {v2}, Lcom/mdotm/android/b/b;-><init>()V

    .line 318
    invoke-virtual {v2, v0, v1}, Lcom/mdotm/android/b/b;->a(Ljava/io/InputStream;Ljava/io/File;)Z

    move-result v0

    .line 320
    if-eqz v0, :cond_20

    .line 321
    if-eqz v4, :cond_1f

    .line 325
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 324
    invoke-virtual {v3, v0}, Lcom/mdotm/android/vast/a;->a(Ljava/lang/String;)V

    .line 326
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/mdotm/android/vast/a;->a(Z)V

    goto/16 :goto_4

    .line 329
    :cond_1f
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 328
    invoke-virtual {p2, v0}, Lcom/mdotm/android/d/b;->a(Ljava/lang/String;)V

    .line 330
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/mdotm/android/d/b;->b(Z)V

    goto/16 :goto_4

    .line 333
    :cond_20
    if-eqz v4, :cond_21

    .line 334
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcom/mdotm/android/vast/a;->a(Z)V

    .line 335
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mdotm/android/vast/e;->a(I)V

    goto/16 :goto_4

    .line 338
    :cond_21
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/mdotm/android/d/b;->e(I)V

    .line 340
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/mdotm/android/d/b;->b(Z)V

    goto/16 :goto_4

    .line 348
    :cond_22
    if-eqz v4, :cond_23

    .line 350
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mdotm/android/vast/e;->a(I)V

    goto/16 :goto_4

    .line 353
    :cond_23
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/mdotm/android/d/b;->e(I)V

    .line 355
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/mdotm/android/d/b;->b(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_4

    .line 379
    :cond_24
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/mdotm/android/d/b;->e(I)V

    .line 381
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/mdotm/android/d/b;->b(Z)V

    goto/16 :goto_4

    .line 388
    :cond_25
    if-eqz v4, :cond_26

    .line 389
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mdotm/android/vast/e;->a(I)V

    goto/16 :goto_4

    .line 391
    :cond_26
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/mdotm/android/d/b;->e(I)V

    goto/16 :goto_4

    :cond_27
    move-object v3, v2

    move-object v2, v1

    goto/16 :goto_1

    :cond_28
    move-object v3, v2

    move-object v2, v1

    goto/16 :goto_1

    :cond_29
    move v4, v0

    goto/16 :goto_0

    .line 48
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
