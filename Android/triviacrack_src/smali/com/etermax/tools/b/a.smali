.class public Lcom/etermax/tools/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Landroid/content/Context;

.field b:Lcom/etermax/tools/f/a;

.field private c:Lcom/etermax/tools/b/d;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/etermax/tools/b/b;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/etermax/tools/b/a;->d:Ljava/util/Map;

    .line 162
    return-void
.end method

.method private a(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 159
    iget-object v0, p0, Lcom/etermax/tools/b/a;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Class;Ljava/lang/Exception;)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Exception;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 62
    instance-of v1, p2, Lcom/etermax/tools/b/e;

    .line 64
    if-eqz v1, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/etermax/tools/b/e;

    invoke-interface {v0}, Lcom/etermax/tools/b/e;->c()I

    move-result v0

    .line 66
    :goto_0
    new-instance v2, Lcom/etermax/tools/b/b;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v2, p1, v3, v0}, Lcom/etermax/tools/b/b;-><init>(Ljava/lang/Class;Ljava/lang/Class;I)V

    .line 67
    new-instance v3, Lcom/etermax/tools/b/b;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/etermax/tools/b/b;-><init>(Ljava/lang/Class;I)V

    .line 69
    iget-object v0, p0, Lcom/etermax/tools/b/a;->d:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/etermax/tools/b/a;->d:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/etermax/tools/b/a;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 91
    :goto_1
    return-object v0

    .line 64
    :cond_0
    sget v0, Lcom/etermax/tools/b/b;->a:I

    goto :goto_0

    .line 73
    :cond_1
    if-eqz v1, :cond_2

    move-object v0, p2

    .line 74
    check-cast v0, Lcom/etermax/tools/b/e;

    invoke-interface {v0}, Lcom/etermax/tools/b/e;->b()I

    move-result v0

    .line 75
    if-eqz v0, :cond_2

    .line 76
    invoke-direct {p0, v0}, Lcom/etermax/tools/b/a;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 80
    :cond_2
    iget-object v0, p0, Lcom/etermax/tools/b/a;->d:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 81
    iget-object v0, p0, Lcom/etermax/tools/b/a;->d:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/etermax/tools/b/a;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 84
    :cond_3
    if-eqz v1, :cond_4

    move-object v0, p2

    .line 85
    check-cast v0, Lcom/etermax/tools/b/e;

    invoke-interface {v0}, Lcom/etermax/tools/b/e;->a()I

    move-result v0

    .line 86
    if-eqz v0, :cond_4

    .line 87
    invoke-direct {p0, v0}, Lcom/etermax/tools/b/a;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 90
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 91
    iget-object v0, p0, Lcom/etermax/tools/b/a;->c:Lcom/etermax/tools/b/d;

    invoke-interface {v0}, Lcom/etermax/tools/b/d;->m()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/etermax/tools/b/a;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public a()V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/etermax/tools/b/a;->a:Landroid/content/Context;

    instance-of v0, v0, Lcom/etermax/tools/b/d;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/etermax/tools/b/a;->a:Landroid/content/Context;

    check-cast v0, Lcom/etermax/tools/b/d;

    iput-object v0, p0, Lcom/etermax/tools/b/a;->c:Lcom/etermax/tools/b/d;

    .line 39
    return-void

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Application must implement IApplicationErrorMapper"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/lang/Class;I)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Exception;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/etermax/tools/b/a;->d:Ljava/util/Map;

    new-instance v1, Lcom/etermax/tools/b/b;

    invoke-direct {v1, p1}, Lcom/etermax/tools/b/b;-><init>(Ljava/lang/Class;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    return-void
.end method

.method public a(Ljava/lang/Class;Ljava/lang/Exception;Z)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Exception;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 95
    .line 97
    instance-of v0, p2, Lorg/b/e/a/d;

    if-eqz v0, :cond_1

    .line 98
    check-cast p2, Lorg/b/e/a/d;

    .line 99
    new-instance v0, Lcom/etermax/tools/f/a/b;

    const-string v1, "error_server_500"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lorg/b/e/a/d;->a()Lorg/b/c/i;

    move-result-object v3

    invoke-virtual {v3}, Lorg/b/c/i;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lorg/b/e/a/d;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/etermax/tools/f/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v1, p0, Lcom/etermax/tools/b/a;->b:Lcom/etermax/tools/f/a;

    invoke-virtual {p2}, Lorg/b/e/a/d;->a()Lorg/b/c/i;

    move-result-object v2

    invoke-virtual {v2}, Lorg/b/c/i;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lorg/b/e/a/d;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/etermax/tools/f/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :goto_0
    if-eqz v0, :cond_0

    .line 126
    iget-object v1, p0, Lcom/etermax/tools/b/a;->b:Lcom/etermax/tools/f/a;

    invoke-virtual {v1, v0}, Lcom/etermax/tools/f/a;->a(Lcom/etermax/tools/f/a/a;)V

    .line 128
    :cond_0
    return-void

    .line 101
    :cond_1
    instance-of v0, p2, Lorg/b/e/a/g;

    if-eqz v0, :cond_3

    .line 102
    check-cast p2, Lorg/b/e/a/g;

    .line 103
    invoke-virtual {p2}, Lorg/b/e/a/g;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lorg/b/e/a/g;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_1
    check-cast v0, Ljava/lang/String;

    .line 104
    new-instance v1, Lcom/etermax/tools/f/a/b;

    const-string v2, "error_client"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-1_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/etermax/tools/f/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 105
    goto :goto_0

    .line 103
    :cond_2
    const-class v0, Lorg/b/e/a/g;

    goto :goto_1

    .line 106
    :cond_3
    const/4 v0, -0x1

    .line 107
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 109
    instance-of v2, p2, Lcom/etermax/tools/a/c/b;

    if-eqz v2, :cond_4

    move-object v0, p2

    .line 110
    check-cast v0, Lcom/etermax/tools/a/c/b;

    invoke-virtual {v0}, Lcom/etermax/tools/a/c/b;->c()I

    move-result v0

    move-object v6, v1

    move v1, v0

    move-object v0, v6

    .line 116
    :goto_2
    invoke-virtual {p0, p1, p2}, Lcom/etermax/tools/b/a;->b(Ljava/lang/Class;Ljava/lang/Exception;)Z

    move-result v2

    .line 118
    if-eqz p3, :cond_5

    if-nez v2, :cond_5

    .line 119
    new-instance v2, Lcom/etermax/tools/f/a/b;

    const-string v3, "error_api_unhandled"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/etermax/tools/f/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v3, p0, Lcom/etermax/tools/b/a;->b:Lcom/etermax/tools/f/a;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v0, v4}, Lcom/etermax/tools/f/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto/16 :goto_0

    .line 111
    :cond_4
    instance-of v2, p2, Lorg/b/e/a/b;

    if-eqz v2, :cond_6

    move-object v0, p2

    .line 112
    check-cast v0, Lorg/b/e/a/b;

    invoke-virtual {v0}, Lorg/b/e/a/b;->a()Lorg/b/c/i;

    move-result-object v0

    invoke-virtual {v0}, Lorg/b/c/i;->a()I

    move-result v1

    move-object v0, p2

    .line 113
    check-cast v0, Lorg/b/e/a/b;

    invoke-virtual {v0}, Lorg/b/e/a/b;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 122
    :cond_5
    new-instance v2, Lcom/etermax/tools/f/a/b;

    const-string v3, "error_api_handled"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/etermax/tools/f/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto/16 :goto_0

    :cond_6
    move-object v6, v1

    move v1, v0

    move-object v0, v6

    goto :goto_2
