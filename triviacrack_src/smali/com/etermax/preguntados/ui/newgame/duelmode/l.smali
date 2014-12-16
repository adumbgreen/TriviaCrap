.class public final Lcom/etermax/preguntados/ui/newgame/duelmode/l;
.super Lcom/etermax/preguntados/ui/newgame/duelmode/j;
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
    .line 20
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/newgame/duelmode/j;-><init>()V

    .line 25
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/l;->f:Lorg/a/a/b/c;

    .line 105
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 53
    invoke-static {p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/b;)V

    .line 54
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/newgame/duelmode/l;->f()V

    .line 55
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/newgame/duelmode/l;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/datasource/e;->a(Landroid/content/Context;)Lcom/etermax/preguntados/datasource/e;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/l;->a:Lcom/etermax/preguntados/datasource/d;

    .line 56
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/newgame/duelmode/l;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/ui/newgame/duelmode/s;->a(Landroid/content/Context;)Lcom/etermax/preguntados/ui/newgame/duelmode/s;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/l;->b:Lcom/etermax/preguntados/ui/newgame/duelmode/o;

    .line 57
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/newgame/duelmode/l;->b()V

    .line 58
    return-void
.end method

.method public static e()Lcom/etermax/preguntados/ui/newgame/duelmode/m;
    .locals 2

    .prologue
    .line 67
    new-instance v0, Lcom/etermax/preguntados/ui/newgame/duelmode/m;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/etermax/preguntados/ui/newgame/duelmode/m;-><init>(Lcom/etermax/preguntados/ui/newgame/duelmode/l$1;)V

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/newgame/duelmode/l;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 92
    if-eqz v1, :cond_2

    .line 93
    const-string v0, "mDuelName"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    const-string v0, "mDuelName"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/l;->c:Ljava/lang/String;

    .line 96
    :cond_0
    const-string v0, "mAddedPlayers"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    const-string v0, "mAddedPlayers"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/l;->e:Ljava/util/ArrayList;

    .line 99
    :cond_1
    const-string v0, "mFriends"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 100
    const-string v0, "mFriends"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/l;->d:Ljava/util/ArrayList;

    .line 103
    :cond_2
    return-void
.end method


# virtual methods
.method public a(Lorg/a/a/b/a;)V
    .locals 2
    .parameter

    .prologue
    .line 73
    const v0, 0x7f0a0331

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 74
    if-eqz v0, :cond_0

    .line 75
    new-instance v1, Lcom/etermax/preguntados/ui/newgame/duelmode/l$1;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/newgame/duelmode/l$1;-><init>(Lcom/etermax/preguntados/ui/newgame/duelmode/l;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/newgame/duelmode/l;->c()V

    .line 88
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/l;->g:Landroid/view/View;

    if-nez v0, :cond_0

    .line 41
    const/4 v0, 0x0

    .line 43
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/l;->g:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/l;->f:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 34
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/newgame/duelmode/l;->a(Landroid/os/Bundle;)V

    .line 35
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/newgame/duelmode/j;->onCreate(Landroid/os/Bundle;)V

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
    invoke-super {p0, p1, p2, p3}, Lcom/etermax/preguntados/ui/newgame/duelmode/j;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/l;->g:Landroid/view/View;

    .line 49
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/l;->g:Landroid/view/View;

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-super {p0, p1, p2}, Lcom/etermax/preguntados/ui/newgame/duelmode/j;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 63
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/l;->f:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 64
    return-void
.end method
