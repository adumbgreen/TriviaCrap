.class public Lcom/etermax/preguntados/notification/a/e;
.super Lcom/etermax/preguntados/notification/a/b;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/etermax/preguntados/notification/a/b;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 20
    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/NotificationCompat$Builder;Lcom/etermax/gamescommon/notification/h;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/high16 v6, 0x1000

    const/high16 v5, 0x400

    const/4 v4, 0x0

    .line 29
    sget-object v0, Lcom/etermax/gamescommon/notification/h;->c:Lcom/etermax/gamescommon/notification/h;

    if-ne p2, v0, :cond_1

    .line 30
    invoke-virtual {p0}, Lcom/etermax/preguntados/notification/a/e;->g()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 32
    :cond_1
    iget-object v0, p0, Lcom/etermax/preguntados/notification/a/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 33
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 34
    const-string v1, "type"

    iget-object v2, p0, Lcom/etermax/preguntados/notification/a/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    const-string v1, "gameId"

    iget-wide v2, p0, Lcom/etermax/preguntados/notification/a/e;->g:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 36
    iget-object v1, p0, Lcom/etermax/preguntados/notification/a/e;->a:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v1, v2, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 38
    sget-object v0, Lcom/etermax/gamescommon/notification/h;->a:Lcom/etermax/gamescommon/notification/h;

    if-ne p2, v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/etermax/preguntados/notification/a/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 40
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 41
    const-string v1, "type"

    iget-object v2, p0, Lcom/etermax/preguntados/notification/a/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    const-string v1, "gameId"

    iget-wide v2, p0, Lcom/etermax/preguntados/notification/a/e;->g:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 43
    const-string v1, "acceptNewGame"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 44
    iget-object v1, p0, Lcom/etermax/preguntados/notification/a/e;->a:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v1, v2, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 45
    sget v1, Lcom/etermax/h;->icono_notif_aceptar:I

    iget-object v2, p0, Lcom/etermax/preguntados/notification/a/e;->a:Landroid/content/Context;

    sget v3, Lcom/etermax/o;->accept:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 47
    iget-object v0, p0, Lcom/etermax/preguntados/notification/a/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/preguntados/notification/services/CommonNotificationActionService_;->a(Landroid/content/Context;)Lcom/etermax/preguntados/notification/services/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/notification/services/a;->a()Landroid/content/Intent;

    move-result-object v0

    .line 48
    const-string v1, "action"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 49
    const-string v1, "gameId"

    iget-wide v2, p0, Lcom/etermax/preguntados/notification/a/e;->g:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 50
    const-string v1, "notiId"

    invoke-virtual {p0}, Lcom/etermax/preguntados/notification/a/e;->c()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 51
    iget-object v1, p0, Lcom/etermax/preguntados/notification/a/e;->a:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v1, v2, v0, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 52
    sget v1, Lcom/etermax/h;->icono_notif_rechazar:I

    iget-object v2, p0, Lcom/etermax/preguntados/notification/a/e;->a:Landroid/content/Context;

    sget v3, Lcom/etermax/o;->reject:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto/16 :goto_0
.end method

.method public d()Landroid/text/SpannableString;
    .locals 5

    .prologue
    .line 24
    iget-object v0, p0, Lcom/etermax/preguntados/notification/a/e;->a:Landroid/content/Context;

    sget v1, Lcom/etermax/o;->notification_group_challenge_created:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/etermax/preguntados/notification/a/e;->h:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    return-object v0
.end method
