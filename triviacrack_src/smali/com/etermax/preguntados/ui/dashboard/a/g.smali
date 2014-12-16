.class public final Lcom/etermax/preguntados/ui/dashboard/a/g;
.super Lcom/etermax/preguntados/ui/dashboard/a/e;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;
.implements Lorg/a/a/b/b;


# instance fields
.field private final h:Lorg/a/a/b/c;

.field private i:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/dashboard/a/e;-><init>()V

    .line 33
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/a/g;->h:Lorg/a/a/b/c;

    .line 119
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 61
    invoke-static {p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/b;)V

    .line 62
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/a/g;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/gamescommon/shop/d;->b(Landroid/content/Context;)Lcom/etermax/gamescommon/shop/d;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/a/g;->mShopManager:Lcom/etermax/gamescommon/shop/c;

    .line 63
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/a/g;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/gamescommon/datasource/i;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/datasource/i;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/a/g;->mCommonDataSource:Lcom/etermax/gamescommon/datasource/e;

    .line 64
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/a/g;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/tools/j/c;->a(Landroid/content/Context;)Lcom/etermax/tools/j/c;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/a/g;->mAppUtils:Lcom/etermax/tools/j/a;

    .line 65
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/a/g;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/b/b;->a(Landroid/content/Context;)Lcom/etermax/preguntados/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/a/g;->f:Lcom/etermax/preguntados/b/a;

    .line 66
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/a/g;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/datasource/e;->a(Landroid/content/Context;)Lcom/etermax/preguntados/datasource/e;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/a/g;->e:Lcom/etermax/preguntados/datasource/d;

    .line 67
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/a/g;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/tools/f/d;->c(Landroid/content/Context;)Lcom/etermax/tools/f/d;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/a/g;->a:Lcom/etermax/tools/f/a;

    .line 68
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/a/g;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/gamescommon/social/j;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/social/j;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/a/g;->d:Lcom/etermax/gamescommon/social/h;

    .line 69
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/a/g;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/gamescommon/social/g;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/social/g;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/a/g;->b:Lcom/etermax/gamescommon/social/a;

    .line 70
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/a/g;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/gamescommon/login/datasource/b;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/login/datasource/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/a/g;->c:Lcom/etermax/gamescommon/login/datasource/a;

    .line 71
    return-void
.end method

.method public static e()Lcom/etermax/preguntados/ui/dashboard/a/h;
    .locals 2

    .prologue
    .line 80
    new-instance v0, Lcom/etermax/preguntados/ui/dashboard/a/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/etermax/preguntados/ui/dashboard/a/h;-><init>(Lcom/etermax/preguntados/ui/dashboard/a/g$1;)V

    return-object v0
.end method


# virtual methods
.method public a(Lorg/a/a/b/a;)V
    .locals 2
    .parameter

    .prologue
    .line 85
    const v0, 0x7f0a0166

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/a/g;->g:Landroid/widget/ImageView;

    .line 87
    const v0, 0x7f0a0150

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 88
    if-eqz v0, :cond_0

    .line 89
    new-instance v1, Lcom/etermax/preguntados/ui/dashboard/a/g$1;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/dashboard/a/g$1;-><init>(Lcom/etermax/preguntados/ui/dashboard/a/g;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    :cond_0
    const v0, 0x7f0a0162

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 103
    if-eqz v0, :cond_1

    .line 104
    new-instance v1, Lcom/etermax/preguntados/ui/dashboard/a/g$2;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/dashboard/a/g$2;-><init>(Lcom/etermax/preguntados/ui/dashboard/a/g;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    :cond_1
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/a/g;->loadProducts()V

    .line 117
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/a/g;->i:Landroid/view/View;

    if-nez v0, :cond_0

    .line 46
    const/4 v0, 0x0

    .line 48
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/a/g;->i:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/a/g;->h:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 39
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/dashboard/a/g;->a(Landroid/os/Bundle;)V

    .line 40
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/dashboard/a/e;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 42
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-super {p0, p1, p2, p3}, Lcom/etermax/preguntados/ui/dashboard/a/e;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/a/g;->i:Landroid/view/View;

    .line 54
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/a/g;->i:Landroid/view/View;

    if-nez v0, :cond_0

    .line 55
    const v0, 0x7f030064

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/a/g;->i:Landroid/view/View;

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/a/g;->i:Landroid/view/View;

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 75
    invoke-super {p0, p1, p2}, Lcom/etermax/preguntados/ui/dashboard/a/e;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 76
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/a/g;->h:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 77
    return-void
.end method
