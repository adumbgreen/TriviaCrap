.class public final Lcom/etermax/preguntados/ui/d/c;
.super Lcom/etermax/preguntados/ui/d/a;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;
.implements Lorg/a/a/b/b;


# instance fields
.field private final j:Lorg/a/a/b/c;

.field private k:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/d/a;-><init>()V

    .line 24
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/d/c;->j:Lorg/a/a/b/c;

    .line 163
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 52
    invoke-static {p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/b;)V

    .line 53
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/d/c;->i()V

    .line 54
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/d/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/datasource/e;->a(Landroid/content/Context;)Lcom/etermax/preguntados/datasource/e;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/d/c;->e:Lcom/etermax/preguntados/datasource/d;

    .line 55
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/d/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/ui/d/j;->g(Landroid/content/Context;)Lcom/etermax/preguntados/ui/d/j;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/d/c;->d:Lcom/etermax/preguntados/ui/d/i;

    .line 56
    return-void
.end method

.method public static h()Lcom/etermax/preguntados/ui/d/d;
    .locals 2

    .prologue
    .line 65
    new-instance v0, Lcom/etermax/preguntados/ui/d/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/etermax/preguntados/ui/d/d;-><init>(Lcom/etermax/preguntados/ui/d/c$1;)V

    return-object v0
.end method

.method private i()V
    .locals 2

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/d/c;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 150
    if-eqz v1, :cond_2

    .line 151
    const-string v0, "mTipType"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    const-string v0, "mTipType"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/etermax/preguntados/ui/d/c;->c:I

    .line 154
    :cond_0
    const-string v0, "mGame"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    const-string v0, "mGame"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/GameDTO;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/d/c;->b:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    .line 157
    :cond_1
    const-string v0, "mToTypeQuestion"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 158
    const-string v0, "mToTypeQuestion"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/etermax/preguntados/ui/d/c;->a:I

    .line 161
    :cond_2
    return-void
.end method


# virtual methods
.method public a(Lorg/a/a/b/a;)V
    .locals 2
    .parameter

    .prologue
    .line 71
    const v0, 0x7f0a028f

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 72
    if-eqz v0, :cond_0

    .line 73
    new-instance v1, Lcom/etermax/preguntados/ui/d/c$1;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/d/c$1;-><init>(Lcom/etermax/preguntados/ui/d/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    :cond_0
    const v0, 0x7f0a028c

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 87
    if-eqz v0, :cond_1

    .line 88
    new-instance v1, Lcom/etermax/preguntados/ui/d/c$2;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/d/c$2;-><init>(Lcom/etermax/preguntados/ui/d/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    :cond_1
    const v0, 0x7f0a0295

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 102
    if-eqz v0, :cond_2

    .line 103
    new-instance v1, Lcom/etermax/preguntados/ui/d/c$3;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/d/c$3;-><init>(Lcom/etermax/preguntados/ui/d/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    :cond_2
    const v0, 0x7f0a0292

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_3

    .line 118
    new-instance v1, Lcom/etermax/preguntados/ui/d/c$4;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/d/c$4;-><init>(Lcom/etermax/preguntados/ui/d/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    :cond_3
    const v0, 0x7f0a0505

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 132
    if-eqz v0, :cond_4

    .line 133
    new-instance v1, Lcom/etermax/preguntados/ui/d/c$5;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/d/c$5;-><init>(Lcom/etermax/preguntados/ui/d/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    :cond_4
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/d/c;->b()V

    .line 146
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/etermax/preguntados/ui/d/c;->k:Landroid/view/View;

    if-nez v0, :cond_0

    .line 40
    const/4 v0, 0x0

    .line 42
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/d/c;->k:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/etermax/preguntados/ui/d/c;->j:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 33
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/d/c;->a(Landroid/os/Bundle;)V

    .line 34
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/d/a;->onCreate(Landroid/os/Bundle;)V

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
    invoke-super {p0, p1, p2, p3}, Lcom/etermax/preguntados/ui/d/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/d/c;->k:Landroid/view/View;

    .line 48
    iget-object v0, p0, Lcom/etermax/preguntados/ui/d/c;->k:Landroid/view/View;

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-super {p0, p1, p2}, Lcom/etermax/preguntados/ui/d/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 61
    iget-object v0, p0, Lcom/etermax/preguntados/ui/d/c;->j:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 62
    return-void
.end method
