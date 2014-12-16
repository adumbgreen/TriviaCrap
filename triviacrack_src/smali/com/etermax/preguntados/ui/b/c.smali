.class public final Lcom/etermax/preguntados/ui/b/c;
.super Lcom/etermax/preguntados/ui/b/a;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;
.implements Lorg/a/a/b/b;


# instance fields
.field private final h:Lorg/a/a/b/c;

.field private i:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/b/a;-><init>()V

    .line 27
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/b/c;->h:Lorg/a/a/b/c;

    .line 120
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    invoke-static {p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/b;)V

    .line 57
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/b/c;->f()V

    .line 58
    return-void
.end method

.method public static e()Lcom/etermax/preguntados/ui/b/d;
    .locals 2

    .prologue
    .line 67
    new-instance v0, Lcom/etermax/preguntados/ui/b/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/etermax/preguntados/ui/b/d;-><init>(Lcom/etermax/preguntados/ui/b/c$1;)V

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/b/c;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 113
    if-eqz v0, :cond_0

    .line 114
    const-string v1, "levelDTO"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    const-string v1, "levelDTO"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/b/c;->a:Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;

    .line 118
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lorg/a/a/b/a;)V
    .locals 2
    .parameter

    .prologue
    .line 72
    const v0, 0x7f0a0363

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/b/c;->g:Landroid/widget/TextView;

    .line 73
    const v0, 0x7f0a0364

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/b/c;->b:Landroid/widget/ImageView;

    .line 74
    const v0, 0x7f0a0367

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/b/c;->c:Landroid/widget/TextView;

    .line 75
    const v0, 0x7f0a0362

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/b/c;->f:Landroid/widget/TextView;

    .line 76
    const v0, 0x7f0a0365

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/b/c;->e:Landroid/widget/LinearLayout;

    .line 77
    const v0, 0x7f0a0366

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/b/c;->d:Landroid/widget/ImageView;

    .line 79
    const v0, 0x7f0a0360

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_0

    .line 81
    new-instance v1, Lcom/etermax/preguntados/ui/b/c$1;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/b/c$1;-><init>(Lcom/etermax/preguntados/ui/b/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    :cond_0
    const v0, 0x7f0a035f

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 95
    if-eqz v0, :cond_1

    .line 96
    new-instance v1, Lcom/etermax/preguntados/ui/b/c$2;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/b/c$2;-><init>(Lcom/etermax/preguntados/ui/b/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    :cond_1
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/b/c;->b()V

    .line 109
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/etermax/preguntados/ui/b/c;->i:Landroid/view/View;

    if-nez v0, :cond_0

    .line 41
    const/4 v0, 0x0

    .line 43
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/b/c;->i:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/etermax/preguntados/ui/b/c;->h:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 34
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/b/c;->a(Landroid/os/Bundle;)V

    .line 35
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/b/a;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 37
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-super {p0, p1, p2, p3}, Lcom/etermax/preguntados/ui/b/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/b/c;->i:Landroid/view/View;

    .line 49
    iget-object v0, p0, Lcom/etermax/preguntados/ui/b/c;->i:Landroid/view/View;

    if-nez v0, :cond_0

    .line 50
    const v0, 0x7f0300ea

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/b/c;->i:Landroid/view/View;

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/b/c;->i:Landroid/view/View;

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-super {p0, p1, p2}, Lcom/etermax/preguntados/ui/b/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 63
    iget-object v0, p0, Lcom/etermax/preguntados/ui/b/c;->h:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 64
    return-void
.end method
