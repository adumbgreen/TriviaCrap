.class public final Lcom/etermax/preguntados/ui/game/duelmode/e;
.super Lcom/etermax/preguntados/ui/game/duelmode/c;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;
.implements Lorg/a/a/b/b;


# instance fields
.field private final e:Lorg/a/a/b/c;

.field private f:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/duelmode/c;-><init>()V

    .line 25
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/e;->e:Lorg/a/a/b/c;

    .line 115
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 52
    invoke-static {p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/b;)V

    .line 53
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/duelmode/e;->i()V

    .line 54
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/duelmode/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/g/b;->a(Landroid/content/Context;)Lcom/etermax/preguntados/g/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/e;->b:Lcom/etermax/preguntados/g/a;

    .line 55
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/duelmode/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/gamescommon/login/datasource/b;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/login/datasource/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/e;->a:Lcom/etermax/gamescommon/login/datasource/a;

    .line 56
    return-void
.end method

.method public static h()Lcom/etermax/preguntados/ui/game/duelmode/f;
    .locals 2

    .prologue
    .line 65
    new-instance v0, Lcom/etermax/preguntados/ui/game/duelmode/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/etermax/preguntados/ui/game/duelmode/f;-><init>(Lcom/etermax/preguntados/ui/game/duelmode/e$1;)V

    return-object v0
.end method

.method private i()V
    .locals 2

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/duelmode/e;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 105
    if-eqz v1, :cond_1

    .line 106
    const-string v0, "mTheme"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    const-string v0, "mTheme"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/game/duelmode/g;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/e;->d:Lcom/etermax/preguntados/ui/game/duelmode/g;

    .line 109
    :cond_0
    const-string v0, "mGameDTO"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    const-string v0, "mGameDTO"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/GameDTO;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/e;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    .line 113
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lorg/a/a/b/a;)V
    .locals 2
    .parameter

    .prologue
    .line 71
    const v0, 0x7f0a0196

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 72
    if-eqz v0, :cond_0

    .line 73
    new-instance v1, Lcom/etermax/preguntados/ui/game/duelmode/e$1;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/game/duelmode/e$1;-><init>(Lcom/etermax/preguntados/ui/game/duelmode/e;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    :cond_0
    const v0, 0x7f0a0195

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 87
    if-eqz v0, :cond_1

    .line 88
    new-instance v1, Lcom/etermax/preguntados/ui/game/duelmode/e$2;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/game/duelmode/e$2;-><init>(Lcom/etermax/preguntados/ui/game/duelmode/e;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    :cond_1
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/duelmode/e;->b()V

    .line 101
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/e;->f:Landroid/view/View;

    if-nez v0, :cond_0

    .line 40
    const/4 v0, 0x0

    .line 42
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/e;->f:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/e;->e:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 33
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/game/duelmode/e;->a(Landroid/os/Bundle;)V

    .line 34
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/game/duelmode/c;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 36
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-super {p0, p1, p2, p3}, Lcom/etermax/preguntados/ui/game/duelmode/c;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/e;->f:Landroid/view/View;

    .line 48
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/e;->f:Landroid/view/View;

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-super {p0, p1, p2}, Lcom/etermax/preguntados/ui/game/duelmode/c;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 61
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/e;->e:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 62
    return-void
.end method
