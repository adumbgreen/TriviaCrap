.class public Lcom/etermax/preguntados/notification/services/CommonNotificationActionService;
.super Landroid/app/IntentService;
.source "SourceFile"


# instance fields
.field protected a:Lcom/etermax/preguntados/datasource/d;

.field protected b:Lcom/etermax/gamescommon/datasource/l;

.field protected c:Lcom/etermax/gamescommon/login/datasource/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/etermax/preguntados/notification/services/CommonNotificationActionService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 32
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, -0x1

    .line 36
    const-string v0, "action"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 37
    packed-switch v0, :pswitch_data_0

    .line 54
    :cond_0
    :goto_0
    const-string v0, "notiId"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 55
    if-ltz v0, :cond_1

    .line 56
    iget-object v1, p0, Lcom/etermax/preguntados/notification/services/CommonNotificationActionService;->b:Lcom/etermax/gamescommon/datasource/l;

    invoke-virtual {v1, v0}, Lcom/etermax/gamescommon/datasource/l;->b(I)V

    .line 58
    :cond_1
    return-void

    .line 39
    :pswitch_0
    const-string v0, "gameId"

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 40
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 42
    :try_start_0
    iget-object v2, p0, Lcom/etermax/preguntados/notification/services/CommonNotificationActionService;->a:Lcom/etermax/preguntados/datasource/d;

    long-to-int v0, v0

    int-to-long v0, v0

    invoke-virtual {v2, v0, v1}, Lcom/etermax/preguntados/datasource/d;->b(J)Lcom/etermax/preguntados/datasource/dto/GameDTO;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 43
    :catch_0
    move-exception v0

    .line 44
    const-string v1, "CommonNotificationActionService"

    const-string v2, "REJECT_GAME_ACTION"

    invoke-static {v1, v2, v0}, Lcom/etermax/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 37
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
