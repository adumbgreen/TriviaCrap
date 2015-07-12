.class Lcom/smartadserver/android/library/f/a/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/smartadserver/android/library/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/f/a/b;->a(ILjava/lang/String;ILjava/lang/String;ZLcom/smartadserver/android/library/ui/a;ILorg/json/JSONObject;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/ui/a;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/smartadserver/android/library/f/a/b;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/f/a/b;Lcom/smartadserver/android/library/ui/a;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/smartadserver/android/library/f/a/b$1;->c:Lcom/smartadserver/android/library/f/a/b;

    iput-object p2, p0, Lcom/smartadserver/android/library/f/a/b$1;->a:Lcom/smartadserver/android/library/ui/a;

    iput-object p3, p0, Lcom/smartadserver/android/library/f/a/b$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 4
    .parameter

    .prologue
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ad call failed with exception : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/smartadserver/android/library/h/c;->c(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/smartadserver/android/library/f/a/b$1;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-interface {v0, p1}, Lcom/smartadserver/android/library/ui/a;->adLoadingFailed(Ljava/lang/Exception;)V

    .line 120
    iget-object v0, p0, Lcom/smartadserver/android/library/f/a/b$1;->c:Lcom/smartadserver/android/library/f/a/b;

    invoke-static {v0}, Lcom/smartadserver/android/library/f/a/b;->a(Lcom/smartadserver/android/library/f/a/b;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/smartadserver/android/library/f/a/b$1;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/smartadserver/android/library/f/a/b$1;->c:Lcom/smartadserver/android/library/f/a/b;

    invoke-static {v2}, Lcom/smartadserver/android/library/f/a/b;->b(Lcom/smartadserver/android/library/f/a/b;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/smartadserver/android/library/f/a/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, p1, v2, v3}, Lcom/smartadserver/android/library/a/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    .line 96
    const/4 v0, 0x0

    .line 98
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 99
    invoke-static {}, Lcom/smartadserver/android/library/f/a/b;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSuccess:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/h/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-static {p1}, Lcom/smartadserver/android/library/c/a;->a(Ljava/lang/String;)Lcom/smartadserver/android/library/d/a;

    move-result-object v0

    .line 102
    :cond_0
    if-eqz v0, :cond_1

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad call succeeded with response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/smartadserver/android/library/h/c;->a(Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, Lcom/smartadserver/android/library/f/a/b$1;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-interface {v1, v0}, Lcom/smartadserver/android/library/ui/a;->adLoadingCompleted(Lcom/smartadserver/android/library/d/a;)V

    .line 115
    :goto_0
    return-void

    .line 106
    :cond_1
    const-string v0, "There is no ad to deliver on this placement. Please check the ad request parameters (in the loadAd method) and the ad programming on the manage interface: "

    invoke-static {v0}, Lcom/smartadserver/android/library/h/c;->b(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/smartadserver/android/library/f/a/b$1;->a:Lcom/smartadserver/android/library/ui/a;

    new-instance v1, Lcom/smartadserver/android/library/a/f;

    const-string v2, "No ad to deliver or invalid ad request parameters"

    invoke-direct {v1, v2}, Lcom/smartadserver/android/library/a/f;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/smartadserver/android/library/ui/a;->adLoadingFailed(Ljava/lang/Exception;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "An error occurred when parsing the JSON received from the server. Please check the ad programming on the manage interface. JSON : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/smartadserver/android/library/h/c;->c(Ljava/lang/String;)V

    .line 111
    new-instance v1, Lcom/smartadserver/android/library/a/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "An error occurred when parsing JSON ad content. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/smartadserver/android/library/a/e;-><init>(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/smartadserver/android/library/f/a/b$1;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-interface {v0, v1}, Lcom/smartadserver/android/library/ui/a;->adLoadingFailed(Ljava/lang/Exception;)V

    .line 113
    iget-object v0, p0, Lcom/smartadserver/android/library/f/a/b$1;->c:Lcom/smartadserver/android/library/f/a/b;

    invoke-static {v0}, Lcom/smartadserver/android/library/f/a/b;->a(Lcom/smartadserver/android/library/f/a/b;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/smartadserver/android/library/f/a/b$1;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/smartadserver/android/library/f/a/b$1;->c:Lcom/smartadserver/android/library/f/a/b;

    invoke-static {v3}, Lcom/smartadserver/android/library/f/a/b;->b(Lcom/smartadserver/android/library/f/a/b;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/smartadserver/android/library/f/a/b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v1, v3, v4}, Lcom/smartadserver/android/library/a/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
