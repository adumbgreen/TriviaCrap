.class public Lcom/etermax/chat/a/j;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etermax/chat/a/f;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etermax/chat/a/f;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 70
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 73
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy-MM-dd"

    invoke-direct {v5, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/chat/a/f;

    .line 76
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 79
    if-nez v7, :cond_1

    .line 81
    new-instance v1, Lcom/etermax/chat/a/f;

    sget-object v3, Lcom/etermax/chat/a/i;->i:Lcom/etermax/chat/a/i;

    invoke-direct {v1, v3}, Lcom/etermax/chat/a/f;-><init>(Lcom/etermax/chat/a/i;)V

    .line 82
    invoke-virtual {v0}, Lcom/etermax/chat/a/f;->f()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/etermax/chat/a/f;->a(Ljava/util/Date;)V

    .line 83
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 91
    :cond_1
    if-lez v7, :cond_0

    .line 97
    add-int/lit8 v1, v7, -0x1

    :try_start_0
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/etermax/chat/a/f;

    invoke-virtual {v1}, Lcom/etermax/chat/a/f;->f()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 98
    :try_start_1
    invoke-virtual {p0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/etermax/chat/a/f;

    invoke-virtual {v1}, Lcom/etermax/chat/a/f;->f()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 104
    :goto_1
    invoke-virtual {v1, v3}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 106
    new-instance v1, Lcom/etermax/chat/a/f;

    sget-object v3, Lcom/etermax/chat/a/i;->i:Lcom/etermax/chat/a/i;

    invoke-direct {v1, v3}, Lcom/etermax/chat/a/f;-><init>(Lcom/etermax/chat/a/i;)V

    .line 107
    invoke-virtual {v0}, Lcom/etermax/chat/a/f;->f()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/etermax/chat/a/f;->a(Ljava/util/Date;)V

    .line 108
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_2
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 99
    :catch_0
    move-exception v1

    move-object v3, v1

    move-object v1, v2

    .line 100
    :goto_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    move-object v3, v1

    move-object v1, v2

    goto :goto_1

    .line 117
    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v4, v0}, Lcom/etermax/chat/a/j;->a(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 99
    :catch_1
    move-exception v1

    move-object v8, v1

    move-object v1, v3

    move-object v3, v8

    goto :goto_2
.end method

.method public static a(Ljava/util/ArrayList;I)Ljava/util/ArrayList;
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etermax/chat/a/f;",
            ">;I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etermax/chat/a/f;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 18
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 65
    :cond_0
    :goto_0
    return-object p0

    .line 22
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 25
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v7, :cond_8

    .line 27
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    move v3, v0

    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v4

    add-int/lit8 v0, v0, 0x2

    if-lt v3, v0, :cond_5

    .line 28
    add-int/lit8 v0, v3, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/chat/a/f;

    .line 29
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/etermax/chat/a/f;

    .line 30
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/etermax/chat/a/f;

    .line 32
    invoke-virtual {v1, v0}, Lcom/etermax/chat/a/f;->a(Lcom/etermax/chat/a/f;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v1, v2}, Lcom/etermax/chat/a/f;->a(Lcom/etermax/chat/a/f;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 34
    sget-object v0, Lcom/etermax/chat/a/g;->b:Lcom/etermax/chat/a/g;

    invoke-virtual {v1, v0}, Lcom/etermax/chat/a/f;->a(Lcom/etermax/chat/a/g;)V

    .line 27
    :goto_2
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_1

    .line 36
    :cond_2
    invoke-virtual {v1, v0}, Lcom/etermax/chat/a/f;->a(Lcom/etermax/chat/a/f;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v1, v2}, Lcom/etermax/chat/a/f;->a(Lcom/etermax/chat/a/f;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 38
    sget-object v0, Lcom/etermax/chat/a/g;->a:Lcom/etermax/chat/a/g;

    invoke-virtual {v1, v0}, Lcom/etermax/chat/a/f;->a(Lcom/etermax/chat/a/g;)V

    goto :goto_2

    .line 40
    :cond_3
    invoke-virtual {v1, v0}, Lcom/etermax/chat/a/f;->a(Lcom/etermax/chat/a/f;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v1, v2}, Lcom/etermax/chat/a/f;->a(Lcom/etermax/chat/a/f;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 42
    sget-object v0, Lcom/etermax/chat/a/g;->d:Lcom/etermax/chat/a/g;

    invoke-virtual {v1, v0}, Lcom/etermax/chat/a/f;->a(Lcom/etermax/chat/a/g;)V

    goto :goto_2

    .line 45
    :cond_4
    sget-object v0, Lcom/etermax/chat/a/g;->c:Lcom/etermax/chat/a/g;

    invoke-virtual {v1, v0}, Lcom/etermax/chat/a/f;->a(Lcom/etermax/chat/a/g;)V

    goto :goto_2

    .line 50
    :cond_5
    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/chat/a/f;

    invoke-virtual {v0}, Lcom/etermax/chat/a/f;->b()Lcom/etermax/chat/a/i;

    move-result-object v1

    invoke-virtual {p0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/chat/a/f;

    invoke-virtual {v0}, Lcom/etermax/chat/a/f;->b()Lcom/etermax/chat/a/i;

    move-result-object v0

    if-ne v1, v0, :cond_6

    .line 51
    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/chat/a/f;

    sget-object v1, Lcom/etermax/chat/a/g;->a:Lcom/etermax/chat/a/g;

    invoke-virtual {v0, v1}, Lcom/etermax/chat/a/f;->a(Lcom/etermax/chat/a/g;)V

    .line 56
    :goto_3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/chat/a/f;

    invoke-virtual {v0}, Lcom/etermax/chat/a/f;->b()Lcom/etermax/chat/a/i;

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/chat/a/f;

    invoke-virtual {v0}, Lcom/etermax/chat/a/f;->b()Lcom/etermax/chat/a/i;

    move-result-object v0

    if-ne v1, v0, :cond_7

    .line 57
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/chat/a/f;

    sget-object v1, Lcom/etermax/chat/a/g;->c:Lcom/etermax/chat/a/g;

    invoke-virtual {v0, v1}, Lcom/etermax/chat/a/f;->a(Lcom/etermax/chat/a/g;)V

    goto/16 :goto_0

    .line 53
    :cond_6
    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/chat/a/f;

    sget-object v1, Lcom/etermax/chat/a/g;->d:Lcom/etermax/chat/a/g;

    invoke-virtual {v0, v1}, Lcom/etermax/chat/a/f;->a(Lcom/etermax/chat/a/g;)V

    goto :goto_3

    .line 59
    :cond_7
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/chat/a/f;

    sget-object v1, Lcom/etermax/chat/a/g;->d:Lcom/etermax/chat/a/g;

    invoke-virtual {v0, v1}, Lcom/etermax/chat/a/f;->a(Lcom/etermax/chat/a/g;)V

    goto/16 :goto_0

    .line 62
    :cond_8
    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/chat/a/f;

    sget-object v1, Lcom/etermax/chat/a/g;->d:Lcom/etermax/chat/a/g;

    invoke-virtual {v0, v1}, Lcom/etermax/chat/a/f;->a(Lcom/etermax/chat/a/g;)V

    goto/16 :goto_0
.end method
