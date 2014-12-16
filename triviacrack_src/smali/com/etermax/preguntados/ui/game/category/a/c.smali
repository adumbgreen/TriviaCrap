.class public final Lcom/etermax/preguntados/ui/game/category/a/c;
.super Lcom/etermax/preguntados/ui/game/category/a/a;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;
.implements Lorg/a/a/b/b;


# instance fields
.field private final l:Lorg/a/a/b/c;

.field private m:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/category/a/a;-><init>()V

    .line 29
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a/c;->l:Lorg/a/a/b/c;

    .line 155
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 56
    invoke-static {p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/b;)V

    .line 57
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/category/a/c;->h()V

    .line 58
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/a/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/sharing/o;->a(Landroid/content/Context;)Lcom/etermax/preguntados/sharing/o;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a/c;->e:Lcom/etermax/preguntados/sharing/m;

    .line 59
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/a/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/gamescommon/login/datasource/b;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/login/datasource/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a/c;->c:Lcom/etermax/gamescommon/login/datasource/a;

    .line 60
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/a/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/g/b;->a(Landroid/content/Context;)Lcom/etermax/preguntados/g/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a/c;->d:Lcom/etermax/preguntados/g/a;

    .line 61
    return-void
.end method

.method public static g()Lcom/etermax/preguntados/ui/game/category/a/d;
    .locals 2

    .prologue
    .line 70
    new-instance v0, Lcom/etermax/preguntados/ui/game/category/a/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/etermax/preguntados/ui/game/category/a/d;-><init>(Lcom/etermax/preguntados/ui/game/category/a/c$1;)V

    return-object v0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/a/c;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 145
    if-eqz v1, :cond_1

    .line 146
    const-string v0, "mGameDTO"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    const-string v0, "mGameDTO"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/GameDTO;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a/c;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    .line 149
    :cond_0
    const-string v0, "mTieBreakDuel"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    const-string v0, "mTieBreakDuel"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/etermax/preguntados/ui/game/category/a/c;->b:Z

    .line 153
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lorg/a/a/b/a;)V
    .locals 2
    .parameter

    .prologue
    .line 75
    const v0, 0x7f0a023f

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a/c;->g:Landroid/widget/ViewSwitcher;

    .line 76
    const v0, 0x7f0a0242

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/resources/RandomImageView;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a/c;->h:Lcom/etermax/gamescommon/resources/RandomImageView;

    .line 77
    const v0, 0x7f0a023b

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a/c;->i:Landroid/widget/TextView;

    .line 78
    const v0, 0x7f0a023a

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a/c;->f:Landroid/widget/ViewSwitcher;

    .line 79
    const v0, 0x7f0a0240

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a/c;->j:Landroid/widget/TextView;

    .line 81
    const v0, 0x7f0a024a

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_0

    .line 83
    new-instance v1, Lcom/etermax/preguntados/ui/game/category/a/c$1;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/game/category/a/c$1;-><init>(Lcom/etermax/preguntados/ui/game/category/a/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    :cond_0
    const v0, 0x7f0a0236

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_1

    .line 98
    new-instance v1, Lcom/etermax/preguntados/ui/game/category/a/c$2;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/game/category/a/c$2;-><init>(Lcom/etermax/preguntados/ui/game/category/a/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    :cond_1
    const v0, 0x7f0a024d

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_2

    .line 113
    new-instance v1, Lcom/etermax/preguntados/ui/game/category/a/c$3;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/game/category/a/c$3;-><init>(Lcom/etermax/preguntados/ui/game/category/a/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    :cond_2
    const v0, 0x7f0a024b

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 127
    if-eqz v0, :cond_3

    .line 128
    new-instance v1, Lcom/etermax/preguntados/ui/game/category/a/c$4;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/game/category/a/c$4;-><init>(Lcom/etermax/preguntados/ui/game/category/a/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    :cond_3
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/a/c;->b()V

    .line 141
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a/c;->m:Landroid/view/View;

    if-nez v0, :cond_0

    .line 44
    const/4 v0, 0x0

    .line 46
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a/c;->m:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a/c;->l:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 37
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/game/category/a/c;->a(Landroid/os/Bundle;)V

    .line 38
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/game/category/a/a;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 40
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-super {p0, p1, p2, p3}, Lcom/etermax/preguntados/ui/game/category/a/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a/c;->m:Landroid/view/View;

    .line 52
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a/c;->m:Landroid/view/View;

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-super {p0, p1, p2}, Lcom/etermax/preguntados/ui/game/category/a/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 66
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a/c;->l:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 67
    return-void
.end method
