.class public Lcom/etermax/preguntados/ui/profile/ProfileBlockedUsersActivity;
.super Lcom/etermax/tools/navigation/BaseFragmentActivity;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/gamescommon/profile/ui/d;


# instance fields
.field protected a:Lcom/etermax/tools/f/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/etermax/tools/navigation/BaseFragmentActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;J)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 29
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/etermax/preguntados/ui/profile/ProfileBlockedUsersActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 30
    const-string v1, "FRIENDS_ACTIVITY_INTENT_USER_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 31
    return-object v0
.end method


# virtual methods
.method protected a()Landroid/support/v4/app/Fragment;
    .locals 4

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/profile/ProfileBlockedUsersActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "FRIENDS_ACTIVITY_INTENT_USER_ID"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 37
    invoke-static {v0, v1}, Lcom/etermax/preguntados/ui/profile/a;->a(J)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/etermax/gamescommon/j;Landroid/widget/BaseAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/profile/ProfileBlockedUsersActivity;->v()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/profile/a;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/profile/a;->d()I

    move-result v0

    .line 58
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 59
    const-string v2, "RESULT_INTENT_BLOCKED_USERS_REMAINING"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 60
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/etermax/preguntados/ui/profile/ProfileBlockedUsersActivity;->setResult(ILandroid/content/Intent;)V

    .line 61
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/profile/ProfileBlockedUsersActivity;->finish()V

    .line 62
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/etermax/tools/navigation/BaseFragmentActivity;->onStart()V

    .line 43
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/ProfileBlockedUsersActivity;->a:Lcom/etermax/tools/f/a;

    invoke-virtual {v0, p0}, Lcom/etermax/tools/f/a;->a(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Lcom/etermax/tools/navigation/BaseFragmentActivity;->onStop()V

    .line 49
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/ProfileBlockedUsersActivity;->a:Lcom/etermax/tools/f/a;

    invoke-virtual {v0, p0}, Lcom/etermax/tools/f/a;->b(Landroid/content/Context;)V

    .line 50
    return-void
.end method
