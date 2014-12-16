.class public final Lcom/etermax/preguntados/ui/tvshow/n;
.super Lcom/etermax/preguntados/ui/tvshow/l;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;
.implements Lorg/a/a/b/b;


# instance fields
.field private final c:Lorg/a/a/b/c;

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/tvshow/l;-><init>()V

    .line 23
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/n;->c:Lorg/a/a/b/c;

    .line 71
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    invoke-static {p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/b;)V

    .line 52
    return-void
.end method

.method public static d()Lcom/etermax/preguntados/ui/tvshow/o;
    .locals 2

    .prologue
    .line 61
    new-instance v0, Lcom/etermax/preguntados/ui/tvshow/o;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/etermax/preguntados/ui/tvshow/o;-><init>(Lcom/etermax/preguntados/ui/tvshow/n$1;)V

    return-object v0
.end method


# virtual methods
.method public a(Lorg/a/a/b/a;)V
    .locals 1
    .parameter

    .prologue
    .line 66
    const v0, 0x7f0a03f7

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/n;->a:Landroid/view/View;

    .line 67
    const v0, 0x7f0a054e

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/widget/PreguntadosLoading;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/n;->b:Lcom/etermax/preguntados/ui/widget/PreguntadosLoading;

    .line 68
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/tvshow/n;->c()V

    .line 69
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/n;->d:Landroid/view/View;

    if-nez v0, :cond_0

    .line 36
    const/4 v0, 0x0

    .line 38
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/n;->d:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/n;->c:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 29
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/tvshow/n;->a(Landroid/os/Bundle;)V

    .line 30
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/tvshow/l;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 32
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-super {p0, p1, p2, p3}, Lcom/etermax/preguntados/ui/tvshow/l;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/n;->d:Landroid/view/View;

    .line 44
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/n;->d:Landroid/view/View;

    if-nez v0, :cond_0

    .line 45
    const v0, 0x7f030142

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/n;->d:Landroid/view/View;

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/n;->d:Landroid/view/View;

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-super {p0, p1, p2}, Lcom/etermax/preguntados/ui/tvshow/l;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 57
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/n;->c:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 58
    return-void
.end method
