.class public abstract Lcom/etermax/gamescommon/i/b/g;
.super Lcom/etermax/tools/navigation/b;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ValidFragment"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/navigation/b",
        "<",
        "Lcom/etermax/gamescommon/i/b/h;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Lcom/etermax/gamescommon/login/datasource/a;

.field protected b:Lcom/etermax/tools/social/a/b;

.field protected c:Lcom/etermax/gamescommon/datasource/e;

.field protected d:Lcom/etermax/gamescommon/login/datasource/c;

.field protected e:Lcom/etermax/tools/j/a;

.field protected f:Lcom/etermax/gamescommon/e;

.field protected g:Lcom/etermax/gamescommon/i/a/a;

.field protected h:Lcom/etermax/tools/f/a;

.field private i:Landroid/widget/ToggleButton;

.field private j:Landroid/widget/ToggleButton;

.field private k:Landroid/widget/ToggleButton;

.field private l:Landroid/widget/ToggleButton;

.field private m:Landroid/widget/ToggleButton;

.field private n:Landroid/widget/ToggleButton;

.field private o:Landroid/widget/ToggleButton;

.field private p:Landroid/widget/ToggleButton;

.field private q:Landroid/widget/ToggleButton;

.field private r:Landroid/widget/ViewSwitcher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/etermax/tools/navigation/b;-><init>()V

    .line 585
    return-void
.end method

