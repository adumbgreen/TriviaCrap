.class public Lcom/etermax/preguntados/ui/profile/ProfileActivity;
.super Lcom/etermax/tools/navigation/BaseFragmentActivity;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/gamescommon/shop/b;
.implements Lcom/etermax/preguntados/sharing/n;
.implements Lcom/etermax/preguntados/ui/b/b;
.implements Lcom/etermax/preguntados/ui/profile/f;


# instance fields
.field a:J

.field b:Ljava/lang/String;

.field c:Lcom/etermax/preguntados/sharing/ShareView;

.field d:Lcom/etermax/gamescommon/social/a;

.field e:Lcom/etermax/tools/f/a;

.field f:Lcom/etermax/preguntados/datasource/d;

.field g:Lcom/etermax/gamescommon/login/datasource/a;

.field h:Lcom/etermax/preguntados/sharing/m;

.field i:Lcom/etermax/tools/social/a/b;

.field j:Lcom/etermax/gamescommon/datasource/l;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/etermax/tools/navigation/BaseFragmentActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;JLjava/lang/String;)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/etermax/preguntados/ui/profile/ProfileActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "userId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.etermax.gamescommon.from"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/profile/ProfileActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/profile/ProfileActivity;->d()V

    return-void
.end method

.method static synthetic b(Lcom/etermax/preguntados/ui/profile/ProfileActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/profile/ProfileActivity;->e()V

    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/ProfileActivity;->j:Lcom/etermax/gamescommon/datasource/l;

    sget-object v1, Lcom/etermax/preguntados/notification/b;->c:Lcom/etermax/preguntados/notification/b;

    invoke-virtual {v1}, Lcom/etermax/preguntados/notification/b;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/datasource/l;->b(I)V

    .line 89
    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    .line 144
    sget v0, Lcom/etermax/o;->loading:I

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/profile/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/tools/widget/b/f;->a(Ljava/lang/String;)Lcom/etermax/tools/widget/b/f;

    move-result-object v0

    .line 145
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/etermax/tools/widget/b/f;->setCancelable(Z)V

    .line 146
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/profile/ProfileActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "facebook_cover_loading_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/etermax/tools/widget/b/f;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/profile/ProfileActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "facebook_cover_loading_dialog"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/widget/b/f;

    .line 151
    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {v0}, Lcom/etermax/tools/widget/b/f;->dismissAllowingStateLoss()V

    .line 154
    :cond_0
    return-void
.end method


# virtual methods
.method protected a()Landroid/support/v4/app/Fragment;
    .locals 4

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/etermax/preguntados/ui/profile/ProfileActivity;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/ProfileActivity;->g:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/a;->e()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/etermax/preguntados/ui/profile/ProfileActivity;->a:J

    .line 62
    :cond_0
    iget-wide v0, p0, Lcom/etermax/preguntados/ui/profile/ProfileActivity;->a:J

    iget-object v2, p0, Lcom/etermax/preguntados/ui/profile/ProfileActivity;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/etermax/preguntados/ui/profile/g;->a(JLjava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/etermax/preguntados/datasource/dto/ProfileDTO;)V
    .locals 2
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/ProfileActivity;->d:Lcom/etermax/gamescommon/social/a;

    new-instance v1, Lcom/etermax/preguntados/ui/profile/ProfileActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/etermax/preguntados/ui/profile/ProfileActivity$1;-><init>(Lcom/etermax/preguntados/ui/profile/ProfileActivity;Lcom/etermax/preguntados/datasource/dto/ProfileDTO;)V

    invoke-virtual {v0, p0, v1}, Lcom/etermax/gamescommon/social/a;->a(Landroid/support/v4/app/FragmentActivity;Lcom/etermax/gamescommon/social/c;)V

    .line 141
    return-void
.end method

.method public a(Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;)V
    .locals 3
    .parameter

    .prologue
    .line 164
    invoke-static {}, Lcom/etermax/preguntados/ui/b/c;->e()Lcom/etermax/preguntados/ui/b/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/etermax/preguntados/ui/b/d;->a(Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;)Lcom/etermax/preguntados/ui/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/b/d;->a()Lcom/etermax/preguntados/ui/b/a;

    move-result-object v0

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NEW_LEVEL_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;->getLevel()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/etermax/preguntados/ui/profile/ProfileActivity;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;Z)V

    .line 166
    return-void
.end method

.method public a(Lcom/etermax/preguntados/sharing/ShareView;)V
    .locals 1
    .parameter

    .prologue
    .line 170
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/ProfileActivity;->h:Lcom/etermax/preguntados/sharing/m;

    invoke-virtual {v0, p1}, Lcom/etermax/preguntados/sharing/m;->a(Lcom/etermax/preguntados/sharing/ShareView;)V

    .line 171
    return-void
.end method

.method public a(Lcom/etermax/preguntados/ui/b/a;)V
    .locals 1
    .parameter

    .prologue
    .line 175
    invoke-virtual {p0, p1}, Lcom/etermax/preguntados/ui/profile/ProfileActivity;->b(Landroid/support/v4/app/Fragment;)V

    .line 176
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/profile/ProfileActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 177
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/ProfileActivity;->c:Lcom/etermax/preguntados/sharing/ShareView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/ProfileActivity;->h:Lcom/etermax/preguntados/sharing/m;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/profile/ProfileActivity;->c:Lcom/etermax/preguntados/sharing/ShareView;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/sharing/m;->a(Lcom/etermax/preguntados/sharing/ShareView;)V

    .line 159
    :cond_0
    return-void
.end method

.method public h_()V
    .locals 0

    .prologue
    .line 105
    return-void
.end method

.method public j_()V
    .locals 3

    .prologue
    .line 99
    invoke-static {}, Lcom/etermax/preguntados/ui/dashboard/a/e;->a()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 100
    const-string v1, ""

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/etermax/preguntados/ui/profile/ProfileActivity;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;Z)V

    .line 101
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-super {p0, p1, p2, p3}, Lcom/etermax/tools/navigation/BaseFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 72
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/ProfileActivity;->i:Lcom/etermax/tools/social/a/b;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/etermax/tools/social/a/b;->a(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 73
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/profile/ProfileActivity;->c()V

    .line 84
    invoke-super {p0}, Lcom/etermax/tools/navigation/BaseFragmentActivity;->onResume()V

    .line 85
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 77
    invoke-super {p0}, Lcom/etermax/tools/navigation/BaseFragmentActivity;->onStart()V

    .line 78
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/ProfileActivity;->e:Lcom/etermax/tools/f/a;

    invoke-virtual {v0, p0}, Lcom/etermax/tools/f/a;->a(Landroid/content/Context;)V

    .line 79
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 93
    invoke-super {p0}, Lcom/etermax/tools/navigation/BaseFragmentActivity;->onStop()V

    .line 94
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/ProfileActivity;->e:Lcom/etermax/tools/f/a;

    invoke-virtual {v0, p0}, Lcom/etermax/tools/f/a;->b(Landroid/content/Context;)V

    .line 95
    return-void
.end method
