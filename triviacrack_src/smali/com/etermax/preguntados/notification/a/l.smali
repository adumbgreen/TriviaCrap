.class public Lcom/etermax/preguntados/notification/a/l;
.super Lcom/etermax/preguntados/notification/a/b;
.source "SourceFile"


# instance fields
.field final j:J

.field final k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/etermax/preguntados/notification/a/b;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 23
    iget-object v0, p0, Lcom/etermax/preguntados/notification/a/l;->b:Landroid/os/Bundle;

    const-string v1, "data.NID"

    invoke-virtual {p0, v0, v1}, Lcom/etermax/preguntados/notification/a/l;->a(Landroid/os/Bundle;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/etermax/preguntados/notification/a/l;->j:J

    .line 24
    iget-object v0, p0, Lcom/etermax/preguntados/notification/a/l;->b:Landroid/os/Bundle;

    const-string v1, "data.UNM"

    invoke-virtual {p0, v0, v1}, Lcom/etermax/preguntados/notification/a/l;->b(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/notification/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/notification/a/l;->k:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public varargs a(Lcom/etermax/gamescommon/notification/h;[Ljava/lang/Object;)Landroid/text/SpannableString;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 49
    sget-object v0, Lcom/etermax/gamescommon/notification/h;->c:Lcom/etermax/gamescommon/notification/h;

    if-ne p1, v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/etermax/preguntados/notification/a/l;->a:Landroid/content/Context;

    sget v1, Lcom/etermax/o;->new_messages_conversations:I

    invoke-virtual {v0, v1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    .line 55
    :goto_0
    return-object v0

    .line 51
    :cond_0
    sget-object v0, Lcom/etermax/gamescommon/notification/h;->b:Lcom/etermax/gamescommon/notification/h;

    if-ne p1, v0, :cond_1

    .line 52
    const/4 v0, 0x0

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Integer;

    .line 53
    iget-object v1, p0, Lcom/etermax/preguntados/notification/a/l;->a:Landroid/content/Context;

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

    .line 55
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()Lcom/etermax/gamescommon/f/b/b;
    .locals 4

    .prologue
    .line 60
    invoke-super {p0}, Lcom/etermax/preguntados/notification/a/b;->a()Lcom/etermax/gamescommon/f/b/b;

    move-result-object v0

    .line 62
    invoke-virtual {p0}, Lcom/etermax/preguntados/notification/a/l;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/f/b/b;->a(Ljava/lang/Integer;)Lcom/etermax/gamescommon/f/b/b;

    move-result-object v1

    invoke-virtual {p0}, Lcom/etermax/preguntados/notification/a/l;->d()Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/etermax/gamescommon/f/b/b;->a(Landroid/text/SpannableString;)Lcom/etermax/gamescommon/f/b/b;

    move-result-object v1

    iget-wide v2, p0, Lcom/etermax/preguntados/notification/a/l;->j:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/etermax/gamescommon/f/b/b;->b(Ljava/lang/Long;)Lcom/etermax/gamescommon/f/b/b;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/preguntados/notification/a/l;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/etermax/gamescommon/f/b/b;->a(Ljava/lang/String;)Lcom/etermax/gamescommon/f/b/b;

    .line 66
    return-object v0
.end method

.method public a(Landroid/support/v4/app/NotificationCompat$Builder;Lcom/etermax/gamescommon/notification/h;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/etermax/preguntados/notification/a/l;->i()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 87
    sget-object v0, Lcom/etermax/gamescommon/notification/h;->a:Lcom/etermax/gamescommon/notification/h;

    if-ne p2, v0, :cond_0

    .line 88
    sget v0, Lcom/etermax/h;->icono_notif_perfil:I

    iget-object v1, p0, Lcom/etermax/preguntados/notification/a/l;->a:Landroid/content/Context;

    sget v2, Lcom/etermax/o;->view_profile:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/etermax/preguntados/notification/a/l;->h()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 90
    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x1

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/etermax/preguntados/notification/b;->c:Lcom/etermax/preguntados/notification/b;

    invoke-virtual {v0}, Lcom/etermax/preguntados/notification/b;->a()I

    move-result v0

    return v0
.end method

.method public d()Landroid/text/SpannableString;
    .locals 5

    .prologue
    .line 39
    iget-object v0, p0, Lcom/etermax/preguntados/notification/a/l;->a:Landroid/content/Context;

    sget v1, Lcom/etermax/o;->notification_user_joined:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/etermax/preguntados/notification/a/l;->k:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    return-object v0
.end method

.method public e()Landroid/text/SpannableString;
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public h()Landroid/app/PendingIntent;
    .locals 5

    .prologue
    .line 70
    iget-object v0, p0, Lcom/etermax/preguntados/notification/a/l;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 71
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 72
    const-string v1, "type"

    iget-object v2, p0, Lcom/etermax/preguntados/notification/a/l;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    const-string v1, "go_to_profile"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 74
    iget-wide v1, p0, Lcom/etermax/preguntados/notification/a/l;->j:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 75
    const-string v1, "opponentId"

    iget-wide v2, p0, Lcom/etermax/preguntados/notification/a/l;->j:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/etermax/preguntados/notification/a/l;->a:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v2, v2

    const/high16 v3, 0x1000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public i()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    .line 81
    iget-object v0, p0, Lcom/etermax/preguntados/notification/a/l;->a:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-int v1, v1

    iget-object v2, p0, Lcom/etermax/preguntados/notification/a/l;->a:Landroid/content/Context;

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
