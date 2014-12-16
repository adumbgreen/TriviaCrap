.class public final Lcom/etermax/preguntados/ui/c/c;
.super Lcom/etermax/preguntados/ui/c/b;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;
.implements Lorg/a/a/b/b;


# instance fields
.field private final d:Lorg/a/a/b/c;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/c/b;-><init>()V

    .line 28
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/c/c;->d:Lorg/a/a/b/c;

    .line 93
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 53
    invoke-static {p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/b;)V

    .line 54
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/c/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/gamescommon/datasource/i;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/datasource/i;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/c/c;->mCommonDataSource:Lcom/etermax/gamescommon/datasource/e;

    .line 55
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/c/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/tools/j/c;->a(Landroid/content/Context;)Lcom/etermax/tools/j/c;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/c/c;->mAppUtils:Lcom/etermax/tools/j/a;

    .line 56
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/c/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/gamescommon/promotion/PromotionsManager_;->getInstance_(Landroid/content/Context;)Lcom/etermax/gamescommon/promotion/PromotionsManager_;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/c/c;->mPromotionsManager:Lcom/etermax/gamescommon/promotion/PromotionsManager;

    .line 57
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/c/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/gamescommon/shop/d;->b(Landroid/content/Context;)Lcom/etermax/gamescommon/shop/d;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/c/c;->mShopManager:Lcom/etermax/gamescommon/shop/c;

    .line 58
    return-void
.end method

.method public static c()Lcom/etermax/preguntados/ui/c/d;
    .locals 2

    .prologue
    .line 67
    new-instance v0, Lcom/etermax/preguntados/ui/c/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/etermax/preguntados/ui/c/d;-><init>(Lcom/etermax/preguntados/ui/c/c$1;)V

    return-object v0
.end method


# virtual methods
.method public a(Lorg/a/a/b/a;)V
    .locals 2
    .parameter

    .prologue
    .line 72
    const v0, 0x7f0a03d9

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/c/c;->c:Landroid/widget/TextView;

    .line 73
    const v0, 0x7f0a03de

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/c/c;->a:Landroid/widget/Button;

    .line 74
    const v0, 0x7f0a03e2

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/c/c;->b:Landroid/widget/Button;

    .line 76
    const v0, 0x7f0a03d5

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 77
    if-eqz v0, :cond_0

    .line 78
    new-instance v1, Lcom/etermax/preguntados/ui/c/c$1;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/c/c$1;-><init>(Lcom/etermax/preguntados/ui/c/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/c/c;->loadProducts()V

    .line 91
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/etermax/preguntados/ui/c/c;->e:Landroid/view/View;

    if-nez v0, :cond_0

    .line 41
    const/4 v0, 0x0

    .line 43
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/c/c;->e:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/etermax/preguntados/ui/c/c;->d:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 34
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/c/c;->a(Landroid/os/Bundle;)V

    .line 35
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/c/b;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 37
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-super {p0, p1, p2, p3}, Lcom/etermax/preguntados/ui/c/b;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/c/c;->e:Landroid/view/View;

    .line 49
    iget-object v0, p0, Lcom/etermax/preguntados/ui/c/c;->e:Landroid/view/View;

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-super {p0, p1, p2}, Lcom/etermax/preguntados/ui/c/b;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 63
    iget-object v0, p0, Lcom/etermax/preguntados/ui/c/c;->d:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 64
    return-void
.end method
