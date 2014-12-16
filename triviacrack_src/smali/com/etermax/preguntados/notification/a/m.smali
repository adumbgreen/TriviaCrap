.class public Lcom/etermax/preguntados/notification/a/m;
.super Lcom/etermax/preguntados/notification/a/b;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/etermax/preguntados/notification/a/b;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 18
    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/NotificationCompat$Builder;Lcom/etermax/gamescommon/notification/h;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 27
    sget-object v0, Lcom/etermax/gamescommon/notification/h;->c:Lcom/etermax/gamescommon/notification/h;

    if-ne p2, v0, :cond_0

    .line 28
    invoke-virtual {p0}, Lcom/etermax/preguntados/notification/a/m;->g()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 36
    :goto_0
    return-void

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/notification/a/m;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 31
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 32
    const-string v1, "type"

    iget-object v2, p0, Lcom/etermax/preguntados/notification/a/m;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    const-string v1, "gameId"

    iget-wide v2, p0, Lcom/etermax/preguntados/notification/a/m;->g:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 34
    iget-object v1, p0, Lcom/etermax/preguntados/notification/a/m;->a:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v2, v2

    const/high16 v3, 0x1000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_0
.end method

.method public d()Landroid/text/SpannableString;
    .locals 5

    .prologue
    .line 22
    iget-object v0, p0, Lcom/etermax/preguntados/notification/a/m;->a:Landroid/content/Context;

    sget v1, Lcom/etermax/o;->DUEL_STARTED:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/etermax/preguntados/notification/a/m;->h:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    return-object v0
.end method
