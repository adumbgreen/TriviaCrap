.class public Lcom/etermax/preguntados/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/etermax/gamescommon/animations/a;

.field b:Lcom/etermax/gamescommon/resources/a;

.field c:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/etermax/preguntados/b/c;)Ljava/lang/String;
    .locals 7
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/etermax/preguntados/b/a;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "animation/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/etermax/preguntados/b/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/animation.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/etermax/preguntados/b/a;->a:Lcom/etermax/gamescommon/animations/a;

    invoke-virtual {v1, v0}, Lcom/etermax/gamescommon/animations/a;->a(Ljava/io/InputStream;)Ljava/util/Set;

    move-result-object v0

    .line 65
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 67
    iget-object v1, p0, Lcom/etermax/preguntados/b/a;->a:Lcom/etermax/gamescommon/animations/a;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/animations/a;->a()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/etermax/gamescommon/animations/v1/b;

    .line 70
    invoke-virtual {v1}, Lcom/etermax/gamescommon/animations/v1/b;->f()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/etermax/gamescommon/animations/v1/d;

    .line 71
    invoke-virtual {v1}, Lcom/etermax/gamescommon/animations/v1/d;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/etermax/gamescommon/animations/v1/c;

    .line 72
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "animation/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lcom/etermax/preguntados/b/c;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/etermax/preguntados/b/a;->c:Landroid/content/Context;

    invoke-interface {p1}, Lcom/etermax/preguntados/b/c;->b()Lcom/etermax/gamescommon/resources/b;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/etermax/gamescommon/resources/a;->b(Landroid/content/Context;Lcom/etermax/gamescommon/resources/b;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/etermax/gamescommon/animations/v1/c;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/etermax/gamescommon/animations/v1/c;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :cond_1
    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;)V
    .locals 3
    .parameter

    .prologue
    .line 102
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 103
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 104
    instance-of v2, v0, Lcom/etermax/gamescommon/animations/d;

    if-eqz v2, :cond_0

    .line 105
    check-cast v0, Lcom/etermax/gamescommon/animations/d;

    invoke-interface {v0}, Lcom/etermax/gamescommon/animations/d;->b()V

    .line 102
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 108
    :cond_1
    return-void
.end method

