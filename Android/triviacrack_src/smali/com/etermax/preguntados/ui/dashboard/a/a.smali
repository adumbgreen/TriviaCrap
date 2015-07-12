.class public Lcom/etermax/preguntados/ui/dashboard/a/a;
.super Lcom/etermax/tools/navigation/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/navigation/b",
        "<",
        "Lcom/etermax/preguntados/ui/dashboard/a/b;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/etermax/tools/f/a;

.field b:Lcom/etermax/gamescommon/social/a;

.field c:Lcom/etermax/gamescommon/login/datasource/a;

.field d:Lcom/etermax/gamescommon/social/h;

.field e:Lcom/etermax/preguntados/datasource/d;

.field f:Lcom/etermax/preguntados/b/a;

.field g:Landroid/widget/ImageView;

.field private h:Landroid/os/CountDownTimer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/etermax/tools/navigation/b;-><init>()V

    .line 54
    return-void
.end method

.method public static a()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 50
    invoke-static {}, Lcom/etermax/preguntados/ui/dashboard/a/c;->e()Lcom/etermax/preguntados/ui/dashboard/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/dashboard/a/d;->a()Lcom/etermax/preguntados/ui/dashboard/a/a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/dashboard/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/dashboard/a/a;->g()V

    return-void
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/dashboard/a/a;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/dashboard/a/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 161
    new-instance v0, Lcom/etermax/gamescommon/b/p;

    invoke-direct {v0}, Lcom/etermax/gamescommon/b/p;-><init>()V

    .line 162
    invoke-virtual {v0, p1}, Lcom/etermax/gamescommon/b/p;->a(Ljava/lang/String;)V

    .line 163
    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/a/a;->a:Lcom/etermax/tools/f/a;

    invoke-virtual {v1, v0}, Lcom/etermax/tools/f/a;->a(Lcom/etermax/tools/f/a/a;)V

    .line 164
    return-void
.end method

.method private e()V
    .locals 6

    .prologue
    .line 95
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/a/a;->h:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/a/a;->h:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/a/a;->e:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/d;->q()Lcom/etermax/preguntados/datasource/dto/LivesDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/LivesDTO;->getNextIncrement()I

    move-result v1

    .line 99
    new-instance v0, Lcom/etermax/preguntados/ui/dashboard/a/a$2;

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    const-wide/16 v4, 0xfa

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/etermax/preguntados/ui/dashboard/a/a$2;-><init>(Lcom/etermax/preguntados/ui/dashboard/a/a;JJ)V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/a/a;->h:Landroid/os/CountDownTimer;

    .line 111
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/a/a;->h:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 112
    return-void
.end method

.method private f()V
    .locals 1

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/a/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/a/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->x()V

    .line 118
    :cond_0
    return-void
.end method

.method private g()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 170
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/a/a;->c:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/a;->j()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 171
    sget v0, Lcom/etermax/o;->user_request:I

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/etermax/preguntados/ui/dashboard/a/a;->c:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v3}, Lcom/etermax/gamescommon/login/datasource/a;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/etermax/preguntados/ui/dashboard/a/a;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 176
    :goto_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/a/a;->d:Lcom/etermax/gamescommon/social/h;

    sget-object v3, Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO$Action;->ASK:Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO$Action;

    sget-object v5, Lcom/etermax/gamescommon/gifting/dto/GiftItemDTO$GiftType;->LIFE:Lcom/etermax/gamescommon/gifting/dto/GiftItemDTO$GiftType;

    new-instance v6, Lcom/etermax/preguntados/ui/dashboard/a/a$4;

    invoke-direct {v6, p0}, Lcom/etermax/preguntados/ui/dashboard/a/a$4;-><init>(Lcom/etermax/preguntados/ui/dashboard/a/a;)V

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/etermax/gamescommon/social/h;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO$Action;ILcom/etermax/gamescommon/gifting/dto/GiftItemDTO$GiftType;Lcom/etermax/gamescommon/social/i;)V

    .line 186
    return-void

    .line 173
    :cond_0
    sget v0, Lcom/etermax/o;->user_request:I

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/dashboard/a/a;->c:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v2}, Lcom/etermax/gamescommon/login/datasource/a;->k()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/etermax/preguntados/ui/dashboard/a/a;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 155
    new-instance v0, Lcom/etermax/preguntados/a/c/c;

    invoke-direct {v0}, Lcom/etermax/preguntados/a/c/c;-><init>()V

    .line 156
    invoke-virtual {v0, p1}, Lcom/etermax/preguntados/a/c/c;->a(Ljava/lang/String;)V

    .line 157
    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/a/a;->a:Lcom/etermax/tools/f/a;

    invoke-virtual {v1, v0}, Lcom/etermax/tools/f/a;->a(Lcom/etermax/tools/f/a/a;)V

    .line 158
    return-void
.end method

.method public b()Lcom/etermax/preguntados/ui/dashboard/a/b;
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lcom/etermax/preguntados/ui/dashboard/a/a$1;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/dashboard/a/a$1;-><init>(Lcom/etermax/preguntados/ui/dashboard/a/a;)V

    return-object v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/dashboard/a/a;->f()V

    .line 123
    const-string v0, "close_popup"

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/dashboard/a/a;->a(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/a/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate()Z

    .line 126
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 127
    return-void
.end method

.method public d()V
    .locals 3

    .prologue
    .line 131
    const-string v0, "ask_live"

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/dashboard/a/a;->a(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/a/a;->b:Lcom/etermax/gamescommon/social/a;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/a/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/etermax/preguntados/ui/dashboard/a/a$3;

    invoke-direct {v2, p0}, Lcom/etermax/preguntados/ui/dashboard/a/a$3;-><init>(Lcom/etermax/preguntados/ui/dashboard/a/a;)V

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/social/a;->a(Landroid/support/v4/app/FragmentActivity;Lcom/etermax/gamescommon/social/c;)V

    .line 150
    return-void
.end method

.method public synthetic getDummyCallbacks()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/a/a;->b()Lcom/etermax/preguntados/ui/dashboard/a/b;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/etermax/tools/navigation/b;->onCreate(Landroid/os/Bundle;)V

    .line 66
    return-void
.end method

.method public onDetach()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/dashboard/a/a;->f()V

    .line 71
    invoke-super {p0}, Lcom/etermax/tools/navigation/b;->onDetach()V

    .line 72
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 191
    invoke-super {p0}, Lcom/etermax/tools/navigation/b;->onLowMemory()V

    .line 192
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 88
    invoke-super {p0}, Lcom/etermax/tools/navigation/b;->onPause()V

    .line 89
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/a/a;->h:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/a/a;->h:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 92
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 76
    invoke-super {p0}, Lcom/etermax/tools/navigation/b;->onResume()V

    .line 78
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/a/a;->e:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/d;->q()Lcom/etermax/preguntados/datasource/dto/LivesDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/LivesDTO;->getQuantity()I

    move-result v0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/a/a;->e:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/d;->q()Lcom/etermax/preguntados/datasource/dto/LivesDTO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/LivesDTO;->getMax()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/a/a;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->get_more_lives_remaining_time_textview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/etermax/o;->full:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/dashboard/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/dashboard/a/a;->e()V

    goto :goto_0
.end method
