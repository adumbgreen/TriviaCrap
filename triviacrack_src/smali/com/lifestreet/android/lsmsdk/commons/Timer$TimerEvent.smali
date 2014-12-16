.class final Lcom/lifestreet/android/lsmsdk/commons/Timer$TimerEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mForceRefresh:Z

.field final synthetic this$0:Lcom/lifestreet/android/lsmsdk/commons/Timer;


# direct methods
.method private constructor <init>(Lcom/lifestreet/android/lsmsdk/commons/Timer;)V
    .locals 1
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Lcom/lifestreet/android/lsmsdk/commons/Timer$TimerEvent;->this$0:Lcom/lifestreet/android/lsmsdk/commons/Timer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lifestreet/android/lsmsdk/commons/Timer$TimerEvent;->mForceRefresh:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/lifestreet/android/lsmsdk/commons/Timer;Lcom/lifestreet/android/lsmsdk/commons/Timer$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/lifestreet/android/lsmsdk/commons/Timer$TimerEvent;-><init>(Lcom/lifestreet/android/lsmsdk/commons/Timer;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/commons/Timer$TimerEvent;->this$0:Lcom/lifestreet/android/lsmsdk/commons/Timer;

    #getter for: Lcom/lifestreet/android/lsmsdk/commons/Timer;->mEventListener:Lcom/lifestreet/android/lsmsdk/commons/Timer$Event;
    invoke-static {v0}, Lcom/lifestreet/android/lsmsdk/commons/Timer;->access$000(Lcom/lifestreet/android/lsmsdk/commons/Timer;)Lcom/lifestreet/android/lsmsdk/commons/Timer$Event;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/commons/Timer$TimerEvent;->this$0:Lcom/lifestreet/android/lsmsdk/commons/Timer;

    #getter for: Lcom/lifestreet/android/lsmsdk/commons/Timer;->mEventListener:Lcom/lifestreet/android/lsmsdk/commons/Timer$Event;
    invoke-static {v0}, Lcom/lifestreet/android/lsmsdk/commons/Timer;->access$000(Lcom/lifestreet/android/lsmsdk/commons/Timer;)Lcom/lifestreet/android/lsmsdk/commons/Timer$Event;

    move-result-object v0

    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/commons/Timer$TimerEvent;->this$0:Lcom/lifestreet/android/lsmsdk/commons/Timer;

    iget-boolean v2, p0, Lcom/lifestreet/android/lsmsdk/commons/Timer$TimerEvent;->mForceRefresh:Z

    invoke-interface {v0, v1, v2}, Lcom/lifestreet/android/lsmsdk/commons/Timer$Event;->onTimerEvent(Lcom/lifestreet/android/lsmsdk/commons/Timer;Z)V

    .line 31
    :cond_0
    return-void
.end method

.method public setForceRefresh(Z)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/lifestreet/android/lsmsdk/commons/Timer$TimerEvent;->mForceRefresh:Z

    .line 35
    return-void
.end method
