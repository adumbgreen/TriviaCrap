.class public final Lcom/etermax/preguntados/ui/game/category/g;
.super Lcom/etermax/preguntados/ui/game/category/e;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;
.implements Lorg/a/a/b/b;


# instance fields
.field private final g:Lorg/a/a/b/c;

.field private h:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/category/e;-><init>()V

    .line 28
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/g;->g:Lorg/a/a/b/c;

    .line 123
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 58
    invoke-static {p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/b;)V

    .line 59
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/category/g;->f()V

    .line 60
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/g;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/tools/f/d;->c(Landroid/content/Context;)Lcom/etermax/tools/f/d;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/g;->c:Lcom/etermax/tools/f/a;

    .line 61
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/g;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/g/b;->a(Landroid/content/Context;)Lcom/etermax/preguntados/g/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/g;->d:Lcom/etermax/preguntados/g/a;

    .line 62
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/g;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/ui/d/j;->g(Landroid/content/Context;)Lcom/etermax/preguntados/ui/d/j;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/g;->e:Lcom/etermax/preguntados/ui/d/i;

    .line 63
    return-void
.end method

.method public static e()Lcom/etermax/preguntados/ui/game/category/h;
    .locals 2

    .prologue
    .line 72
    new-instance v0, Lcom/etermax/preguntados/ui/game/category/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/etermax/preguntados/ui/game/category/h;-><init>(Lcom/etermax/preguntados/ui/game/category/g$1;)V

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/g;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 113
    if-eqz v1, :cond_1

    .line 114
    const-string v0, "mGameDTO"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    const-string v0, "mGameDTO"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/GameDTO;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/g;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    .line 117
    :cond_0
    const-string v0, "mExtraShots"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    const-string v0, "mExtraShots"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/etermax/preguntados/ui/game/category/g;->b:I

    .line 121
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lorg/a/a/b/a;)V
    .locals 2
    .parameter

    .prologue
    .line 77
    const v0, 0x7f0a01f6

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/g;->f:Landroid/widget/ImageView;

    .line 79
    const v0, 0x7f0a01ef

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_0

    .line 81
    new-instance v1, Lcom/etermax/preguntados/ui/game/category/g$1;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/game/category/g$1;-><init>(Lcom/etermax/preguntados/ui/game/category/g;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    :cond_0
    const v0, 0x7f0a01f0

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 95
    if-eqz v0, :cond_1

    .line 96
    new-instance v1, Lcom/etermax/preguntados/ui/game/category/g$2;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/game/category/g$2;-><init>(Lcom/etermax/preguntados/ui/game/category/g;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    :cond_1
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/g;->a()V

    .line 109
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/g;->h:Landroid/view/View;

    if-nez v0, :cond_0

    .line 43
    const/4 v0, 0x0

    .line 45
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/g;->h:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/g;->g:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 36
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/game/category/g;->a(Landroid/os/Bundle;)V

    .line 37
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/game/category/e;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 39
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-super {p0, p1, p2, p3}, Lcom/etermax/preguntados/ui/game/category/e;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/g;->h:Landroid/view/View;

    .line 51
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/g;->h:Landroid/view/View;

    if-nez v0, :cond_0

    .line 52
    const v0, 0x7f030093

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/g;->h:Landroid/view/View;

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/g;->h:Landroid/view/View;

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-super {p0, p1, p2}, Lcom/etermax/preguntados/ui/game/category/e;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 68
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/g;->g:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 69
    return-void
.end method
