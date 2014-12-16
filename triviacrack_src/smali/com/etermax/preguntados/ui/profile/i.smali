.class public Lcom/etermax/preguntados/ui/profile/i;
.super Lcom/etermax/gamescommon/profile/ui/c;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/gamescommon/user/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/gamescommon/profile/ui/c",
        "<",
        "Lcom/etermax/preguntados/ui/profile/ProfileFriendsFragment$ListableFriend;",
        ">;",
        "Lcom/etermax/gamescommon/user/a;"
    }
.end annotation


# instance fields
.field protected e:J

.field protected f:Ljava/lang/String;

.field protected g:Lcom/etermax/gamescommon/login/datasource/a;

.field protected h:Lcom/etermax/preguntados/datasource/d;

.field private final i:I

.field private final j:I

.field private k:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 41
    invoke-direct {p0}, Lcom/etermax/gamescommon/profile/ui/c;-><init>()V

    .line 43
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/etermax/preguntados/ui/profile/i;->i:I

    .line 44
    iput v1, p0, Lcom/etermax/preguntados/ui/profile/i;->j:I

    .line 175
    iput-boolean v1, p0, Lcom/etermax/preguntados/ui/profile/i;->k:Z

    return-void
.end method

.method public static a(JLjava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 183
    invoke-static {}, Lcom/etermax/preguntados/ui/profile/j;->e()Lcom/etermax/preguntados/ui/profile/k;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/etermax/preguntados/ui/profile/k;->a(J)Lcom/etermax/preguntados/ui/profile/k;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/etermax/preguntados/ui/profile/k;->a(Ljava/lang/String;)Lcom/etermax/preguntados/ui/profile/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/profile/k;->a()Lcom/etermax/preguntados/ui/profile/i;

    move-result-object v0

    .line 188
    return-object v0
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/profile/i;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/etermax/preguntados/ui/profile/i;->a(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected a(Z)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 268
    if-eqz p1, :cond_0

    .line 269
    sget v0, Lcom/etermax/o;->error_find_users:I

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/profile/i;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 275
    :goto_0
    return-object v0

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/i;->g:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/a;->e()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/etermax/preguntados/ui/profile/i;->e:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 273
    sget v0, Lcom/etermax/o;->empty_user_friendlist:I

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/profile/i;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 275
    :cond_1
    sget v0, Lcom/etermax/o;->empty_other_friendlist:I

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/profile/i;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/etermax/preguntados/ui/profile/i;->f:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/Long;)V
    .locals 4
    .parameter

    .prologue
    .line 286
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/profile/i;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object v3, Lcom/etermax/gamescommon/b/an;->d:Lcom/etermax/gamescommon/b/an;

    invoke-virtual {v3}, Lcom/etermax/gamescommon/b/an;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/etermax/preguntados/ui/profile/ProfileActivity;->a(Landroid/content/Context;JLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/profile/i;->startActivity(Landroid/content/Intent;)V

    .line 289
    :cond_0
    return-void
.end method

.method protected b()V
    .locals 2

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/profile/i;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/etermax/o;->loading:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 216
    new-instance v1, Lcom/etermax/preguntados/ui/profile/i$1;

    invoke-direct {v1, p0, v0}, Lcom/etermax/preguntados/ui/profile/i$1;-><init>(Lcom/etermax/preguntados/ui/profile/i;Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/etermax/preguntados/ui/profile/i$1;->a(Ljava/lang/Object;)Z

    .line 245
    return-void
.end method

.method protected c()Z
    .locals 1

    .prologue
    .line 249
    iget-boolean v0, p0, Lcom/etermax/preguntados/ui/profile/i;->k:Z

    return v0
.end method

.method protected d()V
    .locals 1

    .prologue
    .line 208
    sget v0, Lcom/etermax/o;->friend_plural:I

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/profile/i;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/profile/i;->a(Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/i;->b:Lcom/etermax/gamescommon/user/UserGridView;

    invoke-virtual {v0, p0}, Lcom/etermax/gamescommon/user/UserGridView;->setListener(Lcom/etermax/gamescommon/user/a;)V

    .line 210
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 199
    invoke-super {p0, p1, p2, p3}, Lcom/etermax/gamescommon/profile/ui/c;->onActivityResult(IILandroid/content/Intent;)V

    .line 201
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 202
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/etermax/preguntados/ui/profile/i;->k:Z

    .line 204
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 193
    invoke-super {p0}, Lcom/etermax/gamescommon/profile/ui/c;->onResume()V

    .line 194
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/preguntados/ui/profile/i;->k:Z

    .line 195
    return-void
.end method
