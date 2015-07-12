.class Lcom/lifestreet/android/lsmsdk/mraid/MRAIDNativeInterface$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lifestreet/android/lsmsdk/mraid/MRAIDNativeInterface;->callMethod(Ljava/lang/String;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDNativeInterface;

.field final synthetic val$methodName:Ljava/lang/String;

.field final synthetic val$methodParams:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lifestreet/android/lsmsdk/mraid/MRAIDNativeInterface;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDNativeInterface$1;->this$0:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDNativeInterface;

    iput-object p2, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDNativeInterface$1;->val$methodName:Ljava/lang/String;

    iput-object p3, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDNativeInterface$1;->val$methodParams:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDNativeInterface$1;->this$0:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDNativeInterface;

    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDNativeInterface$1;->val$methodName:Ljava/lang/String;

    iget-object v2, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDNativeInterface$1;->val$methodParams:Ljava/lang/String;

    #calls: Lcom/lifestreet/android/lsmsdk/mraid/MRAIDNativeInterface;->runMethod(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDNativeInterface;->access$000(Lcom/lifestreet/android/lsmsdk/mraid/MRAIDNativeInterface;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method
