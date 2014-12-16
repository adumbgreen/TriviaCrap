.class public final Lcom/etermax/preguntados/ui/newgame/d;
.super Lcom/etermax/preguntados/ui/newgame/b;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;
.implements Lorg/a/a/b/b;


# instance fields
.field private final n:Lorg/a/a/b/c;

.field private o:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/newgame/b;-><init>()V

    .line 27
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/d;->n:Lorg/a/a/b/c;

    .line 187
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 52
    invoke-static {p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/b;)V

    .line 53
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/newgame/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/gamescommon/login/datasource/b;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/login/datasource/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/d;->d:Lcom/etermax/gamescommon/login/datasource/a;

    .line 54
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/newgame/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/datasource/e;->a(Landroid/content/Context;)Lcom/etermax/preguntados/datasource/e;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/d;->c:Lcom/etermax/preguntados/datasource/d;

    .line 55
    return-void
.end method


# virtual methods
.method public a(Lorg/a/a/b/a;)V
    .locals 6
    .parameter

    .prologue
    const v5, 0x7f0a0342

    const v4, 0x7f0a0340

    const v3, 0x7f0a0349

    const v2, 0x7f0a0347

    .line 69
    const v0, 0x7f0a0352

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/view/FlagsLayout;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/d;->b:Lcom/etermax/gamescommon/view/FlagsLayout;

    .line 70
    const v0, 0x7f0a0348

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/d;->g:Landroid/view/View;

    .line 71
    const v0, 0x7f0a0343

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/d;->f:Landroid/view/View;

    .line 72
    invoke-interface {p1, v4}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/widget/ManualCustomLinearButton;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/d;->j:Lcom/etermax/preguntados/ui/widget/ManualCustomLinearButton;

    .line 73
    invoke-interface {p1, v5}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/widget/ManualCustomLinearButton;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/d;->k:Lcom/etermax/preguntados/ui/widget/ManualCustomLinearButton;

    .line 74
    invoke-interface {p1, v3}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/widget/ManualCustomLinearButton;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/d;->m:Lcom/etermax/preguntados/ui/widget/ManualCustomLinearButton;

    .line 75
    const v0, 0x7f0a0341

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/d;->e:Landroid/view/View;

    .line 76
    const v0, 0x7f0a034a

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/d;->h:Landroid/view/View;

    .line 77
    invoke-interface {p1, v2}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/widget/ManualCustomLinearButton;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/d;->l:Lcom/etermax/preguntados/ui/widget/ManualCustomLinearButton;

    .line 78
    const v0, 0x7f0a0344

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/d;->i:Landroid/widget/TextView;

    .line 80
    invoke-interface {p1, v3}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_0

    .line 82
    new-instance v1, Lcom/etermax/preguntados/ui/newgame/d$1;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/newgame/d$1;-><init>(Lcom/etermax/preguntados/ui/newgame/d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    :cond_0
    invoke-interface {p1, v2}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_1

    .line 97
    new-instance v1, Lcom/etermax/preguntados/ui/newgame/d$2;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/newgame/d$2;-><init>(Lcom/etermax/preguntados/ui/newgame/d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    :cond_1
    invoke-interface {p1, v3}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 111
    if-eqz v0, :cond_2

    .line 112
    new-instance v1, Lcom/etermax/preguntados/ui/newgame/d$3;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/newgame/d$3;-><init>(Lcom/etermax/preguntados/ui/newgame/d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    :cond_2
    const v0, 0x7f0a034c

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 126
    if-eqz v0, :cond_3

    .line 127
    new-instance v1, Lcom/etermax/preguntados/ui/newgame/d$4;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/newgame/d$4;-><init>(Lcom/etermax/preguntados/ui/newgame/d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    :cond_3
    invoke-interface {p1, v2}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 141
    if-eqz v0, :cond_4

    .line 142
    new-instance v1, Lcom/etermax/preguntados/ui/newgame/d$5;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/newgame/d$5;-><init>(Lcom/etermax/preguntados/ui/newgame/d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    :cond_4
    invoke-interface {p1, v4}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 156
    if-eqz v0, :cond_5

    .line 157
    new-instance v1, Lcom/etermax/preguntados/ui/newgame/d$6;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/newgame/d$6;-><init>(Lcom/etermax/preguntados/ui/newgame/d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    :cond_5
    invoke-interface {p1, v5}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 171
    if-eqz v0, :cond_6

    .line 172
    new-instance v1, Lcom/etermax/preguntados/ui/newgame/d$7;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/newgame/d$7;-><init>(Lcom/etermax/preguntados/ui/newgame/d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    :cond_6
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/newgame/d;->b()V

    .line 185
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/d;->o:Landroid/view/View;

    if-nez v0, :cond_0

    .line 40
    const/4 v0, 0x0

    .line 42
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/d;->o:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/d;->n:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 33
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/newgame/d;->a(Landroid/os/Bundle;)V

    .line 34
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/newgame/b;->onCreate(Landroid/os/Bundle;)V

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
    invoke-super {p0, p1, p2, p3}, Lcom/etermax/preguntados/ui/newgame/b;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/d;->o:Landroid/view/View;

    .line 48
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/d;->o:Landroid/view/View;

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-super {p0, p1, p2}, Lcom/etermax/preguntados/ui/newgame/b;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 60
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/d;->n:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 61
    return-void
.end method
