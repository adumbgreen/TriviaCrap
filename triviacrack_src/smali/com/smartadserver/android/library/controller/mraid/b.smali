.class public Lcom/smartadserver/android/library/controller/mraid/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:Z

.field public d:Z

.field public e:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput v1, p0, Lcom/smartadserver/android/library/controller/mraid/b;->a:I

    .line 29
    iput v1, p0, Lcom/smartadserver/android/library/controller/mraid/b;->b:I

    .line 30
    iput-boolean v1, p0, Lcom/smartadserver/android/library/controller/mraid/b;->c:Z

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartadserver/android/library/controller/mraid/b;->d:Z

    .line 33
    iput-boolean v1, p0, Lcom/smartadserver/android/library/controller/mraid/b;->e:Z

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 38
    const-string v1, "width"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/smartadserver/android/library/controller/mraid/b;->a:I

    .line 39
    const-string v1, "height"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/smartadserver/android/library/controller/mraid/b;->b:I

    .line 40
    const-string v1, "useCustomClose"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/smartadserver/android/library/controller/mraid/b;->c:Z

    .line 42
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/smartadserver/android/library/controller/mraid/b;->d:Z

    .line 43
    const-string v1, "collapseAfterAdOpened"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/smartadserver/android/library/controller/mraid/b;->e:Z

    .line 44
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 48
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 50
    :try_start_0
    const-string v1, "width"

    iget v2, p0, Lcom/smartadserver/android/library/controller/mraid/b;->a:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 51
    const-string v1, "height"

    iget v2, p0, Lcom/smartadserver/android/library/controller/mraid/b;->b:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 52
    const-string v1, "useCustomClose"

    iget-boolean v2, p0, Lcom/smartadserver/android/library/controller/mraid/b;->c:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 53
    const-string v1, "isModal"

    iget-boolean v2, p0, Lcom/smartadserver/android/library/controller/mraid/b;->d:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 54
    const-string v1, "collapseAfterAdOpened"

    iget-boolean v2, p0, Lcom/smartadserver/android/library/controller/mraid/b;->e:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 56
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 58
    :goto_0
    return-object v0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    const-string v0, ""

    goto :goto_0
.end method
