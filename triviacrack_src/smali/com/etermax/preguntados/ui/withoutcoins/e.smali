.class public final Lcom/etermax/preguntados/ui/withoutcoins/e;
.super Lcom/etermax/preguntados/ui/withoutcoins/a;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;
.implements Lorg/a/a/b/b;


# instance fields
.field private final f:Lorg/a/a/b/c;

.field private g:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/withoutcoins/a;-><init>()V

    .line 29
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/withoutcoins/e;->f:Lorg/a/a/b/c;

    .line 96
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 57
    invoke-static {p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/b;)V

    .line 58
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/withoutcoins/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/tools/j/c;->a(Landroid/content/Context;)Lcom/etermax/tools/j/c;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/withoutcoins/e;->mAppUtils:Lcom/etermax/tools/j/a;

    .line 59
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/withoutcoins/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/gamescommon/shop/d;->b(Landroid/content/Context;)Lcom/etermax/gamescommon/shop/d;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/withoutcoins/e;->mShopManager:Lcom/etermax/gamescommon/shop/c;

    .line 60
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/withoutcoins/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/gamescommon/datasource/i;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/datasource/i;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/withoutcoins/e;->mCommonDataSource:Lcom/etermax/gamescommon/datasource/e;

    .line 61
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/withoutcoins/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/datasource/e;->a(Landroid/content/Context;)Lcom/etermax/preguntados/datasource/e;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/withoutcoins/e;->a:Lcom/etermax/preguntados/datasource/d;

    .line 62
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/withoutcoins/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/tools/f/d;->c(Landroid/content/Context;)Lcom/etermax/tools/f/d;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/withoutcoins/e;->b:Lcom/etermax/tools/f/a;

    .line 63
    return-void
.end method

.method public static d()Lcom/etermax/preguntados/ui/withoutcoins/f;
    .locals 2

    .prologue
    .line 72
    new-instance v0, Lcom/etermax/preguntados/ui/withoutcoins/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/etermax/preguntados/ui/withoutcoins/f;-><init>(Lcom/etermax/preguntados/ui/withoutcoins/e$1;)V

    return-object v0
.end method


# virtual methods
.method public a(Lorg/a/a/b/a;)V
    .locals 2
    .parameter

    .prologue
    .line 77
    const v0, 0x7f0a056c

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/withoutcoins/e;->c:Landroid/widget/LinearLayout;

    .line 79
    const v0, 0x7f0a056d

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_0

    .line 81
    new-instance v1, Lcom/etermax/preguntados/ui/withoutcoins/e$1;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/withoutcoins/e$1;-><init>(Lcom/etermax/preguntados/ui/withoutcoins/e;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/withoutcoins/e;->loadProducts()V

    .line 94
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/etermax/preguntados/ui/withoutcoins/e;->g:Landroid/view/View;

    if-nez v0, :cond_0

    .line 42
    const/4 v0, 0x0

    .line 44
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/withoutcoins/e;->g:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/etermax/preguntados/ui/withoutcoins/e;->f:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 35
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/withoutcoins/e;->a(Landroid/os/Bundle;)V

    .line 36
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/withoutcoins/a;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 38
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-super {p0, p1, p2, p3}, Lcom/etermax/preguntados/ui/withoutcoins/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/withoutcoins/e;->g:Landroid/view/View;

    .line 50
    iget-object v0, p0, Lcom/etermax/preguntados/ui/withoutcoins/e;->g:Landroid/view/View;

    if-nez v0, :cond_0

    .line 51
    const v0, 0x7f03014d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/withoutcoins/e;->g:Landroid/view/View;

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/withoutcoins/e;->g:Landroid/view/View;

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-super {p0, p1, p2}, Lcom/etermax/preguntados/ui/withoutcoins/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 68
    iget-object v0, p0, Lcom/etermax/preguntados/ui/withoutcoins/e;->f:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 69
    return-void
.end method
