.class public final Lcom/etermax/preguntados/ui/game/category/c;
.super Lcom/etermax/preguntados/ui/game/category/a;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;
.implements Lorg/a/a/b/b;


# instance fields
.field private final o:Lorg/a/a/b/c;

.field private p:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/category/a;-><init>()V

    .line 32
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/c;->o:Lorg/a/a/b/c;

    .line 127
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 61
    invoke-static {p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/b;)V

    .line 62
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/category/c;->f()V

    .line 63
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/ui/d/j;->g(Landroid/content/Context;)Lcom/etermax/preguntados/ui/d/j;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/c;->d:Lcom/etermax/preguntados/ui/d/i;

    .line 64
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/datasource/e;->a(Landroid/content/Context;)Lcom/etermax/preguntados/datasource/e;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/c;->a:Lcom/etermax/preguntados/datasource/d;

    .line 65
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/g/b;->a(Landroid/content/Context;)Lcom/etermax/preguntados/g/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/c;->c:Lcom/etermax/preguntados/g/a;

    .line 66
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/b/b;->a(Landroid/content/Context;)Lcom/etermax/preguntados/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/c;->e:Lcom/etermax/preguntados/b/a;

    .line 67
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/c/a/c;->a(Landroid/content/Context;)Lcom/etermax/preguntados/c/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/c;->f:Lcom/etermax/preguntados/c/a/b;

    .line 68
    return-void
.end method

.method public static e()Lcom/etermax/preguntados/ui/game/category/d;
    .locals 2

    .prologue
    .line 77
    new-instance v0, Lcom/etermax/preguntados/ui/game/category/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/etermax/preguntados/ui/game/category/d;-><init>(Lcom/etermax/preguntados/ui/game/category/c$1;)V

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/c;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 120
    if-eqz v0, :cond_0

    .line 121
    const-string v1, "mGameDTO"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    const-string v1, "mGameDTO"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/GameDTO;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/c;->b:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    .line 125
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lorg/a/a/b/a;)V
    .locals 2
    .parameter

    .prologue
    .line 82
    const v0, 0x7f0a01eb

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/c;->i:Landroid/widget/TextView;

    .line 83
    const v0, 0x7f0a01ec

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/c;->g:Landroid/widget/RelativeLayout;

    .line 84
    const v0, 0x7f0a01ed

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/c;->h:Landroid/widget/ImageView;

    .line 86
    const v0, 0x7f0a01e9

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 87
    if-eqz v0, :cond_0

    .line 88
    new-instance v1, Lcom/etermax/preguntados/ui/game/category/c$1;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/game/category/c$1;-><init>(Lcom/etermax/preguntados/ui/game/category/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    :cond_0
    const v0, 0x7f0a01e8

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 102
    if-eqz v0, :cond_1

    .line 103
    new-instance v1, Lcom/etermax/preguntados/ui/game/category/c$2;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/game/category/c$2;-><init>(Lcom/etermax/preguntados/ui/game/category/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    :cond_1
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/c;->a()V

    .line 116
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/c;->p:Landroid/view/View;

    if-nez v0, :cond_0

    .line 46
    const/4 v0, 0x0

    .line 48
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/c;->p:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/c;->o:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 39
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/game/category/c;->a(Landroid/os/Bundle;)V

    .line 40
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/game/category/a;->onCreate(Landroid/os/Bundle;)V

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
    invoke-super {p0, p1, p2, p3}, Lcom/etermax/preguntados/ui/game/category/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/c;->p:Landroid/view/View;

    .line 54
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/c;->p:Landroid/view/View;

    if-nez v0, :cond_0

    .line 55
    const v0, 0x7f030092

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/c;->p:Landroid/view/View;

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/c;->p:Landroid/view/View;

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-super {p0, p1, p2}, Lcom/etermax/preguntados/ui/game/category/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 73
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/c;->o:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 74
    return-void
.end method
