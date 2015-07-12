.class public final Lcom/etermax/gamescommon/login/ui/f;
.super Lcom/etermax/gamescommon/login/ui/d;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;
.implements Lorg/a/a/b/b;


# instance fields
.field private final g:Lorg/a/a/b/c;

.field private h:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/etermax/gamescommon/login/ui/d;-><init>()V

    .line 31
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/gamescommon/login/ui/f;->g:Lorg/a/a/b/c;

    .line 248
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 59
    invoke-static {p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/b;)V

    .line 60
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/ui/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/gamescommon/login/datasource/b;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/login/datasource/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/login/ui/f;->b:Lcom/etermax/gamescommon/login/datasource/a;

    .line 61
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/ui/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/tools/a/a/k;->a(Landroid/content/Context;)Lcom/etermax/tools/a/a/k;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/login/ui/f;->c:Lcom/etermax/tools/a/a/j;

    .line 62
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/ui/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/gamescommon/login/datasource/d;->b(Landroid/content/Context;)Lcom/etermax/gamescommon/login/datasource/d;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/login/ui/f;->a:Lcom/etermax/gamescommon/login/datasource/c;

    .line 63
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/ui/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/gamescommon/datasource/i;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/datasource/i;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/login/ui/f;->d:Lcom/etermax/gamescommon/datasource/e;

    .line 64
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/ui/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/gamescommon/datasource/k;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/datasource/k;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/login/ui/f;->e:Lcom/etermax/gamescommon/datasource/j;

    .line 65
    return-void
.end method


# virtual methods
.method public a(Lorg/a/a/b/a;)V
    .locals 3
    .parameter

    .prologue
    const v2, 0x7f0a0316

    .line 79
    invoke-interface {p1, v2}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/etermax/gamescommon/login/ui/f;->f:Landroid/widget/ToggleButton;

    .line 81
    const v0, 0x7f0a030e

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_0

    .line 83
    new-instance v1, Lcom/etermax/gamescommon/login/ui/f$1;

    invoke-direct {v1, p0}, Lcom/etermax/gamescommon/login/ui/f$1;-><init>(Lcom/etermax/gamescommon/login/ui/f;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    :cond_0
    const v0, 0x7f0a0317

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_1

    .line 98
    new-instance v1, Lcom/etermax/gamescommon/login/ui/f$4;

    invoke-direct {v1, p0}, Lcom/etermax/gamescommon/login/ui/f$4;-><init>(Lcom/etermax/gamescommon/login/ui/f;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    :cond_1
    const v0, 0x7f0a030d

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_2

    .line 113
    new-instance v1, Lcom/etermax/gamescommon/login/ui/f$5;

    invoke-direct {v1, p0}, Lcom/etermax/gamescommon/login/ui/f$5;-><init>(Lcom/etermax/gamescommon/login/ui/f;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    :cond_2
    const v0, 0x7f0a0318

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 127
    if-eqz v0, :cond_3

    .line 128
    new-instance v1, Lcom/etermax/gamescommon/login/ui/f$6;

    invoke-direct {v1, p0}, Lcom/etermax/gamescommon/login/ui/f$6;-><init>(Lcom/etermax/gamescommon/login/ui/f;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    :cond_3
    const v0, 0x7f0a0315

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 142
    if-eqz v0, :cond_4

    .line 143
    new-instance v1, Lcom/etermax/gamescommon/login/ui/f$7;

    invoke-direct {v1, p0}, Lcom/etermax/gamescommon/login/ui/f$7;-><init>(Lcom/etermax/gamescommon/login/ui/f;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    :cond_4
    const v0, 0x7f0a0310

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 157
    if-eqz v0, :cond_5

    .line 158
    new-instance v1, Lcom/etermax/gamescommon/login/ui/f$8;

    invoke-direct {v1, p0}, Lcom/etermax/gamescommon/login/ui/f$8;-><init>(Lcom/etermax/gamescommon/login/ui/f;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    :cond_5
    const v0, 0x7f0a0314

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 172
    if-eqz v0, :cond_6

    .line 173
    new-instance v1, Lcom/etermax/gamescommon/login/ui/f$9;

    invoke-direct {v1, p0}, Lcom/etermax/gamescommon/login/ui/f$9;-><init>(Lcom/etermax/gamescommon/login/ui/f;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    :cond_6
    const v0, 0x7f0a030c

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 187
    if-eqz v0, :cond_7

    .line 188
    new-instance v1, Lcom/etermax/gamescommon/login/ui/f$10;

    invoke-direct {v1, p0}, Lcom/etermax/gamescommon/login/ui/f$10;-><init>(Lcom/etermax/gamescommon/login/ui/f;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    :cond_7
    const v0, 0x7f0a0311

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 202
    if-eqz v0, :cond_8

    .line 203
    new-instance v1, Lcom/etermax/gamescommon/login/ui/f$11;

    invoke-direct {v1, p0}, Lcom/etermax/gamescommon/login/ui/f$11;-><init>(Lcom/etermax/gamescommon/login/ui/f;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    :cond_8
    const v0, 0x7f0a030f

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 217
    if-eqz v0, :cond_9

    .line 218
    new-instance v1, Lcom/etermax/gamescommon/login/ui/f$2;

    invoke-direct {v1, p0}, Lcom/etermax/gamescommon/login/ui/f$2;-><init>(Lcom/etermax/gamescommon/login/ui/f;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    :cond_9
    invoke-interface {p1, v2}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    .line 232
    if-eqz v0, :cond_a

    .line 233
    new-instance v1, Lcom/etermax/gamescommon/login/ui/f$3;

    invoke-direct {v1, p0}, Lcom/etermax/gamescommon/login/ui/f$3;-><init>(Lcom/etermax/gamescommon/login/ui/f;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 245
    :cond_a
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/ui/f;->a()V

    .line 246
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/f;->h:Landroid/view/View;

    if-nez v0, :cond_0

    .line 44
    const/4 v0, 0x0

    .line 46
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/f;->h:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/f;->g:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 37
    invoke-direct {p0, p1}, Lcom/etermax/gamescommon/login/ui/f;->a(Landroid/os/Bundle;)V

    .line 38
    invoke-super {p0, p1}, Lcom/etermax/gamescommon/login/ui/d;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 40
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-super {p0, p1, p2, p3}, Lcom/etermax/gamescommon/login/ui/d;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/login/ui/f;->h:Landroid/view/View;

    .line 52
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/f;->h:Landroid/view/View;

    if-nez v0, :cond_0

    .line 53
    const v0, 0x7f0300c6

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/login/ui/f;->h:Landroid/view/View;

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/f;->h:Landroid/view/View;

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-super {p0, p1, p2}, Lcom/etermax/gamescommon/login/ui/d;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 70
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/f;->g:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 71
    return-void
.end method
