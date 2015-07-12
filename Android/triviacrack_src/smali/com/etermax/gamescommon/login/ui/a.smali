.class public Lcom/etermax/gamescommon/login/ui/a;
.super Lcom/etermax/gamescommon/login/ui/j;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/gamescommon/b/y;
.implements Lcom/etermax/tools/widget/b/j;


# instance fields
.field private f:Lcom/etermax/gamescommon/b/z;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/etermax/gamescommon/login/ui/j;-><init>()V

    .line 32
    return-void
.end method

.method public static a()Lcom/etermax/gamescommon/login/ui/a;
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/etermax/gamescommon/login/ui/c;

    invoke-direct {v0}, Lcom/etermax/gamescommon/login/ui/c;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/a;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/gamescommon/login/ui/m;

    invoke-interface {v0}, Lcom/etermax/gamescommon/login/ui/m;->e()V

    .line 82
    return-void
.end method

.method public a(Lcom/etermax/gamescommon/b/z;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/etermax/gamescommon/login/ui/a;->f:Lcom/etermax/gamescommon/b/z;

    .line 94
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 48
    new-instance v0, Lcom/etermax/gamescommon/b/ad;

    const-string v1, "login_show"

    invoke-direct {v0, v1}, Lcom/etermax/gamescommon/b/ad;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/login/ui/a;->a(Lcom/etermax/gamescommon/b/l;)V

    .line 50
    invoke-static {}, Lcom/etermax/tools/g/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/ui/a;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->debug_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 53
    :cond_0
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    invoke-virtual {p0, p0}, Lcom/etermax/gamescommon/login/ui/a;->a(Lcom/etermax/gamescommon/login/ui/j;)V

    .line 88
    return-void
.end method

.method protected c()V
    .locals 2

    .prologue
    .line 58
    new-instance v0, Lcom/etermax/gamescommon/b/ad;

    const-string v1, "login_email_click"

    invoke-direct {v0, v1}, Lcom/etermax/gamescommon/b/ad;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/login/ui/a;->a(Lcom/etermax/gamescommon/b/l;)V

    .line 59
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/a;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/gamescommon/login/ui/m;

    invoke-interface {v0}, Lcom/etermax/gamescommon/login/ui/m;->b()V

    .line 60
    return-void
.end method

.method protected d()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/a;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/gamescommon/login/ui/m;

    invoke-interface {v0}, Lcom/etermax/gamescommon/login/ui/m;->d()V

    .line 65
    return-void
.end method

.method protected e()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/a;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/gamescommon/login/ui/m;

    invoke-interface {v0}, Lcom/etermax/gamescommon/login/ui/m;->c()V

    .line 70
    return-void
.end method

.method protected f()V
    .locals 2

    .prologue
    .line 74
    new-instance v0, Lcom/etermax/gamescommon/b/ad;

    const-string v1, "login_facebook_click"

    invoke-direct {v0, v1}, Lcom/etermax/gamescommon/b/ad;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/login/ui/a;->a(Lcom/etermax/gamescommon/b/l;)V

    .line 75
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/ui/a;->j()V

    .line 76
    return-void
.end method

.method public g()Lcom/etermax/gamescommon/b/z;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/a;->f:Lcom/etermax/gamescommon/b/z;

    return-object v0
.end method

.method protected h()Lcom/etermax/gamescommon/b/l;
    .locals 2

    .prologue
    .line 102
    new-instance v0, Lcom/etermax/gamescommon/b/ah;

    const-string v1, "register_fb_ok"

    invoke-direct {v0, v1}, Lcom/etermax/gamescommon/b/ah;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected i()Lcom/etermax/gamescommon/b/l;
    .locals 2

    .prologue
    .line 107
    new-instance v0, Lcom/etermax/gamescommon/b/af;

    const-string v1, "login_fb_ok"

    invoke-direct {v0, v1}, Lcom/etermax/gamescommon/b/af;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    sget v0, Lcom/etermax/k;->login_choose_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 40
    sget v0, Lcom/etermax/i;->support_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 41
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v2

    or-int/lit8 v2, v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 43
    return-object v1
.end method
