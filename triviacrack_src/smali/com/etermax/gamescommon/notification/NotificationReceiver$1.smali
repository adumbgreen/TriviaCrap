.class Lcom/etermax/gamescommon/notification/NotificationReceiver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/gamescommon/notification/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/notification/NotificationReceiver;->a(Landroid/content/Context;Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/notification/a/a;

.field final synthetic b:Lcom/etermax/gamescommon/notification/NotificationReceiver;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/notification/NotificationReceiver;Lcom/etermax/gamescommon/notification/a/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/etermax/gamescommon/notification/NotificationReceiver$1;->b:Lcom/etermax/gamescommon/notification/NotificationReceiver;

    iput-object p2, p0, Lcom/etermax/gamescommon/notification/NotificationReceiver$1;->a:Lcom/etermax/gamescommon/notification/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;ILandroid/support/v4/app/NotificationCompat$Builder;Lcom/etermax/gamescommon/notification/h;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 104
    iget-object v0, p0, Lcom/etermax/gamescommon/notification/NotificationReceiver$1;->a:Lcom/etermax/gamescommon/notification/a/a;

    invoke-virtual {v0, p3, p4}, Lcom/etermax/gamescommon/notification/a/a;->a(Landroid/support/v4/app/NotificationCompat$Builder;Lcom/etermax/gamescommon/notification/h;)V

    .line 106
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 107
    invoke-virtual {p3}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 108
    return-void
.end method
