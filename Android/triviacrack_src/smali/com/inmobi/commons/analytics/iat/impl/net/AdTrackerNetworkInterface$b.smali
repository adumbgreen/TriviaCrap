.class final Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->reportToServer(Ljava/lang/String;)Lcom/inmobi/commons/analytics/iat/impl/AdTrackerConstants$StatusCode;
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface$b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 161
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->c()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_3

    .line 162
    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->d()Lcom/inmobi/commons/analytics/iat/impl/GoalList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/iat/impl/GoalList;->saveGoals()V

    .line 163
    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->c()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 164
    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->d()Lcom/inmobi/commons/analytics/iat/impl/GoalList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->d()Lcom/inmobi/commons/analytics/iat/impl/GoalList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/iat/impl/GoalList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    :cond_0
    const-string v0, "[InMobi]-[AdTracker]-4.3.0"

    const-string v1, "GoalList Empty"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->deinit()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 183
    :goto_1
    return-void

    .line 170
    :cond_1
    :goto_2
    :try_start_1
    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->d()Lcom/inmobi/commons/analytics/iat/impl/GoalList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/iat/impl/GoalList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 171
    iget-object v0, p0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface$b;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 173
    :catch_0
    move-exception v0

    .line 174
    :try_start_2
    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->deinit()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 179
    :catch_1
    move-exception v0

    .line 181
    const-string v1, "[InMobi]-[AdTracker]-4.3.0"

    const-string v2, "Exception reporting goals"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 176
    :cond_2
    :try_start_3
    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->e()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 177
    :cond_3
    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->deinit()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1
.end method
