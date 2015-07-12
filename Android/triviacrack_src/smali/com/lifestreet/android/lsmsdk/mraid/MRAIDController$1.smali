.class Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;


# direct methods
.method constructor <init>(Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController$1;->this$0:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private runAction(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 71
    const-string v0, "com.lifestreet.action.PRESENT_SCREEN"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController$1;->this$0:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;

    #calls: Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;->onExpandView()V
    invoke-static {v0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;->access$000(Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;)V

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    const-string v0, "com.lifestreet.action.DISMISS_SCREEN"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController$1;->this$0:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;->getMraidView()Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->onCloseMraidActivity()V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 55
    if-eqz p2, :cond_0

    .line 56
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-virtual {p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    .line 59
    const-string v2, "com.lifestreet.category.MRAIDActivity"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    const-string v1, "com.lifestreet.extra.VIEW_ID"

    const-wide/16 v2, -0x1

    invoke-virtual {p2, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 62
    iget-object v3, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController$1;->this$0:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;

    invoke-virtual {v3}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;->getMraidView()Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;

    move-result-object v3

    .line 63
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->getViewId()J

    move-result-wide v3

    cmp-long v1, v3, v1

    if-nez v1, :cond_0

    .line 64
    invoke-direct {p0, v0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController$1;->runAction(Ljava/lang/String;)V

    .line 68
    :cond_0
    return-void
.end method
