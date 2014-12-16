.class public Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/a;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/e;->a:Ljava/util/Map;

    .line 17
    return-void
.end method

.method private b(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Ljava/util/List;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/e;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 82
    if-nez v0, :cond_0

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 84
    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/e;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 3

    .prologue
    .line 20
    const/4 v0, 0x0

    .line 21
    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/e;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 22
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    .line 24
    :cond_0
    return v1
.end method

.method public a(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)I
    .locals 5
    .parameter

    .prologue
    .line 42
    const/4 v1, 0x0

    .line 43
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/e;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/e;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/a;

    .line 45
    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/a;->a()Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/n;

    move-result-object v3

    sget-object v4, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/n;->a:Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/n;

    if-eq v3, v4, :cond_1

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/a;->a()Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/n;

    move-result-object v0

    sget-object v3, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/n;->c:Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/n;

    if-eq v0, v3, :cond_1

    .line 46
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    .line 50
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public a(I)Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/a;
    .locals 5
    .parameter

    .prologue
    .line 28
    const/4 v0, 0x0

    .line 29
    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/e;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    .line 30
    invoke-direct {p0, v0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/e;->b(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Ljava/util/List;

    move-result-object v0

    .line 31
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 32
    if-lt p1, v1, :cond_0

    add-int v4, v1, v3

    if-ge p1, v4, :cond_0

    .line 33
    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/a;

    .line 38
    :goto_1
    return-object v0

    .line 35
    :cond_0
    add-int v0, v1, v3

    move v1, v0

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;Ljava/util/Collection;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;",
            "Ljava/util/Collection",
            "<+",
            "Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/e;->b(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Ljava/util/List;

    move-result-object v0

    .line 55
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 56
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 57
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/e;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 91
    return-void
.end method

.method public b(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;Ljava/util/Collection;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;",
            "Ljava/util/Collection",
            "<+",
            "Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/e;->b(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Ljava/util/List;

    move-result-object v1

    .line 62
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    .line 64
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/a;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/a;->a()Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/n;

    move-result-object v0

    sget-object v3, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/n;->c:Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/n;

    if-ne v0, v3, :cond_0

    .line 65
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 69
    :cond_0
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/a;

    .line 70
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 71
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 74
    :cond_2
    return-void
.end method