.method static synthetic a(Lcom/etermax/gamescommon/i/b/g;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/g;->mCallbacks:Ljava/lang/Object;

    return-object v0
.end method

.method private a(Landroid/widget/ToggleButton;)V
    .locals 1
    .parameter

    .prologue
    .line 299
    new-instance v0, Lcom/etermax/gamescommon/i/b/g$7;

    invoke-direct {v0, p0, p1}, Lcom/etermax/gamescommon/i/b/g$7;-><init>(Lcom/etermax/gamescommon/i/b/g;Landroid/widget/ToggleButton;)V

    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    return-void
.end method

.method static synthetic b(Lcom/etermax/gamescommon/i/b/g;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/g;->mCallbacks:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c(Lcom/etermax/gamescommon/i/b/g;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/g;->mCallbacks:Ljava/lang/Object;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 638
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/g;->h:Lcom/etermax/tools/f/a;

    if-eqz v0, :cond_0

    .line 639
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/g;->h:Lcom/etermax/tools/f/a;

    new-instance v1, Lcom/etermax/gamescommon/b/ai;

    invoke-direct {v1}, Lcom/etermax/gamescommon/b/ai;-><init>()V

    invoke-virtual {v0, v1}, Lcom/etermax/tools/f/a;->a(Lcom/etermax/tools/f/a/a;)V

    .line 641
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/etermax/gamescommon/i/b/g;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/g;->mCallbacks:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic e(Lcom/etermax/gamescommon/i/b/g;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/g;->mCallbacks:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic f(Lcom/etermax/gamescommon/i/b/g;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/etermax/gamescommon/i/b/g;->c()V

    return-void
.end method

.method static synthetic g(Lcom/etermax/gamescommon/i/b/g;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/g;->mCallbacks:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic h(Lcom/etermax/gamescommon/i/b/g;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/g;->mCallbacks:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic i(Lcom/etermax/gamescommon/i/b/g;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/g;->mCallbacks:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic j(Lcom/etermax/gamescommon/i/b/g;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/g;->mCallbacks:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic k(Lcom/etermax/gamescommon/i/b/g;)Landroid/widget/ToggleButton;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/g;->o:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic l(Lcom/etermax/gamescommon/i/b/g;)Landroid/widget/ToggleButton;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/g;->p:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic m(Lcom/etermax/gamescommon/i/b/g;)Landroid/widget/ToggleButton;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/g;->m:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic n(Lcom/etermax/gamescommon/i/b/g;)Landroid/widget/ToggleButton;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/g;->n:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic o(Lcom/etermax/gamescommon/i/b/g;)Landroid/widget/ToggleButton;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/g;->q:Landroid/widget/ToggleButton;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 3

    .prologue
    .line 581
    invoke-virtual {p0}, Lcom/etermax/gamescommon/i/b/g;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/g;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/gamescommon/i/b/h;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/etermax/gamescommon/i/b/k;->a(Landroid/content/Context;Lcom/etermax/gamescommon/i/b/h;Z)Lcom/etermax/gamescommon/i/b/k;

    move-result-object v0

    invoke-virtual {p0}, Lcom/etermax/gamescommon/i/b/g;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/i/b/k;->a(Landroid/support/v4/app/FragmentManager;)V

    .line 582
    return-void
.end method

.method public b()Lcom/etermax/gamescommon/i/b/h;
    .locals 1

    .prologue
    .line 603
    new-instance v0, Lcom/etermax/gamescommon/i/b/g$8;

    invoke-direct {v0, p0}, Lcom/etermax/gamescommon/i/b/g$8;-><init>(Lcom/etermax/gamescommon/i/b/g;)V

    return-object v0
.end method

.method public synthetic getDummyCallbacks()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/etermax/gamescommon/i/b/g;->b()Lcom/etermax/gamescommon/i/b/h;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 94
    sget v0, Lcom/etermax/k;->settings_fragment:I

    invoke-virtual {p1, v0, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 95
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/g;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/gamescommon/i/b/h;

    invoke-interface {v0, v1}, Lcom/etermax/gamescommon/i/b/h;->onViewCreated(Landroid/view/View;)V

    .line 99
    sget v0, Lcom/etermax/i;->btn_account:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 100
    new-instance v2, Lcom/etermax/gamescommon/i/b/g$1;

    invoke-direct {v2, p0}, Lcom/etermax/gamescommon/i/b/g$1;-><init>(Lcom/etermax/gamescommon/i/b/g;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    sget v0, Lcom/etermax/i;->toggle_notifications:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/etermax/gamescommon/i/b/g;->i:Landroid/widget/ToggleButton;

    .line 111
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/g;->i:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 112
    sget v0, Lcom/etermax/i;->toggle_notifications_sound:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/etermax/gamescommon/i/b/g;->j:Landroid/widget/ToggleButton;

    .line 113
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/g;->j:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 114
    sget v0, Lcom/etermax/i;->toggle_notifications_vibrate:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/etermax/gamescommon/i/b/g;->k:Landroid/widget/ToggleButton;

    .line 115
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/g;->k:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 116
    sget v0, Lcom/etermax/i;->toggle_ask_confirmation:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/etermax/gamescommon/i/b/g;->l:Landroid/widget/ToggleButton;

    .line 117
    sget v0, Lcom/etermax/i;->toggle_friends_only_games:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/etermax/gamescommon/i/b/g;->m:Landroid/widget/ToggleButton;

    .line 118
    sget v0, Lcom/etermax/i;->toggle_mail_news:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/etermax/gamescommon/i/b/g;->n:Landroid/widget/ToggleButton;

    .line 119
    sget v0, Lcom/etermax/i;->toggle_display_name:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/etermax/gamescommon/i/b/g;->o:Landroid/widget/ToggleButton;

    .line 120
    sget v0, Lcom/etermax/i;->toggle_display_picture:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/etermax/gamescommon/i/b/g;->p:Landroid/widget/ToggleButton;

    .line 121
    sget v0, Lcom/etermax/i;->toggle_allow_og_posts:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/etermax/gamescommon/i/b/g;->q:Landroid/widget/ToggleButton;

    .line 122
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/g;->m:Landroid/widget/ToggleButton;

    invoke-direct {p0, v0}, Lcom/etermax/gamescommon/i/b/g;->a(Landroid/widget/ToggleButton;)V

    .line 123
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/g;->n:Landroid/widget/ToggleButton;

    invoke-direct {p0, v0}, Lcom/etermax/gamescommon/i/b/g;->a(Landroid/widget/ToggleButton;)V

    .line 125
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/g;->a:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/a;->j()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/g;->o:Landroid/widget/ToggleButton;

    invoke-direct {p0, v0}, Lcom/etermax/gamescommon/i/b/g;->a(Landroid/widget/ToggleButton;)V

    .line 127
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/g;->p:Landroid/widget/ToggleButton;

    invoke-direct {p0, v0}, Lcom/etermax/gamescommon/i/b/g;->a(Landroid/widget/ToggleButton;)V

    .line 128
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/g;->q:Landroid/widget/ToggleButton;

    invoke-direct {p0, v0}, Lcom/etermax/gamescommon/i/b/g;->a(Landroid/widget/ToggleButton;)V

    .line 134
    :goto_0
    sget v0, Lcom/etermax/i;->userIcon:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    iput-object v0, p0, Lcom/etermax/gamescommon/i/b/g;->r:Landroid/widget/ViewSwitcher;

    .line 135
    new-instance v0, Lcom/etermax/gamescommon/dashboard/b;

    invoke-direct {v0}, Lcom/etermax/gamescommon/dashboard/b;-><init>()V

    iget-object v2, p0, Lcom/etermax/gamescommon/i/b/g;->r:Landroid/widget/ViewSwitcher;

    new-instance v3, Lcom/etermax/gamescommon/i/b/g$2;

    invoke-direct {v3, p0}, Lcom/etermax/gamescommon/i/b/g$2;-><init>(Lcom/etermax/gamescommon/i/b/g;)V

    invoke-virtual {v0, v2, v3}, Lcom/etermax/gamescommon/dashboard/b;->a(Landroid/widget/ViewSwitcher;Lcom/etermax/gamescommon/k;)V

    .line 167
    invoke-virtual {p0}, Lcom/etermax/gamescommon/i/b/g;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "help_ids"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 168
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 169
    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v3, Lcom/etermax/gamescommon/i/b/g$3;

    invoke-direct {v3, p0}, Lcom/etermax/gamescommon/i/b/g$3;-><init>(Lcom/etermax/gamescommon/i/b/g;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 130
    :cond_1
    sget v0, Lcom/etermax/i;->facebook_title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 131
    sget v0, Lcom/etermax/i;->facebook_layout:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 182
    :cond_2
    invoke-virtual {p0}, Lcom/etermax/gamescommon/i/b/g;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "show_purchase"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 183
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/g;->e:Lcom/etermax/tools/j/a;

    invoke-virtual {v0}, Lcom/etermax/tools/j/a;->c()Z

    move-result v0

    if-nez v0, :cond_3

    .line 184
    sget v0, Lcom/etermax/i;->txt_purchase:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 185
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 186
    sget v0, Lcom/etermax/i;->btn_purchase:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 187
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 188
    new-instance v2, Lcom/etermax/gamescommon/i/b/g$4;

    invoke-direct {v2, p0}, Lcom/etermax/gamescommon/i/b/g$4;-><init>(Lcom/etermax/gamescommon/i/b/g;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    :cond_3
    sget v0, Lcom/etermax/i;->btn_logout:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 208
    new-instance v2, Lcom/etermax/gamescommon/i/b/g$5;

    invoke-direct {v2, p0}, Lcom/etermax/gamescommon/i/b/g$5;-><init>(Lcom/etermax/gamescommon/i/b/g;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    sget v0, Lcom/etermax/i;->txt_version:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "v"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/etermax/gamescommon/i/b/g;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/etermax/a/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    return-object v1
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 286
    invoke-super {p0}, Lcom/etermax/tools/navigation/b;->onPause()V

    .line 287
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/g;->f:Lcom/etermax/gamescommon/e;

    sget-object v1, Lcom/etermax/gamescommon/g;->e:Lcom/etermax/gamescommon/g;

    iget-object v2, p0, Lcom/etermax/gamescommon/i/b/g;->i:Landroid/widget/ToggleButton;

    invoke-virtual {v2}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/e;->b(Lcom/etermax/gamescommon/g;Z)V

    .line 288
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/g;->f:Lcom/etermax/gamescommon/e;

    sget-object v1, Lcom/etermax/gamescommon/g;->f:Lcom/etermax/gamescommon/g;

    iget-object v2, p0, Lcom/etermax/gamescommon/i/b/g;->j:Landroid/widget/ToggleButton;

    invoke-virtual {v2}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/e;->b(Lcom/etermax/gamescommon/g;Z)V

    .line 289
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/g;->f:Lcom/etermax/gamescommon/e;

    sget-object v1, Lcom/etermax/gamescommon/g;->g:Lcom/etermax/gamescommon/g;

    iget-object v2, p0, Lcom/etermax/gamescommon/i/b/g;->k:Landroid/widget/ToggleButton;

    invoke-virtual {v2}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/e;->b(Lcom/etermax/gamescommon/g;Z)V

    .line 290
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/g;->f:Lcom/etermax/gamescommon/e;

    sget-object v1, Lcom/etermax/gamescommon/g;->h:Lcom/etermax/gamescommon/g;

    iget-object v2, p0, Lcom/etermax/gamescommon/i/b/g;->l:Landroid/widget/ToggleButton;

    invoke-virtual {v2}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/e;->b(Lcom/etermax/gamescommon/g;Z)V

    .line 291
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/g;->f:Lcom/etermax/gamescommon/e;

    sget-object v1, Lcom/etermax/gamescommon/g;->o:Lcom/etermax/gamescommon/g;

    iget-object v2, p0, Lcom/etermax/gamescommon/i/b/g;->n:Landroid/widget/ToggleButton;

    invoke-virtual {v2}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/e;->b(Lcom/etermax/gamescommon/g;Z)V

    .line 292
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/g;->f:Lcom/etermax/gamescommon/e;

    sget-object v1, Lcom/etermax/gamescommon/g;->l:Lcom/etermax/gamescommon/g;

    iget-object v2, p0, Lcom/etermax/gamescommon/i/b/g;->m:Landroid/widget/ToggleButton;

    invoke-virtual {v2}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/e;->b(Lcom/etermax/gamescommon/g;Z)V

    .line 293
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/g;->f:Lcom/etermax/gamescommon/e;

    sget-object v1, Lcom/etermax/gamescommon/g;->m:Lcom/etermax/gamescommon/g;

    iget-object v2, p0, Lcom/etermax/gamescommon/i/b/g;->o:Landroid/widget/ToggleButton;

    invoke-virtual {v2}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/e;->b(Lcom/etermax/gamescommon/g;Z)V

    .line 294
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/g;->f:Lcom/etermax/gamescommon/e;

    sget-object v1, Lcom/etermax/gamescommon/g;->n:Lcom/etermax/gamescommon/g;

    iget-object v2, p0, Lcom/etermax/gamescommon/i/b/g;->p:Landroid/widget/ToggleButton;

    invoke-virtual {v2}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/e;->b(Lcom/etermax/gamescommon/g;Z)V

    .line 295
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/g;->f:Lcom/etermax/gamescommon/e;

    sget-object v1, Lcom/etermax/gamescommon/g;->s:Lcom/etermax/gamescommon/g;

    iget-object v2, p0, Lcom/etermax/gamescommon/i/b/g;->q:Landroid/widget/ToggleButton;

    invoke-virtual {v2}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/e;->b(Lcom/etermax/gamescommon/g;Z)V

    .line 296
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 237
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/g;->i:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/etermax/gamescommon/i/b/g;->f:Lcom/etermax/gamescommon/e;

    sget-object v2, Lcom/etermax/gamescommon/g;->e:Lcom/etermax/gamescommon/g;

    invoke-virtual {v1, v2, v3}, Lcom/etermax/gamescommon/e;->a(Lcom/etermax/gamescommon/g;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 238
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/g;->j:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/etermax/gamescommon/i/b/g;->f:Lcom/etermax/gamescommon/e;

    sget-object v2, Lcom/etermax/gamescommon/g;->f:Lcom/etermax/gamescommon/g;

    invoke-virtual {v1, v2, v3}, Lcom/etermax/gamescommon/e;->a(Lcom/etermax/gamescommon/g;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 239
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/g;->k:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/etermax/gamescommon/i/b/g;->f:Lcom/etermax/gamescommon/e;

    sget-object v2, Lcom/etermax/gamescommon/g;->g:Lcom/etermax/gamescommon/g;

    invoke-virtual {v1, v2, v3}, Lcom/etermax/gamescommon/e;->a(Lcom/etermax/gamescommon/g;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 240
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/g;->l:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/etermax/gamescommon/i/b/g;->f:Lcom/etermax/gamescommon/e;

    sget-object v2, Lcom/etermax/gamescommon/g;->h:Lcom/etermax/gamescommon/g;

    invoke-virtual {v1, v2, v3}, Lcom/etermax/gamescommon/e;->a(Lcom/etermax/gamescommon/g;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 241
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/g;->m:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/etermax/gamescommon/i/b/g;->f:Lcom/etermax/gamescommon/e;

    sget-object v2, Lcom/etermax/gamescommon/g;->l:Lcom/etermax/gamescommon/g;

    invoke-virtual {v1, v2, v3}, Lcom/etermax/gamescommon/e;->a(Lcom/etermax/gamescommon/g;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 242
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/g;->n:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/etermax/gamescommon/i/b/g;->f:Lcom/etermax/gamescommon/e;

    sget-object v2, Lcom/etermax/gamescommon/g;->o:Lcom/etermax/gamescommon/g;

    invoke-virtual {v1, v2, v3}, Lcom/etermax/gamescommon/e;->a(Lcom/etermax/gamescommon/g;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 244
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/g;->a:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/a;->j()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/g;->o:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/etermax/gamescommon/i/b/g;->f:Lcom/etermax/gamescommon/e;

    sget-object v2, Lcom/etermax/gamescommon/g;->m:Lcom/etermax/gamescommon/g;

    invoke-virtual {v1, v2, v3}, Lcom/etermax/gamescommon/e;->a(Lcom/etermax/gamescommon/g;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 246
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/g;->p:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/etermax/gamescommon/i/b/g;->f:Lcom/etermax/gamescommon/e;

    sget-object v2, Lcom/etermax/gamescommon/g;->n:Lcom/etermax/gamescommon/g;

    invoke-virtual {v1, v2, v3}, Lcom/etermax/gamescommon/e;->a(Lcom/etermax/gamescommon/g;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 247
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/g;->q:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/etermax/gamescommon/i/b/g;->f:Lcom/etermax/gamescommon/e;

    sget-object v2, Lcom/etermax/gamescommon/g;->s:Lcom/etermax/gamescommon/g;

    invoke-virtual {v1, v2, v3}, Lcom/etermax/gamescommon/e;->a(Lcom/etermax/gamescommon/g;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 250
    :cond_0
    new-instance v0, Lcom/etermax/gamescommon/i/b/j;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/etermax/gamescommon/i/b/j;-><init>(Lcom/etermax/gamescommon/i/b/g;Lcom/etermax/gamescommon/i/b/g$1;)V

    invoke-virtual {v0, p0}, Lcom/etermax/gamescommon/i/b/j;->a(Ljava/lang/Object;)Z

    .line 252
    new-instance v0, Lcom/etermax/gamescommon/dashboard/b;

    invoke-direct {v0}, Lcom/etermax/gamescommon/dashboard/b;-><init>()V

    iget-object v1, p0, Lcom/etermax/gamescommon/i/b/g;->r:Landroid/widget/ViewSwitcher;

    new-instance v2, Lcom/etermax/gamescommon/i/b/g$6;

    invoke-direct {v2, p0}, Lcom/etermax/gamescommon/i/b/g$6;-><init>(Lcom/etermax/gamescommon/i/b/g;)V

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/dashboard/b;->a(Landroid/widget/ViewSwitcher;Lcom/etermax/gamescommon/k;)V

    .line 281
    invoke-super {p0}, Lcom/etermax/tools/navigation/b;->onResume()V

    .line 282
    return-void
.end method
