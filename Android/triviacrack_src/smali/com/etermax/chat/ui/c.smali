.class public final Lcom/etermax/chat/ui/c;
.super Lcom/etermax/chat/ui/a;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;


# instance fields
.field private final j:Lorg/a/a/b/c;

.field private k:Landroid/view/View;

.field private l:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/etermax/chat/ui/a;-><init>()V

    .line 25
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/chat/ui/c;->j:Lorg/a/a/b/c;

    .line 27
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/etermax/chat/ui/c;->l:Landroid/os/Handler;

    .line 121
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/etermax/chat/ui/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/gamescommon/menu/a/j;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/menu/a/j;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/chat/ui/c;->c:Lcom/etermax/gamescommon/menu/a/d;

    .line 52
    invoke-virtual {p0}, Lcom/etermax/chat/ui/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/chat/a/e;->a(Landroid/content/Context;)Lcom/etermax/chat/a/e;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/chat/ui/c;->a:Lcom/etermax/chat/a/a;

    .line 53
    return-void
.end method

.method static synthetic a(Lcom/etermax/chat/ui/c;)V
    .locals 0
    .parameter

    .prologue
    .line 20
    invoke-super {p0}, Lcom/etermax/chat/ui/a;->d()V

    return-void
.end method

.method static synthetic a(Lcom/etermax/chat/ui/c;Lcom/etermax/chat/a/f;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/etermax/chat/ui/a;->a(Lcom/etermax/chat/a/f;)V

    return-void
.end method

.method static synthetic b(Lcom/etermax/chat/ui/c;)V
    .locals 0
    .parameter

    .prologue
    .line 20
    invoke-super {p0}, Lcom/etermax/chat/ui/a;->j()V

    return-void
.end method

.method static synthetic c(Lcom/etermax/chat/ui/c;)V
    .locals 0
    .parameter

    .prologue
    .line 20
    invoke-super {p0}, Lcom/etermax/chat/ui/a;->g()V

    return-void
.end method


# virtual methods
.method public a(Lcom/etermax/chat/a/f;)V
    .locals 2
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/etermax/chat/ui/c;->l:Landroid/os/Handler;

    new-instance v1, Lcom/etermax/chat/ui/c$1;

    invoke-direct {v1, p0, p1}, Lcom/etermax/chat/ui/c$1;-><init>(Lcom/etermax/chat/ui/c;Lcom/etermax/chat/a/f;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 77
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/etermax/chat/ui/c;->l:Landroid/os/Handler;

    new-instance v1, Lcom/etermax/chat/ui/c$2;

    invoke-direct {v1, p0}, Lcom/etermax/chat/ui/c$2;-><init>(Lcom/etermax/chat/ui/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 91
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/etermax/chat/ui/c;->k:Landroid/view/View;

    if-nez v0, :cond_0

    .line 39
    const/4 v0, 0x0

    .line 41
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/etermax/chat/ui/c;->k:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public g()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/etermax/chat/ui/c;->l:Landroid/os/Handler;

    new-instance v1, Lcom/etermax/chat/ui/c$4;

    invoke-direct {v1, p0}, Lcom/etermax/chat/ui/c$4;-><init>(Lcom/etermax/chat/ui/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 119
    return-void
.end method

.method public j()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/etermax/chat/ui/c;->l:Landroid/os/Handler;

    new-instance v1, Lcom/etermax/chat/ui/c$3;

    invoke-direct {v1, p0}, Lcom/etermax/chat/ui/c$3;-><init>(Lcom/etermax/chat/ui/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 105
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/etermax/chat/ui/c;->j:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 32
    invoke-direct {p0, p1}, Lcom/etermax/chat/ui/c;->a(Landroid/os/Bundle;)V

    .line 33
    invoke-super {p0, p1}, Lcom/etermax/chat/ui/a;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 35
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-super {p0, p1, p2, p3}, Lcom/etermax/chat/ui/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/chat/ui/c;->k:Landroid/view/View;

    .line 47
    iget-object v0, p0, Lcom/etermax/chat/ui/c;->k:Landroid/view/View;

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-super {p0, p1, p2}, Lcom/etermax/chat/ui/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 58
    iget-object v0, p0, Lcom/etermax/chat/ui/c;->j:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 59
    return-void
.end method
