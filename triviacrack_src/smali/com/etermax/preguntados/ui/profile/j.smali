.class public final Lcom/etermax/preguntados/ui/profile/j;
.super Lcom/etermax/preguntados/ui/profile/i;
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
    .line 18
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/profile/i;-><init>()V

    .line 23
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/profile/j;->i:Lorg/a/a/b/c;

    .line 83
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/profile/j;->f()V

    .line 51
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/profile/j;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/gamescommon/login/datasource/b;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/login/datasource/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/profile/j;->g:Lcom/etermax/gamescommon/login/datasource/a;

    .line 52
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/profile/j;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/datasource/e;->a(Landroid/content/Context;)Lcom/etermax/preguntados/datasource/e;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/profile/j;->h:Lcom/etermax/preguntados/datasource/d;

    .line 53
    invoke-static {p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/b;)V

    .line 54
    return-void
.end method

.method public static e()Lcom/etermax/preguntados/ui/profile/k;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Lcom/etermax/preguntados/ui/profile/k;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/etermax/preguntados/ui/profile/k;-><init>(Lcom/etermax/preguntados/ui/profile/j$1;)V

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/profile/j;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 68
    if-eqz v0, :cond_1

    .line 69
    const-string v1, "mUsername"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    const-string v1, "mUsername"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/etermax/preguntados/ui/profile/j;->f:Ljava/lang/String;

    .line 72
    :cond_0
    const-string v1, "mUserId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    const-string v1, "mUserId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/etermax/preguntados/ui/profile/j;->e:J

    .line 76
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lorg/a/a/b/a;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/profile/j;->d()V

    .line 81
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/j;->j:Landroid/view/View;

    if-nez v0, :cond_0

    .line 38
    const/4 v0, 0x0

    .line 40
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/j;->j:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/j;->i:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 31
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/profile/j;->a(Landroid/os/Bundle;)V

    .line 32
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/profile/i;->onCreate(Landroid/os/Bundle;)V

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
    invoke-super {p0, p1, p2, p3}, Lcom/etermax/preguntados/ui/profile/i;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/profile/j;->j:Landroid/view/View;

    .line 46
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/j;->j:Landroid/view/View;

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-super {p0, p1, p2}, Lcom/etermax/preguntados/ui/profile/i;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 59
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/j;->i:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 60
    return-void
.end method
