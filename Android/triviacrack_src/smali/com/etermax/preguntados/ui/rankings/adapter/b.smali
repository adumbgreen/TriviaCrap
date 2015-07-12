.class public Lcom/etermax/preguntados/ui/rankings/adapter/b;
.super Lcom/etermax/tools/widget/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/widget/a/a",
        "<",
        "Lcom/etermax/preguntados/datasource/dto/UserRankDTO;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/etermax/preguntados/ui/rankings/adapter/c;J)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/tools/widget/a/h",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/UserRankDTO;",
            ">;>;",
            "Lcom/etermax/preguntados/ui/rankings/adapter/c;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/etermax/tools/widget/a/a;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/etermax/tools/widget/a/e;)V

    .line 20
    iget-object v0, p0, Lcom/etermax/preguntados/ui/rankings/adapter/b;->c:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 21
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x2

    .line 42
    invoke-virtual {p0, p1}, Lcom/etermax/preguntados/ui/rankings/adapter/b;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 43
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/etermax/tools/widget/a/a;->getItemViewType(I)I

    move-result v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-super {p0, p1, p2, p3}, Lcom/etermax/tools/widget/a/a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 53
    invoke-virtual {p0, p1}, Lcom/etermax/preguntados/ui/rankings/adapter/b;->getItemViewType(I)I

    move-result v1

    .line 55
    if-nez v2, :cond_0

    .line 56
    iget-object v0, p0, Lcom/etermax/preguntados/ui/rankings/adapter/b;->e:Lcom/etermax/tools/widget/a/e;

    check-cast v0, Lcom/etermax/preguntados/ui/rankings/adapter/c;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/rankings/adapter/b;->d:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/etermax/preguntados/ui/rankings/adapter/c;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    .line 59
    :cond_0
    if-nez v1, :cond_1

    .line 60
    iget-object v0, p0, Lcom/etermax/preguntados/ui/rankings/adapter/b;->e:Lcom/etermax/tools/widget/a/e;

    check-cast v0, Lcom/etermax/preguntados/ui/rankings/adapter/c;

    move-object v1, v2

    check-cast v1, Lcom/etermax/preguntados/ui/rankings/adapter/view/e;

    iget v3, p0, Lcom/etermax/preguntados/ui/rankings/adapter/b;->a:I

    invoke-virtual {v0, v1, v3}, Lcom/etermax/preguntados/ui/rankings/adapter/c;->a(Lcom/etermax/preguntados/ui/rankings/adapter/view/e;I)V

    .line 63
    :cond_1
    return-object v2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 35
    invoke-super {p0}, Lcom/etermax/tools/widget/a/a;->getViewTypeCount()I

    move-result v0

    .line 36
    add-int/lit8 v0, v0, 0x1

    .line 37
    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method
