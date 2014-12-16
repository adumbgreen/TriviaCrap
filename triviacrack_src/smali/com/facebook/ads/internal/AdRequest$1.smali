.class Lcom/facebook/ads/internal/AdRequest$1;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/AdRequest;->executeAsync()Landroid/os/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/facebook/ads/internal/AdRequest$AdRequestResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/ads/internal/AdRequest;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/AdRequest;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/facebook/ads/internal/AdRequest$1;->this$0:Lcom/facebook/ads/internal/AdRequest;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/facebook/ads/internal/AdRequest$AdRequestResponse;
    .locals 1
    .parameter

    .prologue
    .line 138
    iget-object v0, p0, Lcom/facebook/ads/internal/AdRequest$1;->this$0:Lcom/facebook/ads/internal/AdRequest;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/AdRequest;->executeConnectionAndWait()Lcom/facebook/ads/internal/AdRequest$AdRequestResponse;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 135
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/AdRequest$1;->doInBackground([Ljava/lang/Void;)Lcom/facebook/ads/internal/AdRequest$AdRequestResponse;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/facebook/ads/internal/AdRequest$AdRequestResponse;)V
    .locals 2
    .parameter

    .prologue
    .line 143
    if-nez p1, :cond_0

    .line 144
    iget-object v0, p0, Lcom/facebook/ads/internal/AdRequest$1;->this$0:Lcom/facebook/ads/internal/AdRequest;

    #getter for: Lcom/facebook/ads/internal/AdRequest;->callback:Lcom/facebook/ads/internal/AdRequest$Callback;
    invoke-static {v0}, Lcom/facebook/ads/internal/AdRequest;->access$000(Lcom/facebook/ads/internal/AdRequest;)Lcom/facebook/ads/internal/AdRequest$Callback;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/AdError;->INTERNAL_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/AdRequest$Callback;->onError(Lcom/facebook/ads/AdError;)V

    .line 151
    :goto_0
    return-void

    .line 145
    :cond_0
    iget-object v0, p1, Lcom/facebook/ads/internal/AdRequest$AdRequestResponse;->error:Lcom/facebook/ads/AdError;

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/facebook/ads/internal/AdRequest$1;->this$0:Lcom/facebook/ads/internal/AdRequest;

    #getter for: Lcom/facebook/ads/internal/AdRequest;->callback:Lcom/facebook/ads/internal/AdRequest$Callback;
    invoke-static {v0}, Lcom/facebook/ads/internal/AdRequest;->access$000(Lcom/facebook/ads/internal/AdRequest;)Lcom/facebook/ads/internal/AdRequest$Callback;

    move-result-object v0

    iget-object v1, p1, Lcom/facebook/ads/internal/AdRequest$AdRequestResponse;->error:Lcom/facebook/ads/AdError;

    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/AdRequest$Callback;->onError(Lcom/facebook/ads/AdError;)V

    goto :goto_0

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/internal/AdRequest$1;->this$0:Lcom/facebook/ads/internal/AdRequest;

    #getter for: Lcom/facebook/ads/internal/AdRequest;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/facebook/ads/internal/AdRequest;->access$100(Lcom/facebook/ads/internal/AdRequest;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p1, Lcom/facebook/ads/internal/AdRequest$AdRequestResponse;->body:Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/AdResponse;->parseResponse(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/facebook/ads/internal/AdResponse;

    move-result-object v0

    .line 149
    iget-object v1, p0, Lcom/facebook/ads/internal/AdRequest$1;->this$0:Lcom/facebook/ads/internal/AdRequest;

    #getter for: Lcom/facebook/ads/internal/AdRequest;->callback:Lcom/facebook/ads/internal/AdRequest$Callback;
    invoke-static {v1}, Lcom/facebook/ads/internal/AdRequest;->access$000(Lcom/facebook/ads/internal/AdRequest;)Lcom/facebook/ads/internal/AdRequest$Callback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/facebook/ads/internal/AdRequest$Callback;->onCompleted(Lcom/facebook/ads/internal/AdResponse;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    check-cast p1, Lcom/facebook/ads/internal/AdRequest$AdRequestResponse;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/AdRequest$1;->onPostExecute(Lcom/facebook/ads/internal/AdRequest$AdRequestResponse;)V

    return-void
.end method
