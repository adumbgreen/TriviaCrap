.class public final Lcom/etermax/preguntados/ui/newgame/duelmode/h;
.super Lcom/etermax/preguntados/ui/newgame/duelmode/f;
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
    .line 22
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/newgame/duelmode/f;-><init>()V

    .line 27
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/h;->g:Lorg/a/a/b/c;

    .line 120
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 54
    invoke-static {p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/b;)V

    .line 55
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/newgame/duelmode/h;->h()V

    .line 56
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/newgame/duelmode/h;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/gamescommon/h;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/h;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/h;->d:Lcom/etermax/gamescommon/e;

    .line 57
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/newgame/duelmode/h;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/datasource/e;->a(Landroid/content/Context;)Lcom/etermax/preguntados/datasource/e;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/h;->a:Lcom/etermax/preguntados/datasource/d;

    .line 58
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/newgame/duelmode/h;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/gamescommon/login/datasource/b;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/login/datasource/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/h;->b:Lcom/etermax/gamescommon/login/datasource/a;

    .line 59
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/newgame/duelmode/h;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/ui/newgame/duelmode/s;->a(Landroid/content/Context;)Lcom/etermax/preguntados/ui/newgame/duelmode/s;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/h;->c:Lcom/etermax/preguntados/ui/newgame/duelmode/o;

    .line 60
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/newgame/duelmode/h;->b()V

    .line 61
    return-void
.end method

.method public static g()Lcom/etermax/preguntados/ui/newgame/duelmode/i;
    .locals 2

    .prologue
    .line 70
    new-instance v0, Lcom/etermax/preguntados/ui/newgame/duelmode/i;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/etermax/preguntados/ui/newgame/duelmode/i;-><init>(Lcom/etermax/preguntados/ui/newgame/duelmode/h$1;)V

    return-object v0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/newgame/duelmode/h;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 110
    if-eqz v1, :cond_1

    .line 111
    const-string v0, "mPreselectedFriends"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    const-string v0, "mPreselectedFriends"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/h;->e:Ljava/util/ArrayList;

    .line 114
    :cond_0
    const-string v0, "mDuelName"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    const-string v0, "mDuelName"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/h;->f:Ljava/lang/String;

    .line 118
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lorg/a/a/b/a;)V
    .locals 2
    .parameter

    .prologue
    .line 76
    const v0, 0x7f0a0331

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 77
    if-eqz v0, :cond_0

    .line 78
    new-instance v1, Lcom/etermax/preguntados/ui/newgame/duelmode/h$1;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/newgame/duelmode/h$1;-><init>(Lcom/etermax/preguntados/ui/newgame/duelmode/h;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    :cond_0
    const v0, 0x7f0a0337

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 92
    if-eqz v0, :cond_1

    .line 93
    new-instance v1, Lcom/etermax/preguntados/ui/newgame/duelmode/h$2;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/newgame/duelmode/h$2;-><init>(Lcom/etermax/preguntados/ui/newgame/duelmode/h;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    :cond_1
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/newgame/duelmode/h;->c()V

    .line 106
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/h;->h:Landroid/view/View;

    if-nez v0, :cond_0

    .line 42
    const/4 v0, 0x0

    .line 44
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/h;->h:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/h;->g:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 35
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/newgame/duelmode/h;->a(Landroid/os/Bundle;)V

    .line 36
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 38
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-super {p0, p1, p2, p3}, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/h;->h:Landroid/view/View;

    .line 50
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/h;->h:Landroid/view/View;

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-super {p0, p1, p2}, Lcom/etermax/preguntados/ui/newgame/duelmode/f;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 66
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/h;->g:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 67
    return-void
.end method
