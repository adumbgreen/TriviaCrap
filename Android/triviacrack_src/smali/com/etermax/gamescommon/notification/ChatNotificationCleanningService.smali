.class public Lcom/etermax/gamescommon/notification/ChatNotificationCleanningService;
.super Landroid/app/IntentService;
.source "SourceFile"


# instance fields
.field protected a:Lcom/etermax/gamescommon/datasource/l;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/etermax/gamescommon/notification/ChatNotificationCleanningService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 21
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 25
    const-string v0, "notiId"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 26
    if-ltz v0, :cond_0

    .line 27
    iget-object v1, p0, Lcom/etermax/gamescommon/notification/ChatNotificationCleanningService;->a:Lcom/etermax/gamescommon/datasource/l;

    invoke-virtual {v1, v0}, Lcom/etermax/gamescommon/datasource/l;->b(I)V

    .line 30
    :cond_0
    return-void
.end method
