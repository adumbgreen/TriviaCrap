.class public Lcom/etermax/preguntados/ui/rankings/i;
.super Lcom/etermax/tools/navigation/b;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/preguntados/ui/rankings/a;
.implements Lcom/etermax/preguntados/ui/rankings/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/navigation/b",
        "<",
        "Lcom/etermax/preguntados/ui/rankings/j;",
        ">;",
        "Lcom/etermax/preguntados/ui/rankings/a;",
        "Lcom/etermax/preguntados/ui/rankings/b;"
    }
.end annotation


# instance fields
.field a:Lcom/etermax/preguntados/datasource/dto/RanksDTO;

.field b:I

.field c:Landroid/widget/ListView;

.field protected d:Lcom/etermax/preguntados/ui/rankings/adapter/b;

.field protected e:Lcom/etermax/preguntados/ui/rankings/adapter/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/etermax/tools/navigation/b;-><init>()V

    .line 45
    return-void
.end method

.method public static a(ILcom/etermax/preguntados/datasource/dto/RanksDTO;)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-static {}, Lcom/etermax/preguntados/ui/rankings/k;->e()Lcom/etermax/preguntados/ui/rankings/l;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/etermax/preguntados/ui/rankings/l;->a(I)Lcom/etermax/preguntados/ui/rankings/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/etermax/preguntados/ui/rankings/l;->a(Lcom/etermax/preguntados/datasource/dto/RanksDTO;)Lcom/etermax/preguntados/ui/rankings/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/rankings/l;->a()Lcom/etermax/preguntados/ui/rankings/i;

    move-result-object v0

    return-object v0
.end method

.method private e()V
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 98
    iget-object v0, p0, Lcom/etermax/preguntados/ui/rankings/i;->a:Lcom/etermax/preguntados/datasource/dto/RanksDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/RanksDTO;->getUserRanks()Ljava/util/List;

    move-result-object v4

    .line 99
    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 101
    const/4 v0, 0x0

    move v1, v0

    move v2, v3

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 102
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/UserRankDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/UserRankDTO;->isMe()Z

    move-result v0

    if-eqz v0, :cond_0

    move v2, v1

    .line 101
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 107
    :cond_1
    if-eq v2, v3, :cond_2

    .line 108
    iget-object v0, p0, Lcom/etermax/preguntados/ui/rankings/i;->c:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 109
    new-instance v1, Lcom/etermax/preguntados/ui/rankings/i$2;

    invoke-direct {v1, p0, v2, v0}, Lcom/etermax/preguntados/ui/rankings/i$2;-><init>(Lcom/etermax/preguntados/ui/rankings/i;ILandroid/view/ViewTreeObserver;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 132
    :cond_2
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/etermax/preguntados/ui/rankings/i;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/rankings/j;

    invoke-interface {v0}, Lcom/etermax/preguntados/ui/rankings/j;->b()V

    .line 152
    return-void
.end method

.method public a(Ljava/lang/Long;)V
    .locals 1
    .parameter

    .prologue
    .line 145
    iget-object v0, p0, Lcom/etermax/preguntados/ui/rankings/i;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/rankings/j;

    invoke-interface {v0, p1}, Lcom/etermax/preguntados/ui/rankings/j;->a(Ljava/lang/Long;)V

    .line 146
    return-void
.end method

.method public b()Lcom/etermax/preguntados/ui/rankings/j;
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lcom/etermax/preguntados/ui/rankings/i$1;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/rankings/i$1;-><init>(Lcom/etermax/preguntados/ui/rankings/i;)V

    return-object v0
.end method

.method protected c()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 67
    iget v0, p0, Lcom/etermax/preguntados/ui/rankings/i;->b:I

    if-ne v0, v5, :cond_0

    .line 68
    new-instance v0, Lcom/etermax/preguntados/ui/rankings/adapter/c;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/rankings/i;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/etermax/preguntados/ui/rankings/adapter/c;-><init>(Landroid/content/Context;Lcom/etermax/preguntados/ui/rankings/b;)V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/rankings/i;->e:Lcom/etermax/preguntados/ui/rankings/adapter/c;

    .line 74
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 75
    iget-object v0, p0, Lcom/etermax/preguntados/ui/rankings/i;->a:Lcom/etermax/preguntados/datasource/dto/RanksDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/RanksDTO;->getUserRanks()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/etermax/preguntados/ui/rankings/i;->a:Lcom/etermax/preguntados/datasource/dto/RanksDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/RanksDTO;->getUserRanks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/etermax/preguntados/ui/rankings/i;->a:Lcom/etermax/preguntados/datasource/dto/RanksDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/RanksDTO;->getUserRanks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/UserRankDTO;

    .line 77
    new-instance v3, Lcom/etermax/tools/widget/a/g;

    invoke-direct {v3, v0, v4}, Lcom/etermax/tools/widget/a/g;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 70
    :cond_0
    new-instance v0, Lcom/etermax/preguntados/ui/rankings/adapter/a;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/rankings/i;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/preguntados/ui/rankings/i;->a:Lcom/etermax/preguntados/datasource/dto/RanksDTO;

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/RanksDTO;->getRemainingTime()J

    move-result-wide v2

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/etermax/preguntados/ui/rankings/adapter/a;-><init>(Landroid/content/Context;Lcom/etermax/preguntados/ui/rankings/a;J)V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/rankings/i;->e:Lcom/etermax/preguntados/ui/rankings/adapter/c;

    goto :goto_0

    .line 82
    :cond_1
    new-instance v0, Lcom/etermax/tools/widget/a/h;

    invoke-direct {v0, v1, v4, v5}, Lcom/etermax/tools/widget/a/h;-><init>(Ljava/util/List;IZ)V

    .line 85
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 86
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    new-instance v0, Lcom/etermax/preguntados/ui/rankings/adapter/b;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/rankings/i;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/etermax/preguntados/ui/rankings/i;->e:Lcom/etermax/preguntados/ui/rankings/adapter/c;

    iget-object v4, p0, Lcom/etermax/preguntados/ui/rankings/i;->a:Lcom/etermax/preguntados/datasource/dto/RanksDTO;

    invoke-virtual {v4}, Lcom/etermax/preguntados/datasource/dto/RanksDTO;->getRemainingTime()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/etermax/preguntados/ui/rankings/adapter/b;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/etermax/preguntados/ui/rankings/adapter/c;J)V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/rankings/i;->d:Lcom/etermax/preguntados/ui/rankings/adapter/b;

    .line 89
    return-void
.end method

.method protected d()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/etermax/preguntados/ui/rankings/i;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/rankings/i;->d:Lcom/etermax/preguntados/ui/rankings/adapter/b;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 94
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/rankings/i;->e()V

    .line 95
    return-void
.end method

.method public synthetic getDummyCallbacks()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/rankings/i;->b()Lcom/etermax/preguntados/ui/rankings/j;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/etermax/preguntados/ui/rankings/i;->e:Lcom/etermax/preguntados/ui/rankings/adapter/c;

    instance-of v0, v0, Lcom/etermax/preguntados/ui/rankings/adapter/a;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/etermax/preguntados/ui/rankings/i;->e:Lcom/etermax/preguntados/ui/rankings/adapter/c;

    check-cast v0, Lcom/etermax/preguntados/ui/rankings/adapter/a;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/rankings/adapter/a;->a()V

    .line 139
    :cond_0
    invoke-super {p0}, Lcom/etermax/tools/navigation/b;->onDestroy()V

    .line 140
    return-void
.end method
