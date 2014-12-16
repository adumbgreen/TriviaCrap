.class Lcom/etermax/tools/social/a/b$1$1;
.super Lcom/etermax/tools/i/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/tools/social/a/b$1;->a()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/i/a",
        "<",
        "Landroid/support/v4/app/Fragment;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/tools/social/a/b$1;


# direct methods
.method constructor <init>(Lcom/etermax/tools/social/a/b$1;)V
    .locals 0
    .parameter

    .prologue
    .line 947
    iput-object p1, p0, Lcom/etermax/tools/social/a/b$1$1;->a:Lcom/etermax/tools/social/a/b$1;

    invoke-direct {p0}, Lcom/etermax/tools/i/a;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 947
    invoke-virtual {p0}, Lcom/etermax/tools/social/a/b$1$1;->b()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/support/v4/app/Fragment;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 970
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 971
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 947
    check-cast p1, Landroid/support/v4/app/Fragment;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/tools/social/a/b$1$1;->a(Landroid/support/v4/app/Fragment;Ljava/lang/Exception;)V

    return-void
.end method

.method public b()Ljava/lang/Void;
    .locals 8

    .prologue
    .line 952
    iget-object v0, p0, Lcom/etermax/tools/social/a/b$1$1;->a:Lcom/etermax/tools/social/a/b$1;

    iget-object v0, v0, Lcom/etermax/tools/social/a/b$1;->e:Lcom/etermax/tools/social/a/b;

    iget-object v1, p0, Lcom/etermax/tools/social/a/b$1$1;->a:Lcom/etermax/tools/social/a/b$1;

    iget v1, v1, Lcom/etermax/tools/social/a/b$1;->b:I

    invoke-static {v0, v1}, Lcom/etermax/tools/social/a/b;->a(Lcom/etermax/tools/social/a/b;I)Lcom/facebook/model/GraphObjectList;

    move-result-object v2

    .line 953
    if-eqz v2, :cond_0

    .line 954
    iget-object v0, p0, Lcom/etermax/tools/social/a/b$1$1;->a:Lcom/etermax/tools/social/a/b$1;

    invoke-interface {v2}, Lcom/facebook/model/GraphObjectList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/etermax/tools/social/a/c;

    iput-object v1, v0, Lcom/etermax/tools/social/a/b$1;->a:[Lcom/etermax/tools/social/a/c;

    .line 955
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Lcom/facebook/model/GraphObjectList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 956
    invoke-interface {v2, v1}, Lcom/facebook/model/GraphObjectList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/model/GraphObject;

    invoke-interface {v0}, Lcom/facebook/model/GraphObject;->getInnerJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 958
    :try_start_0
    iget-object v3, p0, Lcom/etermax/tools/social/a/b$1$1;->a:Lcom/etermax/tools/social/a/b$1;

    iget-object v3, v3, Lcom/etermax/tools/social/a/b$1;->a:[Lcom/etermax/tools/social/a/c;

    new-instance v4, Lcom/etermax/tools/social/a/c;

    iget-object v5, p0, Lcom/etermax/tools/social/a/b$1$1;->a:Lcom/etermax/tools/social/a/b$1;

    iget-object v5, v5, Lcom/etermax/tools/social/a/b$1;->e:Lcom/etermax/tools/social/a/b;

    const-string v6, "uid"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "name"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v5, v6, v0}, Lcom/etermax/tools/social/a/c;-><init>(Lcom/etermax/tools/social/a/b;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v3, v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 955
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 959
    :catch_0
    move-exception v0

    .line 960
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 964
    :cond_0
    iget-object v0, p0, Lcom/etermax/tools/social/a/b$1$1;->a:Lcom/etermax/tools/social/a/b$1;

    iget-object v0, v0, Lcom/etermax/tools/social/a/b$1;->c:Lcom/etermax/tools/social/a/h;

    iget-object v1, p0, Lcom/etermax/tools/social/a/b$1$1;->a:Lcom/etermax/tools/social/a/b$1;

    iget-object v1, v1, Lcom/etermax/tools/social/a/b$1;->a:[Lcom/etermax/tools/social/a/c;

    invoke-interface {v0, v1}, Lcom/etermax/tools/social/a/h;->a([Lcom/etermax/tools/social/a/c;)V

    .line 965
    const/4 v0, 0x0

    return-object v0
.end method
