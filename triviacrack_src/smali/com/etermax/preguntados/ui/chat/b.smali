.class public final Lcom/etermax/preguntados/ui/chat/b;
.super Lcom/etermax/preguntados/ui/chat/a;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;


# instance fields
.field private final o:Lorg/a/a/b/c;

.field private p:Landroid/view/View;

.field private q:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/chat/a;-><init>()V

    .line 26
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/chat/b;->o:Lorg/a/a/b/c;

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/chat/b;->q:Landroid/os/Handler;

    .line 127
    return-void
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/chat/b;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    invoke-super {p0}, Lcom/etermax/chat/ui/a;->j()V

    return-void
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/chat/b;Lcom/etermax/chat/a/f;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/etermax/chat/ui/a;->a(Lcom/etermax/chat/a/f;)V

    return-void
.end method

.method private b(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/chat/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/gamescommon/menu/a/j;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/menu/a/j;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/chat/b;->n:Lcom/etermax/gamescommon/menu/a/d;

    .line 53
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/chat/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/chat/a/e;->a(Landroid/content/Context;)Lcom/etermax/chat/a/e;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/chat/b;->a:Lcom/etermax/chat/a/a;

    .line 54
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/chat/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/chat/a/e;->a(Landroid/content/Context;)Lcom/etermax/chat/a/e;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/chat/b;->j:Lcom/etermax/chat/a/a;

    .line 55
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/chat/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/gamescommon/datasource/i;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/datasource/i;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/chat/b;->m:Lcom/etermax/gamescommon/datasource/e;

    .line 56
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/chat/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/tools/f/d;->c(Landroid/content/Context;)Lcom/etermax/tools/f/d;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/chat/b;->l:Lcom/etermax/tools/f/a;

    .line 57
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/chat/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/gamescommon/datasource/d;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/datasource/d;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/chat/b;->k:Lcom/etermax/gamescommon/datasource/a;

    .line 58
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/chat/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/gamescommon/menu/a/j;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/menu/a/j;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/chat/b;->n:Lcom/etermax/gamescommon/menu/a/d;

    .line 59
    return-void
.end method

.method static synthetic b(Lcom/etermax/preguntados/ui/chat/b;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    invoke-super {p0}, Lcom/etermax/chat/ui/a;->g()V

    return-void
.end method

.method static synthetic c(Lcom/etermax/preguntados/ui/chat/b;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    invoke-super {p0}, Lcom/etermax/chat/ui/a;->d()V

    return-void
.end method


# virtual methods
.method public a(Lcom/etermax/chat/a/f;)V
    .locals 2
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/etermax/preguntados/ui/chat/b;->q:Landroid/os/Handler;

    new-instance v1, Lcom/etermax/preguntados/ui/chat/b$2;

    invoke-direct {v1, p0, p1}, Lcom/etermax/preguntados/ui/chat/b$2;-><init>(Lcom/etermax/preguntados/ui/chat/b;Lcom/etermax/chat/a/f;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 97
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/etermax/preguntados/ui/chat/b;->q:Landroid/os/Handler;

    new-instance v1, Lcom/etermax/preguntados/ui/chat/b$4;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/chat/b$4;-><init>(Lcom/etermax/preguntados/ui/chat/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 125
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/etermax/preguntados/ui/chat/b;->p:Landroid/view/View;

    if-nez v0, :cond_0

    .line 40
    const/4 v0, 0x0

    .line 42
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/chat/b;->p:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public g()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/etermax/preguntados/ui/chat/b;->q:Landroid/os/Handler;

    new-instance v1, Lcom/etermax/preguntados/ui/chat/b$3;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/chat/b$3;-><init>(Lcom/etermax/preguntados/ui/chat/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 111
    return-void
.end method

.method public j()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/etermax/preguntados/ui/chat/b;->q:Landroid/os/Handler;

    new-instance v1, Lcom/etermax/preguntados/ui/chat/b$1;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/chat/b$1;-><init>(Lcom/etermax/preguntados/ui/chat/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 83
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/etermax/preguntados/ui/chat/b;->o:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 33
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/chat/b;->b(Landroid/os/Bundle;)V

    .line 34
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/chat/a;->onCreate(Landroid/os/Bundle;)V

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
    invoke-super {p0, p1, p2, p3}, Lcom/etermax/preguntados/ui/chat/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/chat/b;->p:Landroid/view/View;

    .line 48
    iget-object v0, p0, Lcom/etermax/preguntados/ui/chat/b;->p:Landroid/view/View;

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-super {p0, p1, p2}, Lcom/etermax/preguntados/ui/chat/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 64
    iget-object v0, p0, Lcom/etermax/preguntados/ui/chat/b;->o:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 65
    return-void
.end method
