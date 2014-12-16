.class public final Lcom/etermax/preguntados/ui/game/question/crown/c;
.super Lcom/etermax/preguntados/ui/game/question/crown/a;
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
    .line 21
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/question/crown/a;-><init>()V

    .line 26
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/crown/c;->f:Lorg/a/a/b/c;

    .line 86
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/question/crown/c;->d()V

    .line 56
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/crown/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/gamescommon/login/datasource/b;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/login/datasource/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/crown/c;->b:Lcom/etermax/gamescommon/login/datasource/a;

    .line 57
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/crown/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/c/a/c;->a(Landroid/content/Context;)Lcom/etermax/preguntados/c/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/crown/c;->d:Lcom/etermax/preguntados/c/a/b;

    .line 58
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/crown/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/datasource/e;->a(Landroid/content/Context;)Lcom/etermax/preguntados/datasource/e;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/crown/c;->c:Lcom/etermax/preguntados/datasource/d;

    .line 59
    invoke-static {p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/b;)V

    .line 60
    return-void
.end method

.method public static c()Lcom/etermax/preguntados/ui/game/question/crown/d;
    .locals 2

    .prologue
    .line 69
    new-instance v0, Lcom/etermax/preguntados/ui/game/question/crown/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/etermax/preguntados/ui/game/question/crown/d;-><init>(Lcom/etermax/preguntados/ui/game/question/crown/c$1;)V

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/crown/c;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 74
    if-eqz v0, :cond_0

    .line 75
    const-string v1, "mGameDTO"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    const-string v1, "mGameDTO"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/GameDTO;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/crown/c;->e:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    .line 79
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lorg/a/a/b/a;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/crown/c;->b()V

    .line 84
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/crown/c;->g:Landroid/view/View;

    if-nez v0, :cond_0

    .line 40
    const/4 v0, 0x0

    .line 42
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/crown/c;->g:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/crown/c;->f:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 33
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/game/question/crown/c;->a(Landroid/os/Bundle;)V

    .line 34
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/game/question/crown/a;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 36
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-super {p0, p1, p2, p3}, Lcom/etermax/preguntados/ui/game/question/crown/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/crown/c;->g:Landroid/view/View;

    .line 48
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/crown/c;->g:Landroid/view/View;

    if-nez v0, :cond_0

    .line 49
    const v0, 0x7f0300a5

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/crown/c;->g:Landroid/view/View;

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/crown/c;->g:Landroid/view/View;

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-super {p0, p1, p2}, Lcom/etermax/preguntados/ui/game/question/crown/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 65
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/crown/c;->f:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 66
    return-void
.end method
