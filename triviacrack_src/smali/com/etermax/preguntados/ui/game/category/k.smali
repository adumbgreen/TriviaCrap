.class public final Lcom/etermax/preguntados/ui/game/category/k;
.super Lcom/etermax/preguntados/ui/game/category/i;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;
.implements Lorg/a/a/b/b;


# instance fields
.field private final r:Lorg/a/a/b/c;

.field private s:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/category/i;-><init>()V

    .line 39
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/k;->r:Lorg/a/a/b/c;

    .line 172
    return-void
.end method

.method private b(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 68
    invoke-static {p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/b;)V

    .line 69
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/category/k;->j()V

    .line 70
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/k;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/gamescommon/login/datasource/b;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/login/datasource/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/k;->d:Lcom/etermax/gamescommon/login/datasource/a;

    .line 71
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/k;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/ui/d/j;->g(Landroid/content/Context;)Lcom/etermax/preguntados/ui/d/j;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/k;->f:Lcom/etermax/preguntados/ui/d/i;

    .line 72
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/k;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/tools/f/d;->c(Landroid/content/Context;)Lcom/etermax/tools/f/d;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/k;->h:Lcom/etermax/tools/f/a;

    .line 73
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/k;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/datasource/e;->a(Landroid/content/Context;)Lcom/etermax/preguntados/datasource/e;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/k;->c:Lcom/etermax/preguntados/datasource/d;

    .line 74
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/k;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/ui/game/a/b;->a(Landroid/content/Context;)Lcom/etermax/preguntados/ui/game/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/k;->g:Lcom/etermax/preguntados/ui/game/a/a;

    .line 75
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/k;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/ui/a/b;->a(Landroid/content/Context;)Lcom/etermax/preguntados/ui/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/k;->j:Lcom/etermax/preguntados/ui/a/a;

    .line 76
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/k;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/gamescommon/notification/e;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/notification/e;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/k;->m:Lcom/etermax/gamescommon/notification/d;

    .line 77
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/k;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/gamescommon/achievements/ui/m;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/achievements/ui/m;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/k;->k:Lcom/etermax/gamescommon/achievements/ui/k;

    .line 78
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/k;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/g/b;->a(Landroid/content/Context;)Lcom/etermax/preguntados/g/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/k;->e:Lcom/etermax/preguntados/g/a;

    .line 79
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/k;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/gamescommon/login/datasource/d;->b(Landroid/content/Context;)Lcom/etermax/gamescommon/login/datasource/d;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/k;->n:Lcom/etermax/gamescommon/login/datasource/c;

    .line 80
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/k;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/c/a/c;->a(Landroid/content/Context;)Lcom/etermax/preguntados/c/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/k;->l:Lcom/etermax/preguntados/c/a/b;

    .line 81
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/k;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/tools/b/c;->a(Landroid/content/Context;)Lcom/etermax/tools/b/c;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/k;->b:Lcom/etermax/tools/b/a;

    .line 82
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/k;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/sharing/o;->a(Landroid/content/Context;)Lcom/etermax/preguntados/sharing/o;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/k;->p:Lcom/etermax/preguntados/sharing/m;

    .line 83
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/k;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/gamescommon/social/g;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/social/g;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/k;->i:Lcom/etermax/gamescommon/social/a;

    .line 84
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/k;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/gamescommon/datasource/m;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/datasource/m;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/k;->o:Lcom/etermax/gamescommon/datasource/l;

    .line 85
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/k;->b()V

    .line 86
    return-void
.end method

.method public static i()Lcom/etermax/preguntados/ui/game/category/l;
    .locals 2

    .prologue
    .line 95
    new-instance v0, Lcom/etermax/preguntados/ui/game/category/l;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/etermax/preguntados/ui/game/category/l;-><init>(Lcom/etermax/preguntados/ui/game/category/k$1;)V

    return-object v0
.end method

.method private j()V
    .locals 2

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/k;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 165
    if-eqz v0, :cond_0

    .line 166
    const-string v1, "mGameDTO"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    const-string v1, "mGameDTO"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/GameDTO;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/k;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    .line 170
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lorg/a/a/b/a;)V
    .locals 2
    .parameter

    .prologue
    .line 101
    const v0, 0x7f0a0200

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 102
    if-eqz v0, :cond_0

    .line 103
    new-instance v1, Lcom/etermax/preguntados/ui/game/category/k$1;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/game/category/k$1;-><init>(Lcom/etermax/preguntados/ui/game/category/k;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    :cond_0
    const v0, 0x7f0a0207

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_1

    .line 118
    new-instance v1, Lcom/etermax/preguntados/ui/game/category/k$2;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/game/category/k$2;-><init>(Lcom/etermax/preguntados/ui/game/category/k;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    :cond_1
    const v0, 0x7f0a0203

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 132
    if-eqz v0, :cond_2

    .line 133
    new-instance v1, Lcom/etermax/preguntados/ui/game/category/k$3;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/game/category/k$3;-><init>(Lcom/etermax/preguntados/ui/game/category/k;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    :cond_2
    const v0, 0x7f0a0202

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 147
    if-eqz v0, :cond_3

    .line 148
    new-instance v1, Lcom/etermax/preguntados/ui/game/category/k$4;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/game/category/k$4;-><init>(Lcom/etermax/preguntados/ui/game/category/k;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    :cond_3
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/k;->c()V

    .line 161
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/k;->s:Landroid/view/View;

    if-nez v0, :cond_0

    .line 53
    const/4 v0, 0x0

    .line 55
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/k;->s:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/k;->r:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 46
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/game/category/k;->b(Landroid/os/Bundle;)V

    .line 47
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/game/category/i;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 49
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-super {p0, p1, p2, p3}, Lcom/etermax/preguntados/ui/game/category/i;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/k;->s:Landroid/view/View;

    .line 61
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/k;->s:Landroid/view/View;

    if-nez v0, :cond_0

    .line 62
    const v0, 0x7f030096

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/k;->s:Landroid/view/View;

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/k;->s:Landroid/view/View;

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 90
    invoke-super {p0, p1, p2}, Lcom/etermax/preguntados/ui/game/category/i;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 91
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/k;->r:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 92
    return-void
.end method
