.class public final Lcom/etermax/preguntados/d/f;
.super Lcom/etermax/preguntados/d/c;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;


# instance fields
.field private final g:Lorg/a/a/b/c;

.field private h:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/etermax/preguntados/d/c;-><init>()V

    .line 24
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/d/f;->g:Lorg/a/a/b/c;

    .line 90
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/etermax/preguntados/d/f;->e()V

    .line 51
    invoke-virtual {p0}, Lcom/etermax/preguntados/d/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/gamescommon/social/j;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/social/j;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/d/f;->e:Lcom/etermax/gamescommon/social/h;

    .line 52
    invoke-virtual {p0}, Lcom/etermax/preguntados/d/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/gamescommon/login/datasource/b;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/login/datasource/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/d/f;->f:Lcom/etermax/gamescommon/login/datasource/a;

    .line 53
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/d/f;->b(Landroid/os/Bundle;)V

    .line 54
    return-void
.end method

.method private b(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 83
    if-nez p1, :cond_0

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    const-string v0, "mCheckedNonAppUsers"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/etermax/preguntados/d/f;->c:Ljava/util/ArrayList;

    .line 87
    const-string v0, "mCheckedAppUsers"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/etermax/preguntados/d/f;->b:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public static d()Lcom/etermax/preguntados/d/g;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Lcom/etermax/preguntados/d/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/etermax/preguntados/d/g;-><init>(Lcom/etermax/preguntados/d/f$1;)V

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/etermax/preguntados/d/f;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 68
    if-eqz v0, :cond_0

    .line 69
    const-string v1, "mInactiveUsers"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    const-string v1, "mInactiveUsers"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/etermax/preguntados/d/f;->a:Ljava/util/ArrayList;

    .line 73
    :cond_0
    return-void
.end method


# virtual methods
.method public findViewById(I)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/etermax/preguntados/d/f;->h:Landroid/view/View;

    if-nez v0, :cond_0

    .line 38
    const/4 v0, 0x0

    .line 40
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/d/f;->h:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/etermax/preguntados/d/f;->g:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 31
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/d/f;->a(Landroid/os/Bundle;)V

    .line 32
    invoke-super {p0, p1}, Lcom/etermax/preguntados/d/c;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 34
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-super {p0, p1, p2, p3}, Lcom/etermax/preguntados/d/c;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/d/f;->h:Landroid/view/View;

    .line 46
    iget-object v0, p0, Lcom/etermax/preguntados/d/f;->h:Landroid/view/View;

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/etermax/preguntados/d/c;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 78
    const-string v0, "mCheckedNonAppUsers"

    iget-object v1, p0, Lcom/etermax/preguntados/d/f;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 79
    const-string v0, "mCheckedAppUsers"

    iget-object v1, p0, Lcom/etermax/preguntados/d/f;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 80
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-super {p0, p1, p2}, Lcom/etermax/preguntados/d/c;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 59
    iget-object v0, p0, Lcom/etermax/preguntados/d/f;->g:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 60
    return-void
.end method
