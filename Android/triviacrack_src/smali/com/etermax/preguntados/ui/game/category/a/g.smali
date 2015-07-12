.class public final Lcom/etermax/preguntados/ui/game/category/a/g;
.super Lcom/etermax/preguntados/ui/game/category/a/e;
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
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/category/a/e;-><init>()V

    .line 23
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a/g;->c:Lorg/a/a/b/c;

    .line 92
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    invoke-static {p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/b;)V

    .line 50
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/category/a/g;->e()V

    .line 51
    return-void
.end method

.method public static d()Lcom/etermax/preguntados/ui/game/category/a/h;
    .locals 2

    .prologue
    .line 60
    new-instance v0, Lcom/etermax/preguntados/ui/game/category/a/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/etermax/preguntados/ui/game/category/a/h;-><init>(Lcom/etermax/preguntados/ui/game/category/a/g$1;)V

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/a/g;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 85
    if-eqz v0, :cond_0

    .line 86
    const-string v1, "mGameDTO"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    const-string v1, "mGameDTO"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/GameDTO;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a/g;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    .line 90
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lorg/a/a/b/a;)V
    .locals 2
    .parameter

    .prologue
    .line 66
    const v0, 0x7f0a024e

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 67
    if-eqz v0, :cond_0

    .line 68
    new-instance v1, Lcom/etermax/preguntados/ui/game/category/a/g$1;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/game/category/a/g$1;-><init>(Lcom/etermax/preguntados/ui/game/category/a/g;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/a/g;->b()V

    .line 81
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a/g;->d:Landroid/view/View;

    if-nez v0, :cond_0

    .line 37
    const/4 v0, 0x0

    .line 39
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a/g;->d:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a/g;->c:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 30
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/game/category/a/g;->a(Landroid/os/Bundle;)V

    .line 31
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/game/category/a/e;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 33
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-super {p0, p1, p2, p3}, Lcom/etermax/preguntados/ui/game/category/a/e;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a/g;->d:Landroid/view/View;

    .line 45
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a/g;->d:Landroid/view/View;

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-super {p0, p1, p2}, Lcom/etermax/preguntados/ui/game/category/a/e;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 56
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a/g;->c:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 57
    return-void
.end method
