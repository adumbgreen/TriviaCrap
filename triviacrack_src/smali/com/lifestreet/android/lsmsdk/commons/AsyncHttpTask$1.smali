.class Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTask;->postOnAsyncHttpTaskFailed(Ljava/lang/String;Ljava/lang/Throwable;)V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTask;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$throwable:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTask;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTask$1;->this$0:Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTask;

    iput-object p2, p0, Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTask$1;->val$message:Ljava/lang/String;

    iput-object p3, p0, Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTask$1;->val$throwable:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 173
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTask$1;->this$0:Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTask;

    #calls: Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTask;->getListener()Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTaskListener;
    invoke-static {v0}, Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTask;->access$000(Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTask;)Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTaskListener;

    move-result-object v0

    .line 174
    if-eqz v0, :cond_0

    .line 175
    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTask$1;->val$message:Ljava/lang/String;

    iget-object v2, p0, Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTask$1;->val$throwable:Ljava/lang/Throwable;

    invoke-interface {v0, v1, v2}, Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTaskListener;->onAsyncHttpTaskFailed(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 177
    :cond_0
    return-void
.end method