.end method

.method public b(Ljava/lang/Class;Ljava/lang/Exception;)Z
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Exception;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 131
    instance-of v3, p2, Lcom/etermax/tools/b/e;

    .line 133
    if-eqz v3, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/etermax/tools/b/e;

    invoke-interface {v0}, Lcom/etermax/tools/b/e;->c()I

    move-result v0

    .line 135
    :goto_0
    new-instance v4, Lcom/etermax/tools/b/b;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v4, p1, v5, v0}, Lcom/etermax/tools/b/b;-><init>(Ljava/lang/Class;Ljava/lang/Class;I)V

    .line 136
    new-instance v5, Lcom/etermax/tools/b/b;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Lcom/etermax/tools/b/b;-><init>(Ljava/lang/Class;I)V

    .line 138
    iget-object v0, p0, Lcom/etermax/tools/b/a;->d:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 155
    :goto_1
    return v0

    .line 133
    :cond_0
    sget v0, Lcom/etermax/tools/b/b;->a:I

    goto :goto_0

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/etermax/tools/b/a;->d:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 143
    goto :goto_1

    .line 146
    :cond_2
    if-eqz v3, :cond_4

    .line 147
    check-cast p2, Lcom/etermax/tools/b/e;

    invoke-interface {p2}, Lcom/etermax/tools/b/e;->b()I

    move-result v0

    .line 148
    if-eqz v0, :cond_3

    move v0, v1

    .line 149
    goto :goto_1

    :cond_3
    move v0, v2

    .line 151
    goto :goto_1

    :cond_4
    move v0, v2

    .line 155
    goto :goto_1
.end method
