.class public final Lcom/etermax/preguntados/ui/shop/g;
.super Lcom/etermax/preguntados/ui/shop/e;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;
.implements Lorg/a/a/b/b;


# instance fields
.field private final b:Lorg/a/a/b/c;

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/shop/e;-><init>()V

    .line 22
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/shop/g;->b:Lorg/a/a/b/c;

    .line 66
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/shop/g;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/datasource/e;->a(Landroid/content/Context;)Lcom/etermax/preguntados/datasource/e;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/shop/g;->a:Lcom/etermax/preguntados/datasource/d;

    .line 48
    invoke-static {p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/b;)V

    .line 49
    return-void
.end method

.method public static d()Lcom/etermax/preguntados/ui/shop/h;
    .locals 2

    .prologue
    .line 58
    new-instance v0, Lcom/etermax/preguntados/ui/shop/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/etermax/preguntados/ui/shop/h;-><init>(Lcom/etermax/preguntados/ui/shop/g$1;)V

    return-object v0
.end method


# virtual methods
.method public a(Lorg/a/a/b/a;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/shop/g;->c()V

    .line 64
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/etermax/preguntados/ui/shop/g;->c:Landroid/view/View;

    if-nez v0, :cond_0

    .line 35
    const/4 v0, 0x0

    .line 37
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/shop/g;->c:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/etermax/preguntados/ui/shop/g;->b:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 28
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/shop/g;->a(Landroid/os/Bundle;)V

    .line 29
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/shop/e;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 31
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-super {p0, p1, p2, p3}, Lcom/etermax/preguntados/ui/shop/e;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/shop/g;->c:Landroid/view/View;

    .line 43
    iget-object v0, p0, Lcom/etermax/preguntados/ui/shop/g;->c:Landroid/view/View;

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-super {p0, p1, p2}, Lcom/etermax/preguntados/ui/shop/e;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 54
    iget-object v0, p0, Lcom/etermax/preguntados/ui/shop/g;->b:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 55
    return-void
.end method
