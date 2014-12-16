.class final Lcom/etermax/adsinterface/a/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/adsinterface/a/a;->a(Landroid/content/Context;Lorg/json/JSONObject;Lcom/etermax/adsinterface/a/c;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lorg/json/JSONObject;

.field final synthetic c:Lcom/etermax/adsinterface/a/c;


# direct methods
.method constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;Lcom/etermax/adsinterface/a/c;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/etermax/adsinterface/a/a$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/etermax/adsinterface/a/a$1;->b:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/etermax/adsinterface/a/a$1;->c:Lcom/etermax/adsinterface/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 77
    new-instance v0, Lcom/etermax/adsinterface/a/k;

    iget-object v1, p0, Lcom/etermax/adsinterface/a/a$1;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/etermax/adsinterface/a/k;-><init>(Landroid/content/Context;)V

    .line 79
    :try_start_0
    iget-object v1, p0, Lcom/etermax/adsinterface/a/a$1;->b:Lorg/json/JSONObject;

    const-string v2, "u"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/adsinterface/a/a$1;->b:Lorg/json/JSONObject;

    const-string v3, "v"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/etermax/adsinterface/a/k;->a(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    .line 81
    new-instance v1, Lcom/etermax/adsinterface/a/a;

    iget-object v2, p0, Lcom/etermax/adsinterface/a/a$1;->a:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/etermax/adsinterface/a/a;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Lcom/etermax/adsinterface/a/a$1;)V

    .line 82
    iget-object v0, p0, Lcom/etermax/adsinterface/a/a$1;->a:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/etermax/adsinterface/a/a$1;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v2, Lcom/etermax/adsinterface/a/a$1$1;

    invoke-direct {v2, p0, v1}, Lcom/etermax/adsinterface/a/a$1$1;-><init>(Lcom/etermax/adsinterface/a/a$1;Lcom/etermax/adsinterface/a/a;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 104
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/etermax/adsinterface/a/a$1;->c:Lcom/etermax/adsinterface/a/c;

    invoke-interface {v0, v1}, Lcom/etermax/adsinterface/a/c;->onAdInfoLoadedOk(Lcom/etermax/adsinterface/a/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 93
    iget-object v0, p0, Lcom/etermax/adsinterface/a/a$1;->a:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/etermax/adsinterface/a/a$1;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v2, Lcom/etermax/adsinterface/a/a$1$2;

    invoke-direct {v2, p0, v1}, Lcom/etermax/adsinterface/a/a$1$2;-><init>(Lcom/etermax/adsinterface/a/a$1;Ljava/lang/Exception;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/etermax/adsinterface/a/a$1;->c:Lcom/etermax/adsinterface/a/c;

    invoke-interface {v0, v1}, Lcom/etermax/adsinterface/a/c;->onAdInfoLoadedFailed(Ljava/lang/Exception;)V

    goto :goto_0
.end method