.method public a(Landroid/view/ViewGroup;Lcom/etermax/preguntados/b/c;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/etermax/preguntados/b/a;->a:Lcom/etermax/gamescommon/animations/a;

    invoke-interface {p2}, Lcom/etermax/preguntados/b/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lcom/etermax/preguntados/b/c;->b()Lcom/etermax/gamescommon/resources/b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/animations/a;->a(Ljava/lang/String;Lcom/etermax/gamescommon/resources/b;)Lcom/etermax/gamescommon/animations/d;

    move-result-object v0

    .line 84
    invoke-virtual {p0, v0, p1}, Lcom/etermax/preguntados/b/a;->a(Lcom/etermax/gamescommon/animations/d;Landroid/view/ViewGroup;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected a(Lcom/etermax/gamescommon/animations/d;Landroid/view/ViewGroup;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 93
    if-nez p1, :cond_0

    .line 99
    :goto_0
    return-void

    .line 96
    :cond_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    move-object v0, p1

    .line 97
    check-cast v0, Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 98
    invoke-interface {p1}, Lcom/etermax/gamescommon/animations/d;->a()V

    goto :goto_0
.end method

.method public a([Lcom/etermax/preguntados/b/c;)V
    .locals 3
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/etermax/preguntados/b/a;->b:Lcom/etermax/gamescommon/resources/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/resources/a;->b()Lcom/etermax/gamescommon/resources/b;

    move-result-object v0

    sget-object v1, Lcom/etermax/gamescommon/resources/b;->a:Lcom/etermax/gamescommon/resources/b;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/etermax/preguntados/b/a;->b:Lcom/etermax/gamescommon/resources/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/resources/a;->b()Lcom/etermax/gamescommon/resources/b;

    move-result-object v0

    sget-object v1, Lcom/etermax/gamescommon/resources/b;->b:Lcom/etermax/gamescommon/resources/b;

    if-eq v0, v1, :cond_0

    .line 45
    iget-object v0, p0, Lcom/etermax/preguntados/b/a;->a:Lcom/etermax/gamescommon/animations/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/animations/a;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 46
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 48
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/etermax/preguntados/b/a;->a(Lcom/etermax/preguntados/b/c;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    :catch_0
    move-exception v2

    goto :goto_1

    .line 53
    :cond_0
    return-void
.end method

.method public b(Lcom/etermax/preguntados/b/c;)Z
    .locals 10
    .parameter

    .prologue
    const-wide/16 v8, 0xd

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 111
    iget-object v2, p0, Lcom/etermax/preguntados/b/a;->b:Lcom/etermax/gamescommon/resources/a;

    invoke-virtual {v2}, Lcom/etermax/gamescommon/resources/a;->b()Lcom/etermax/gamescommon/resources/b;

    move-result-object v2

    sget-object v3, Lcom/etermax/gamescommon/resources/b;->a:Lcom/etermax/gamescommon/resources/b;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/etermax/preguntados/b/a;->b:Lcom/etermax/gamescommon/resources/a;

    invoke-virtual {v2}, Lcom/etermax/gamescommon/resources/a;->b()Lcom/etermax/gamescommon/resources/b;

    move-result-object v2

    sget-object v3, Lcom/etermax/gamescommon/resources/b;->b:Lcom/etermax/gamescommon/resources/b;

    if-ne v2, v3, :cond_1

    .line 144
    :cond_0
    :goto_0
    return v1

    .line 114
    :cond_1
    iget-object v2, p0, Lcom/etermax/preguntados/b/a;->a:Lcom/etermax/gamescommon/animations/a;

    invoke-interface {p1}, Lcom/etermax/preguntados/b/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/etermax/gamescommon/animations/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    const/4 v3, 0x0

    .line 120
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/proc/meminfo"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x2000

    invoke-direct {v2, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 121
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 122
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 127
    const-string v5, "\\s+"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    div-int/lit16 v4, v4, 0x400

    int-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-long v4, v4

    .line 128
    const-string v6, "\\s+"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    aget-object v3, v3, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    div-int/lit16 v3, v3, 0x400

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    move-result v3

    int-to-long v6, v3

    .line 130
    cmp-long v3, v4, v8

    if-lez v3, :cond_2

    cmp-long v3, v6, v8

    if-lez v3, :cond_2

    .line 136
    :goto_1
    if-eqz v2, :cond_4

    .line 138
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move v1, v0

    .line 141
    goto :goto_0

    :cond_2
    move v0, v1

    .line 130
    goto :goto_1

    .line 139
    :catch_0
    move-exception v1

    .line 140
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move v1, v0

    .line 141
    goto :goto_0

    .line 131
    :catch_1
    move-exception v0

    move-object v2, v3

    .line 132
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 136
    if-eqz v2, :cond_0

    .line 138
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 139
    :catch_2
    move-exception v0

    .line 140
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 133
    :catch_3
    move-exception v0

    move-object v2, v3

    .line 134
    :goto_3
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 136
    if-eqz v2, :cond_0

    .line 138
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_0

    .line 139
    :catch_4
    move-exception v0

    .line 140
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 136
    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_4
    if-eqz v2, :cond_3

    .line 138
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 141
    :cond_3
    :goto_5
    throw v0

    .line 139
    :catch_5
    move-exception v1

    .line 140
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 136
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 133
    :catch_6
    move-exception v0

    goto :goto_3

    .line 131
    :catch_7
    move-exception v0

    goto :goto_2

    :cond_4
    move v1, v0

    goto/16 :goto_0
.end method
