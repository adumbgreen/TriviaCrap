.class public final Lcom/etermax/preguntados/ui/help/c;
.super Lcom/etermax/preguntados/ui/help/a;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;
.implements Lorg/a/a/b/b;


# instance fields
.field private final a:Lorg/a/a/b/c;

.field private b:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/help/a;-><init>()V

    .line 22
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/help/c;->a:Lorg/a/a/b/c;

    .line 184
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    invoke-static {p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/b;)V

    .line 48
    return-void
.end method


# virtual methods
.method public a(Lorg/a/a/b/a;)V
    .locals 2
    .parameter

    .prologue
    .line 63
    const v0, 0x7f0a02c7

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 64
    if-eqz v0, :cond_0

    .line 65
    new-instance v1, Lcom/etermax/preguntados/ui/help/c$1;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/help/c$1;-><init>(Lcom/etermax/preguntados/ui/help/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    :cond_0
    const v0, 0x7f0a02c8

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 79
    if-eqz v0, :cond_1

    .line 80
    new-instance v1, Lcom/etermax/preguntados/ui/help/c$2;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/help/c$2;-><init>(Lcom/etermax/preguntados/ui/help/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    :cond_1
    const v0, 0x7f0a02cc

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_2

    .line 95
    new-instance v1, Lcom/etermax/preguntados/ui/help/c$3;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/help/c$3;-><init>(Lcom/etermax/preguntados/ui/help/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    :cond_2
    const v0, 0x7f0a02cb

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 109
    if-eqz v0, :cond_3

    .line 110
    new-instance v1, Lcom/etermax/preguntados/ui/help/c$4;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/help/c$4;-><init>(Lcom/etermax/preguntados/ui/help/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    :cond_3
    const v0, 0x7f0a02c9

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 124
    if-eqz v0, :cond_4

    .line 125
    new-instance v1, Lcom/etermax/preguntados/ui/help/c$5;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/help/c$5;-><init>(Lcom/etermax/preguntados/ui/help/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    :cond_4
    const v0, 0x7f0a02c6

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 139
    if-eqz v0, :cond_5

    .line 140
    new-instance v1, Lcom/etermax/preguntados/ui/help/c$6;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/help/c$6;-><init>(Lcom/etermax/preguntados/ui/help/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    :cond_5
    const v0, 0x7f0a02cd

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 154
    if-eqz v0, :cond_6

    .line 155
    new-instance v1, Lcom/etermax/preguntados/ui/help/c$7;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/help/c$7;-><init>(Lcom/etermax/preguntados/ui/help/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    :cond_6
    const v0, 0x7f0a02ca

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 169
    if-eqz v0, :cond_7

    .line 170
    new-instance v1, Lcom/etermax/preguntados/ui/help/c$8;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/help/c$8;-><init>(Lcom/etermax/preguntados/ui/help/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    :cond_7
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/etermax/preguntados/ui/help/c;->b:Landroid/view/View;

    if-nez v0, :cond_0

    .line 35
    const/4 v0, 0x0

    .line 37
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/help/c;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/etermax/preguntados/ui/help/c;->a:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 28
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/help/c;->a(Landroid/os/Bundle;)V

    .line 29
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/help/a;->onCreate(Landroid/os/Bundle;)V

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
    invoke-super {p0, p1, p2, p3}, Lcom/etermax/preguntados/ui/help/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/help/c;->b:Landroid/view/View;

    .line 43
    iget-object v0, p0, Lcom/etermax/preguntados/ui/help/c;->b:Landroid/view/View;

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-super {p0, p1, p2}, Lcom/etermax/preguntados/ui/help/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 53
    iget-object v0, p0, Lcom/etermax/preguntados/ui/help/c;->a:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 54
    return-void
.end method
