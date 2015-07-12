.class public final Lcom/etermax/gamescommon/profile/ui/f;
.super Lcom/etermax/gamescommon/profile/ui/e;
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
    invoke-direct {p0}, Lcom/etermax/gamescommon/profile/ui/e;-><init>()V

    .line 25
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/gamescommon/profile/ui/f;->e:Lorg/a/a/b/c;

    .line 85
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    invoke-static {p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/b;)V

    .line 55
    invoke-direct {p0}, Lcom/etermax/gamescommon/profile/ui/f;->c()V

    .line 56
    return-void
.end method

.method public static b()Lcom/etermax/gamescommon/profile/ui/g;
    .locals 2

    .prologue
    .line 65
    new-instance v0, Lcom/etermax/gamescommon/profile/ui/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/etermax/gamescommon/profile/ui/g;-><init>(Lcom/etermax/gamescommon/profile/ui/f$1;)V

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/etermax/gamescommon/profile/ui/f;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_0

    .line 79
    const-string v1, "mUser"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    const-string v1, "mUser"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/k;

    iput-object v0, p0, Lcom/etermax/gamescommon/profile/ui/f;->a:Lcom/etermax/gamescommon/k;

    .line 83
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lorg/a/a/b/a;)V
    .locals 1
    .parameter

    .prologue
    .line 70
    const v0, 0x7f0a00a1

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/etermax/gamescommon/profile/ui/f;->b:Landroid/widget/ImageView;

    .line 71
    const v0, 0x7f0a00a3

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/etermax/gamescommon/profile/ui/f;->d:Landroid/widget/ProgressBar;

    .line 72
    const v0, 0x7f0a00a2

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/etermax/gamescommon/profile/ui/f;->c:Landroid/widget/ImageView;

    .line 73
    invoke-virtual {p0}, Lcom/etermax/gamescommon/profile/ui/f;->a()V

    .line 74
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/f;->f:Landroid/view/View;

    if-nez v0, :cond_0

    .line 39
    const/4 v0, 0x0

    .line 41
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/f;->f:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/f;->e:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 32
    invoke-direct {p0, p1}, Lcom/etermax/gamescommon/profile/ui/f;->a(Landroid/os/Bundle;)V

    .line 33
    invoke-super {p0, p1}, Lcom/etermax/gamescommon/profile/ui/e;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 35
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-super {p0, p1, p2, p3}, Lcom/etermax/gamescommon/profile/ui/e;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/profile/ui/f;->f:Landroid/view/View;

    .line 47
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/f;->f:Landroid/view/View;

    if-nez v0, :cond_0

    .line 48
    const v0, 0x7f03002b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/profile/ui/f;->f:Landroid/view/View;

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/f;->f:Landroid/view/View;

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-super {p0, p1, p2}, Lcom/etermax/gamescommon/profile/ui/e;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 61
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/f;->e:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 62
    return-void
.end method
