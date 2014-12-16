.class Lcom/lifestreet/android/lsmsdk/mraid/MRAIDActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lifestreet/android/lsmsdk/mraid/MRAIDActivity;
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDActivity;


# direct methods
.method constructor <init>(Lcom/lifestreet/android/lsmsdk/mraid/MRAIDActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDActivity$1;->this$0:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private runAction(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 62
    const-string v0, "com.lifestreet.action.CLOSE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDActivity$1;->this$0:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDActivity;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDActivity;->finish()V

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    const-string v0, "com.lifestreet.action.SHOW_CLOSE_BUTTON"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 65
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDActivity$1;->this$0:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDActivity;

    #calls: Lcom/lifestreet/android/lsmsdk/mraid/MRAIDActivity;->showCloseButton()V
    invoke-static {v0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDActivity;->access$100(Lcom/lifestreet/android/lsmsdk/mraid/MRAIDActivity;)V

    goto :goto_0

    .line 66
    :cond_2
    const-string v0, "com.lifestreet.action.HIDE_CLOSE_BUTTON"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDActivity$1;->this$0:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDActivity;

    #calls: Lcom/lifestreet/android/lsmsdk/mraid/MRAIDActivity;->hideCloseButton()V
    invoke-static {v0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDActivity;->access$200(Lcom/lifestreet/android/lsmsdk/mraid/MRAIDActivity;)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 50
    if-eqz p2, :cond_0

    .line 51
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-virtual {p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    .line 54
    const-string v2, "com.lifestreet.category.MRAIDActivity"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDActivity$1;->this$0:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDActivity;

    #getter for: Lcom/lifestreet/android/lsmsdk/mraid/MRAIDActivity;->mMraidViewId:J
    invoke-static {v1}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDActivity;->access$000(Lcom/lifestreet/android/lsmsdk/mraid/MRAIDActivity;)J

    move-result-wide v1

    const-string v3, "com.lifestreet.extra.VIEW_ID"

    const-wide/16 v4, -0x1

    invoke-virtual {p2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 56
    invoke-direct {p0, v0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDActivity$1;->runAction(Ljava/lang/String;)V

    .line 59
    :cond_0
    return-void
.end method
