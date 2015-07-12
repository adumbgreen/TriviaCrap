.class public final Lcom/etermax/preguntados/ui/newgame/b/c;
.super Lcom/etermax/preguntados/ui/newgame/b/a;
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
    .line 21
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/newgame/b/a;-><init>()V

    .line 26
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/b/c;->e:Lorg/a/a/b/c;

    .line 101
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    invoke-static {p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/b;)V

    .line 56
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/newgame/b/c;->d()V

    .line 57
    return-void
.end method

.method public static c()Lcom/etermax/preguntados/ui/newgame/b/d;
    .locals 2

    .prologue
    .line 66
    new-instance v0, Lcom/etermax/preguntados/ui/newgame/b/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/etermax/preguntados/ui/newgame/b/d;-><init>(Lcom/etermax/preguntados/ui/newgame/b/c$1;)V

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/newgame/b/c;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_0

    .line 95
    const-string v1, "mGameDTO"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    const-string v1, "mGameDTO"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/GameDTO;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/b/c;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    .line 99
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lorg/a/a/b/a;)V
    .locals 2
    .parameter

    .prologue
    .line 71
    const v0, 0x7f0a010d

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/b/c;->b:Landroid/widget/GridView;

    .line 72
    const v0, 0x7f0a010c

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/widget/CustomFontTextView;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/b/c;->d:Lcom/etermax/tools/widget/CustomFontTextView;

    .line 73
    const v0, 0x7f0a010b

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/widget/CustomFontTextView;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/b/c;->c:Lcom/etermax/tools/widget/CustomFontTextView;

    .line 75
    const v0, 0x7f0a0108

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 76
    if-eqz v0, :cond_0

    .line 77
    new-instance v1, Lcom/etermax/preguntados/ui/newgame/b/c$1;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/newgame/b/c$1;-><init>(Lcom/etermax/preguntados/ui/newgame/b/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/newgame/b/c;->b()V

    .line 90
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/b/c;->f:Landroid/view/View;

    if-nez v0, :cond_0

    .line 40
    const/4 v0, 0x0

    .line 42
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/b/c;->f:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/b/c;->e:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 33
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/newgame/b/c;->a(Landroid/os/Bundle;)V

    .line 34
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/newgame/b/a;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 36
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-super {p0, p1, p2, p3}, Lcom/etermax/preguntados/ui/newgame/b/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/b/c;->f:Landroid/view/View;

    .line 48
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/b/c;->f:Landroid/view/View;

    if-nez v0, :cond_0

    .line 49
    const v0, 0x7f030052

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/b/c;->f:Landroid/view/View;

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/b/c;->f:Landroid/view/View;

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-super {p0, p1, p2}, Lcom/etermax/preguntados/ui/newgame/b/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 62
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/b/c;->e:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 63
    return-void
.end method
