.class public Lcom/etermax/preguntados/ui/chat/ChatActivity;
.super Lcom/etermax/chat/ui/BaseLegacyChatActivity;
.source "SourceFile"


# instance fields
.field u:Lcom/etermax/preguntados/g/a;

.field protected v:Lcom/etermax/gamescommon/datasource/l;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/etermax/chat/ui/BaseLegacyChatActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;JLjava/lang/String;ZLcom/etermax/gamescommon/b/g;)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/etermax/preguntados/ui/chat/ChatActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 33
    sput-wide p1, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->p:J

    .line 34
    sput-boolean p4, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->t:Z

    .line 35
    sput-object p3, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->s:Ljava/lang/String;

    .line 37
    return-object v0
.end method

.method private j()V
    .locals 4

    .prologue
    .line 75
    iget-object v0, p0, Lcom/etermax/preguntados/ui/chat/ChatActivity;->v:Lcom/etermax/gamescommon/datasource/l;

    sget-object v1, Lcom/etermax/preguntados/notification/b;->b:Lcom/etermax/preguntados/notification/b;

    invoke-virtual {v1}, Lcom/etermax/preguntados/notification/b;->a()I

    move-result v1

    sget-wide v2, Lcom/etermax/preguntados/ui/chat/ChatActivity;->p:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/etermax/gamescommon/datasource/l;->a(IJ)V

    .line 76
    return-void
.end method


# virtual methods
.method public a_(Landroid/os/Bundle;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 57
    const-string v2, "data.TYPE"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "data.TYPE"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "NEW_MESSAGE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 58
    const-string v2, "PLAYCHAT"

    const-string v3, "onNewNotification"

    invoke-static {v2, v3}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0, v0, v1}, Lcom/etermax/preguntados/ui/chat/ChatActivity;->a(IZ)V

    .line 64
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public c(Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;)V
    .locals 3
    .parameter

    .prologue
    .line 70
    invoke-virtual {p1}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sget-object v2, Lcom/etermax/gamescommon/b/an;->c:Lcom/etermax/gamescommon/b/an;

    invoke-virtual {v2}, Lcom/etermax/gamescommon/b/an;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/etermax/preguntados/ui/profile/ProfileActivity;->a(Landroid/content/Context;JLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/chat/ChatActivity;->startActivity(Landroid/content/Intent;)V

    .line 71
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/chat/ChatActivity;->finish()V

    .line 72
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    if-nez p1, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/chat/ChatActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/etermax/i;->container:I

    new-instance v2, Lcom/etermax/preguntados/ui/chat/b;

    invoke-direct {v2}, Lcom/etermax/preguntados/ui/chat/b;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 47
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/chat/ChatActivity;->j()V

    .line 52
    invoke-super {p0}, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->onResume()V

    .line 53
    return-void
.end method
