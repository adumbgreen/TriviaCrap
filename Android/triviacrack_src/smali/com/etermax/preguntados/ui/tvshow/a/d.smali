.class public final Lcom/etermax/preguntados/ui/tvshow/a/d;
.super Lcom/etermax/preguntados/ui/tvshow/a/a;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;
.implements Lorg/a/a/b/b;


# instance fields
.field private final s:Lorg/a/a/b/c;

.field private t:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/tvshow/a/a;-><init>()V

    .line 30
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/d;->s:Lorg/a/a/b/c;

    .line 222
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 58
    invoke-static {p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/b;)V

    .line 59
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/tvshow/a/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/datasource/e;->a(Landroid/content/Context;)Lcom/etermax/preguntados/datasource/e;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/d;->a:Lcom/etermax/preguntados/datasource/d;

    .line 60
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/tvshow/a/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/gamescommon/login/datasource/b;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/login/datasource/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/d;->b:Lcom/etermax/gamescommon/login/datasource/a;

    .line 61
    return-void
.end method

.method public static d()Lcom/etermax/preguntados/ui/tvshow/a/e;
    .locals 2

    .prologue
    .line 70
    new-instance v0, Lcom/etermax/preguntados/ui/tvshow/a/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/etermax/preguntados/ui/tvshow/a/e;-><init>(Lcom/etermax/preguntados/ui/tvshow/a/d$1;)V

    return-object v0
.end method


# virtual methods
.method public a(Lorg/a/a/b/a;)V
    .locals 4
    .parameter

    .prologue
    const v3, 0x7f0a0465

    const v2, 0x7f0a045b

    .line 75
    const v0, 0x7f0a0458

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/d;->r:Landroid/widget/TextView;

    .line 76
    const v0, 0x7f0a0454

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/d;->e:Landroid/widget/EditText;

    .line 77
    const v0, 0x7f0a0453

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/d;->d:Landroid/widget/EditText;

    .line 78
    const v0, 0x7f0a045f

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/d;->f:Landroid/widget/EditText;

    .line 79
    const v0, 0x7f0a0464

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/d;->n:Landroid/widget/EditText;

    .line 80
    const v0, 0x7f0a0463

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/d;->m:Landroid/widget/EditText;

    .line 81
    const v0, 0x7f0a0456

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/d;->l:Landroid/widget/EditText;

    .line 82
    invoke-interface {p1, v2}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/d;->h:Landroid/widget/EditText;

    .line 83
    const v0, 0x7f0a045d

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/d;->p:Landroid/widget/EditText;

    .line 84
    const v0, 0x7f0a0452

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/d;->c:Landroid/widget/EditText;

    .line 85
    const v0, 0x7f0a0457

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/d;->i:Landroid/widget/EditText;

    .line 86
    const v0, 0x7f0a0461

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/d;->g:Landroid/widget/EditText;

    .line 87
    const v0, 0x7f0a0459

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/d;->q:Landroid/widget/ToggleButton;

    .line 88
    const v0, 0x7f0a0455

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/d;->j:Landroid/widget/EditText;

    .line 89
    const v0, 0x7f0a0466

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/d;->k:Landroid/widget/ToggleButton;

    .line 90
    invoke-interface {p1, v3}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/d;->o:Landroid/widget/TextView;

    .line 92
    const v0, 0x7f0a045a

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 93
    if-eqz v0, :cond_0

    .line 94
    new-instance v1, Lcom/etermax/preguntados/ui/tvshow/a/d$1;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/tvshow/a/d$1;-><init>(Lcom/etermax/preguntados/ui/tvshow/a/d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    :cond_0
    invoke-interface {p1, v2}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 108
    if-eqz v0, :cond_1

    .line 109
    new-instance v1, Lcom/etermax/preguntados/ui/tvshow/a/d$2;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/tvshow/a/d$2;-><init>(Lcom/etermax/preguntados/ui/tvshow/a/d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    :cond_1
    const v0, 0x7f0a0451

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 123
    if-eqz v0, :cond_2

    .line 124
    new-instance v1, Lcom/etermax/preguntados/ui/tvshow/a/d$3;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/tvshow/a/d$3;-><init>(Lcom/etermax/preguntados/ui/tvshow/a/d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    :cond_2
    const v0, 0x7f0a0467

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 138
    if-eqz v0, :cond_3

    .line 139
    new-instance v1, Lcom/etermax/preguntados/ui/tvshow/a/d$4;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/tvshow/a/d$4;-><init>(Lcom/etermax/preguntados/ui/tvshow/a/d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    :cond_3
    invoke-interface {p1, v3}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 153
    if-eqz v0, :cond_4

    .line 154
    new-instance v1, Lcom/etermax/preguntados/ui/tvshow/a/d$5;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/tvshow/a/d$5;-><init>(Lcom/etermax/preguntados/ui/tvshow/a/d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    :cond_4
    const v0, 0x7f0a0460

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 168
    if-eqz v0, :cond_5

    .line 169
    new-instance v1, Lcom/etermax/preguntados/ui/tvshow/a/d$6;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/tvshow/a/d$6;-><init>(Lcom/etermax/preguntados/ui/tvshow/a/d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    :cond_5
    const v0, 0x7f0a045c

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 183
    if-eqz v0, :cond_6

    .line 184
    new-instance v1, Lcom/etermax/preguntados/ui/tvshow/a/d$7;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/tvshow/a/d$7;-><init>(Lcom/etermax/preguntados/ui/tvshow/a/d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    :cond_6
    invoke-interface {p1, v2}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 198
    if-eqz v0, :cond_7

    .line 199
    new-instance v1, Lcom/etermax/preguntados/ui/tvshow/a/d$8;

    invoke-direct {v1, p0, v0}, Lcom/etermax/preguntados/ui/tvshow/a/d$8;-><init>(Lcom/etermax/preguntados/ui/tvshow/a/d;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 219
    :cond_7
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/tvshow/a/d;->c()V

    .line 220
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/d;->t:Landroid/view/View;

    if-nez v0, :cond_0

    .line 43
    const/4 v0, 0x0

    .line 45
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/d;->t:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/d;->s:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 36
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/tvshow/a/d;->a(Landroid/os/Bundle;)V

    .line 37
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/tvshow/a/a;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 39
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-super {p0, p1, p2, p3}, Lcom/etermax/preguntados/ui/tvshow/a/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/d;->t:Landroid/view/View;

    .line 51
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/d;->t:Landroid/view/View;

    if-nez v0, :cond_0

    .line 52
    const v0, 0x7f030114

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/d;->t:Landroid/view/View;

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/d;->t:Landroid/view/View;

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-super {p0, p1, p2}, Lcom/etermax/preguntados/ui/tvshow/a/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 66
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/d;->s:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 67
    return-void
.end method
