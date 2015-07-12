.class public Lcom/etermax/preguntados/notification/a/o;
.super Lcom/etermax/gamescommon/notification/a/a;
.source "SourceFile"


# instance fields
.field protected g:J

.field protected h:Ljava/lang/String;

.field protected i:J

.field protected j:Ljava/lang/String;

.field protected k:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/etermax/gamescommon/notification/a/a;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 29
    iget-object v0, p0, Lcom/etermax/preguntados/notification/a/o;->b:Landroid/os/Bundle;

    const-string v1, "data.GID"

    invoke-virtual {p0, v0, v1}, Lcom/etermax/preguntados/notification/a/o;->a(Landroid/os/Bundle;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/etermax/preguntados/notification/a/o;->g:J

    .line 30
    iget-object v0, p0, Lcom/etermax/preguntados/notification/a/o;->b:Landroid/os/Bundle;

    const-string v1, "data.OPP"

    invoke-virtual {p0, v0, v1}, Lcom/etermax/preguntados/notification/a/o;->b(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/notification/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/notification/a/o;->h:Ljava/lang/String;

    .line 31
    iget-object v0, p0, Lcom/etermax/preguntados/notification/a/o;->b:Landroid/os/Bundle;

    const-string v1, "data.U"

    invoke-virtual {p0, v0, v1}, Lcom/etermax/preguntados/notification/a/o;->a(Landroid/os/Bundle;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/etermax/preguntados/notification/a/o;->i:J

    .line 32
    iget-object v0, p0, Lcom/etermax/preguntados/notification/a/o;->b:Landroid/os/Bundle;

    const-string v1, "data.MID"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/etermax/preguntados/notification/a/o;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/notification/a/o;->k:Ljava/lang/Integer;

    .line 33
    iget-object v0, p0, Lcom/etermax/preguntados/notification/a/o;->b:Landroid/os/Bundle;

    const-string v1, "data.M"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/notification/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/notification/a/o;->j:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public varargs a(Lcom/etermax/gamescommon/notification/h;[Ljava/lang/Object;)Landroid/text/SpannableString;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 82
    sget-object v0, Lcom/etermax/gamescommon/notification/h;->c:Lcom/etermax/gamescommon/notification/h;

    if-ne p1, v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/etermax/preguntados/notification/a/o;->a:Landroid/content/Context;

    sget v1, Lcom/etermax/o;->new_messages_conversations:I

    invoke-virtual {v0, v1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    .line 88
    :goto_0
    return-object v0

    .line 84
    :cond_0
    sget-object v0, Lcom/etermax/gamescommon/notification/h;->b:Lcom/etermax/gamescommon/notification/h;

    if-ne p1, v0, :cond_1

    .line 85
    const/4 v0, 0x0

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Integer;

    .line 86
    iget-object v1, p0, Lcom/etermax/preguntados/notification/a/o;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/etermax/m;->new_messages:I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v2, v0, p2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    goto :goto_0

    .line 88
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()Lcom/etermax/gamescommon/f/b/b;
    .locals 3

    .prologue
    .line 93
    invoke-super {p0}, Lcom/etermax/gamescommon/notification/a/a;->a()Lcom/etermax/gamescommon/f/b/b;

    move-result-object v0

    .line 95
    iget-wide v1, p0, Lcom/etermax/preguntados/notification/a/o;->i:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/f/b/b;->b(Ljava/lang/Long;)Lcom/etermax/gamescommon/f/b/b;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/preguntados/notification/a/o;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/etermax/gamescommon/f/b/b;->a(Ljava/lang/String;)Lcom/etermax/gamescommon/f/b/b;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/preguntados/notification/a/o;->k:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Lcom/etermax/gamescommon/f/b/b;->b(Ljava/lang/Integer;)V

    .line 98
    return-object v0
.end method

.method public a(Landroid/support/v4/app/NotificationCompat$Builder;Lcom/etermax/gamescommon/notification/h;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 53
    sget-object v0, Lcom/etermax/gamescommon/notification/h;->c:Lcom/etermax/gamescommon/notification/h;

    if-ne p2, v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/etermax/preguntados/notification/a/o;->g()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 59
    :goto_0
    iget-object v0, p0, Lcom/etermax/preguntados/notification/a/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/gamescommon/notification/ChatNotificationCleanningService_;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/notification/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/gamescommon/notification/a;->a()Landroid/content/Intent;

    move-result-object v0

    .line 60
    const-string v1, "notiId"

    invoke-virtual {p0}, Lcom/etermax/preguntados/notification/a/o;->c()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 61
    iget-object v1, p0, Lcom/etermax/preguntados/notification/a/o;->a:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 62
    sget v1, Lcom/etermax/h;->icono_notif_leido:I

    iget-object v2, p0, Lcom/etermax/preguntados/notification/a/o;->a:Landroid/content/Context;

    sget v3, Lcom/etermax/o;->message_read:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 63
    return-void

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/etermax/preguntados/notification/a/o;->f()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x1

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/etermax/preguntados/notification/b;->b:Lcom/etermax/preguntados/notification/b;

    invoke-virtual {v0}, Lcom/etermax/preguntados/notification/b;->a()I

    move-result v0

    return v0
.end method

.method public d()Landroid/text/SpannableString;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/etermax/preguntados/notification/a/o;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    return-object v0
.end method

.method public e()Landroid/text/SpannableString;
    .locals 5

    .prologue
    .line 77
    iget-object v0, p0, Lcom/etermax/preguntados/notification/a/o;->a:Landroid/content/Context;

    sget v1, Lcom/etermax/o;->notification_new_message:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/etermax/preguntados/notification/a/o;->h:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/etermax/preguntados/notification/a/o;->j:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    return-object v0
.end method

.method public f()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    .line 37
    iget-object v0, p0, Lcom/etermax/preguntados/notification/a/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 38
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 39
    const-string v1, "type"

    iget-object v2, p0, Lcom/etermax/preguntados/notification/a/o;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    const-string v1, "gameId"

    iget-wide v2, p0, Lcom/etermax/preguntados/notification/a/o;->g:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 41
    const-string v1, "data.U"

    iget-wide v2, p0, Lcom/etermax/preguntados/notification/a/o;->i:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 42
    const-string v1, "data.OPP"

    iget-object v2, p0, Lcom/etermax/preguntados/notification/a/o;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    const-string v1, "go_to_chat"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 44
    iget-object v1, p0, Lcom/etermax/preguntados/notification/a/o;->a:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v2, v2

    const/high16 v3, 0x1000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public g()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    .line 48
    iget-object v0, p0, Lcom/etermax/preguntados/notification/a/o;->a:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-int v1, v1

    iget-object v2, p0, Lcom/etermax/preguntados/notification/a/o;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x1000

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method
