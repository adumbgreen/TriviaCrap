.class public Lcom/etermax/preguntados/ui/game/category/widget/CategoryCrownsView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field a:Lcom/etermax/preguntados/c/a/b;

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/widget/CategoryCrownsView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/widget/CategoryCrownsView;->a()V

    .line 35
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/widget/CategoryCrownsView;->b:Ljava/util/HashMap;

    .line 39
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/widget/CategoryCrownsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/c/a/c;->a(Landroid/content/Context;)Lcom/etermax/preguntados/c/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/widget/CategoryCrownsView;->a:Lcom/etermax/preguntados/c/a/b;

    .line 40
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/widget/CategoryCrownsView;->b:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/widget/CategoryCrownsView;->a:Lcom/etermax/preguntados/c/a/b;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/etermax/preguntados/c/a/b;->a(I)Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v1

    sget v2, Lcom/etermax/i;->crown_06:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/widget/CategoryCrownsView;->b:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/widget/CategoryCrownsView;->a:Lcom/etermax/preguntados/c/a/b;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/etermax/preguntados/c/a/b;->a(I)Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v1

    sget v2, Lcom/etermax/i;->crown_05:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/widget/CategoryCrownsView;->b:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/widget/CategoryCrownsView;->a:Lcom/etermax/preguntados/c/a/b;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/etermax/preguntados/c/a/b;->a(I)Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v1

    sget v2, Lcom/etermax/i;->crown_04:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/widget/CategoryCrownsView;->b:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/widget/CategoryCrownsView;->a:Lcom/etermax/preguntados/c/a/b;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/etermax/preguntados/c/a/b;->a(I)Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v1

    sget v2, Lcom/etermax/i;->crown_03:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/widget/CategoryCrownsView;->b:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/widget/CategoryCrownsView;->a:Lcom/etermax/preguntados/c/a/b;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/etermax/preguntados/c/a/b;->a(I)Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v1

    sget v2, Lcom/etermax/i;->crown_02:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/widget/CategoryCrownsView;->b:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/widget/CategoryCrownsView;->a:Lcom/etermax/preguntados/c/a/b;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/etermax/preguntados/c/a/b;->a(I)Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v1

    sget v2, Lcom/etermax/i;->crown_01:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    return-void
.end method

.method public setCrowns(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/widget/CategoryCrownsView;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 51
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/game/category/widget/CategoryCrownsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 52
    iget-object v3, p0, Lcom/etermax/preguntados/ui/game/category/widget/CategoryCrownsView;->a:Lcom/etermax/preguntados/c/a/b;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    invoke-virtual {v3, v0}, Lcom/etermax/preguntados/c/a/b;->d(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Lcom/etermax/preguntados/c/a/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/etermax/preguntados/c/a/f;->d()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 54
    :cond_0
    if-eqz p1, :cond_2

    .line 55
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    .line 56
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/widget/CategoryCrownsView;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 57
    if-eqz v1, :cond_1

    .line 58
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/widget/CategoryCrownsView;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/game/category/widget/CategoryCrownsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 59
    iget-object v3, p0, Lcom/etermax/preguntados/ui/game/category/widget/CategoryCrownsView;->a:Lcom/etermax/preguntados/c/a/b;

    invoke-virtual {v3, v0}, Lcom/etermax/preguntados/c/a/b;->d(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Lcom/etermax/preguntados/c/a/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/etermax/preguntados/c/a/f;->e()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 63
    :cond_2
    return-void
.end method
