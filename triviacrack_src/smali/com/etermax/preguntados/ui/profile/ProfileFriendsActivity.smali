.class public Lcom/etermax/preguntados/ui/profile/ProfileFriendsActivity;
.super Lcom/etermax/tools/navigation/BaseFragmentActivity;
.source "SourceFile"


# instance fields
.field protected a:Lcom/etermax/tools/f/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/etermax/tools/navigation/BaseFragmentActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;JLjava/lang/String;)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/etermax/preguntados/ui/profile/ProfileFriendsActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 25
    const-string v1, "FRIENDS_ACTIVITY_INTENT_USER_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 26
    const-string v1, "FRIENDS_ACTIVITY_INTENT_USERNAME"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    return-object v0
.end method


# virtual methods
.method protected a()Landroid/support/v4/app/Fragment;
    .locals 4

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/profile/ProfileFriendsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "FRIENDS_ACTIVITY_INTENT_USER_ID"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 33
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/profile/ProfileFriendsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "FRIENDS_ACTIVITY_INTENT_USERNAME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 35
    invoke-static {v0, v1, v2}, Lcom/etermax/preguntados/ui/profile/i;->a(JLjava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Lcom/etermax/tools/navigation/BaseFragmentActivity;->onStart()V

    .line 41
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/ProfileFriendsActivity;->a:Lcom/etermax/tools/f/a;

    invoke-virtual {v0, p0}, Lcom/etermax/tools/f/a;->a(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Lcom/etermax/tools/navigation/BaseFragmentActivity;->onStop()V

    .line 47
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/ProfileFriendsActivity;->a:Lcom/etermax/tools/f/a;

    invoke-virtual {v0, p0}, Lcom/etermax/tools/f/a;->b(Landroid/content/Context;)V

    .line 48
    return-void
.end method
