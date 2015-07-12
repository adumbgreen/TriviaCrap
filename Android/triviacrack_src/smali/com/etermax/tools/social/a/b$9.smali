.class Lcom/etermax/tools/social/a/b$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/Request$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/tools/social/a/b;->a(Lcom/etermax/tools/social/a/f;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/tools/social/a/f;

.field final synthetic b:Lcom/etermax/tools/social/a/b;


# direct methods
.method constructor <init>(Lcom/etermax/tools/social/a/b;Lcom/etermax/tools/social/a/f;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 694
    iput-object p1, p0, Lcom/etermax/tools/social/a/b$9;->b:Lcom/etermax/tools/social/a/b;

    iput-object p2, p0, Lcom/etermax/tools/social/a/b$9;->a:Lcom/etermax/tools/social/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/Response;)V
    .locals 3
    .parameter

    .prologue
    .line 696
    const/4 v1, 0x0

    .line 698
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/Response;->getGraphObject()Lcom/facebook/model/GraphObject;

    move-result-object v0

    const-string v2, "cover"

    invoke-interface {v0, v2}, Lcom/facebook/model/GraphObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 699
    if-eqz v0, :cond_0

    .line 700
    const-string v2, "source"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 706
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 707
    iget-object v1, p0, Lcom/etermax/tools/social/a/b$9;->a:Lcom/etermax/tools/social/a/f;

    invoke-interface {v1, v0}, Lcom/etermax/tools/social/a/f;->a(Ljava/lang/String;)V

    .line 711
    :goto_1
    return-void

    .line 702
    :catch_0
    move-exception v0

    .line 703
    iget-object v0, p0, Lcom/etermax/tools/social/a/b$9;->a:Lcom/etermax/tools/social/a/f;

    const-string v2, "No Cover Photo?"

    invoke-interface {v0, v2}, Lcom/etermax/tools/social/a/f;->b(Ljava/lang/String;)V

    :cond_0
    move-object v0, v1

    goto :goto_0

    .line 709
    :cond_1
    iget-object v0, p0, Lcom/etermax/tools/social/a/b$9;->a:Lcom/etermax/tools/social/a/f;

    invoke-interface {v0}, Lcom/etermax/tools/social/a/f;->a()V

    goto :goto_1
.end method
