.class public final Lcom/etermax/preguntados/ui/game/category/o;
.super Lcom/etermax/preguntados/ui/game/category/m;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;
.implements Lorg/a/a/b/b;


# instance fields
.field private final i:Lorg/a/a/b/c;

.field private j:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/category/m;-><init>()V

    .line 34
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/o;->i:Lorg/a/a/b/c;

    .line 131
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 63
    invoke-static {p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/b;)V

    .line 64
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/category/o;->f()V

    .line 65
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/o;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/tools/j/c;->a(Landroid/content/Context;)Lcom/etermax/tools/j/c;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/o;->mAppUtils:Lcom/etermax/tools/j/a;

    .line 66
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/o;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/gamescommon/datasource/i;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/datasource/i;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/o;->mCommonDataSource:Lcom/etermax/gamescommon/datasource/e;

    .line 67
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/o;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/gamescommon/shop/d;->b(Landroid/content/Context;)Lcom/etermax/gamescommon/shop/d;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/o;->mShopManager:Lcom/etermax/gamescommon/shop/c;

    .line 68
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/o;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/gamescommon/social/g;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/social/g;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/o;->f:Lcom/etermax/gamescommon/social/a;

    .line 69
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/o;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/tools/f/d;->c(Landroid/content/Context;)Lcom/etermax/tools/f/d;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/o;->c:Lcom/etermax/tools/f/a;

    .line 70
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/o;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/datasource/e;->a(Landroid/content/Context;)Lcom/etermax/preguntados/datasource/e;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/o;->b:Lcom/etermax/preguntados/datasource/d;

    .line 71
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/o;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/b/b;->a(Landroid/content/Context;)Lcom/etermax/preguntados/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/o;->g:Lcom/etermax/preguntados/b/a;

    .line 72
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/o;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/gamescommon/login/datasource/b;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/login/datasource/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/o;->d:Lcom/etermax/gamescommon/login/datasource/a;

    .line 73
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/o;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/gamescommon/social/j;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/social/j;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/o;->e:Lcom/etermax/gamescommon/social/h;

    .line 74
    return-void
.end method

.method public static e()Lcom/etermax/preguntados/ui/game/category/p;
    .locals 2

    .prologue
    .line 83
    new-instance v0, Lcom/etermax/preguntados/ui/game/category/p;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/etermax/preguntados/ui/game/category/p;-><init>(Lcom/etermax/preguntados/ui/game/category/o$1;)V

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/o;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 124
    if-eqz v0, :cond_0

    .line 125
    const-string v1, "mGameDTO"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    const-string v1, "mGameDTO"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/GameDTO;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/o;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    .line 129
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lorg/a/a/b/a;)V
    .locals 2
    .parameter

    .prologue
    .line 88
    const v0, 0x7f0a020d

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/o;->h:Landroid/widget/ImageView;

    .line 90
    const v0, 0x7f0a020f

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 91
    if-eqz v0, :cond_0

    .line 92
    new-instance v1, Lcom/etermax/preguntados/ui/game/category/o$1;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/game/category/o$1;-><init>(Lcom/etermax/preguntados/ui/game/category/o;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    :cond_0
    const v0, 0x7f0a0209

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_1

    .line 107
    new-instance v1, Lcom/etermax/preguntados/ui/game/category/o$2;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/game/category/o$2;-><init>(Lcom/etermax/preguntados/ui/game/category/o;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    :cond_1
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/o;->loadProducts()V

    .line 120
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/o;->j:Landroid/view/View;

    if-nez v0, :cond_0

    .line 48
    const/4 v0, 0x0

    .line 50
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/o;->j:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/o;->i:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 41
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/game/category/o;->a(Landroid/os/Bundle;)V

    .line 42
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/game/category/m;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 44
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-super {p0, p1, p2, p3}, Lcom/etermax/preguntados/ui/game/category/m;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/o;->j:Landroid/view/View;

    .line 56
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/o;->j:Landroid/view/View;

    if-nez v0, :cond_0

    .line 57
    const v0, 0x7f030097

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/o;->j:Landroid/view/View;

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/o;->j:Landroid/view/View;

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 78
    invoke-super {p0, p1, p2}, Lcom/etermax/preguntados/ui/game/category/m;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 79
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/o;->i:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 80
    return-void
.end method
