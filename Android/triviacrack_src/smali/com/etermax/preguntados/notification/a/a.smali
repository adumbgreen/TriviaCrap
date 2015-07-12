.class public abstract Lcom/etermax/preguntados/notification/a/a;
.super Lcom/etermax/preguntados/notification/a/b;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/etermax/preguntados/notification/a/b;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 17
    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/NotificationCompat$Builder;Lcom/etermax/gamescommon/notification/h;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-super {p0, p1, p2}, Lcom/etermax/preguntados/notification/a/b;->a(Landroid/support/v4/app/NotificationCompat$Builder;Lcom/etermax/gamescommon/notification/h;)V

    .line 23
    sget-object v0, Lcom/etermax/gamescommon/notification/h;->a:Lcom/etermax/gamescommon/notification/h;

    if-ne p2, v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/etermax/preguntados/notification/a/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 25
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 26
    const-string v1, "type"

    iget-object v2, p0, Lcom/etermax/preguntados/notification/a/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    const-string v1, "gameId"

    iget-wide v2, p0, Lcom/etermax/preguntados/notification/a/a;->g:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 28
    const-string v1, "userId"

    iget-wide v2, p0, Lcom/etermax/preguntados/notification/a/a;->i:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 29
    const-string v1, "opponentName"

    iget-object v2, p0, Lcom/etermax/preguntados/notification/a/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    const-string v1, "rematchGame"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 31
    iget-object v1, p0, Lcom/etermax/preguntados/notification/a/a;->a:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v2, v2

    const/high16 v3, 0x1000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 32
    sget v1, Lcom/etermax/h;->icono_notif_play:I

    iget-object v2, p0, Lcom/etermax/preguntados/notification/a/a;->a:Landroid/content/Context;

    sget v3, Lcom/etermax/o;->play_again:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 34
    :cond_0
    return-void
.end method
