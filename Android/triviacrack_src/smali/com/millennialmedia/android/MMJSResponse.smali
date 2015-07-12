.class Lcom/millennialmedia/android/MMJSResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:I

.field d:Ljava/lang/Object;

.field e:[B


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Lcom/millennialmedia/android/MMJSResponse;
    .locals 1

    .prologue
    .line 38
    const-string v0, "Success."

    invoke-static {v0}, Lcom/millennialmedia/android/MMJSResponse;->a(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 2
    .parameter

    .prologue
    .line 44
    new-instance v0, Lcom/millennialmedia/android/MMJSResponse;

    invoke-direct {v0}, Lcom/millennialmedia/android/MMJSResponse;-><init>()V

    .line 45
    const/4 v1, 0x1

    iput v1, v0, Lcom/millennialmedia/android/MMJSResponse;->c:I

    .line 46
    iput-object p0, v0, Lcom/millennialmedia/android/MMJSResponse;->d:Ljava/lang/Object;

    .line 47
    return-object v0
.end method

.method static b()Lcom/millennialmedia/android/MMJSResponse;
    .locals 1

    .prologue
    .line 53
    const-string v0, "An unknown error occured."

    invoke-static {v0}, Lcom/millennialmedia/android/MMJSResponse;->b(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    return-object v0
.end method

.method static b(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 2
    .parameter

    .prologue
    .line 59
    new-instance v0, Lcom/millennialmedia/android/MMJSResponse;

    invoke-direct {v0}, Lcom/millennialmedia/android/MMJSResponse;-><init>()V

    .line 60
    const/4 v1, 0x0

    iput v1, v0, Lcom/millennialmedia/android/MMJSResponse;->c:I

    .line 61
    iput-object p0, v0, Lcom/millennialmedia/android/MMJSResponse;->d:Ljava/lang/Object;

    .line 62
    return-object v0
.end method


# virtual methods
.method c()Ljava/lang/String;
    .locals 4

    .prologue
    .line 70
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 71
    iget-object v1, p0, Lcom/millennialmedia/android/MMJSResponse;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 72
    const-string v1, "class"

    iget-object v2, p0, Lcom/millennialmedia/android/MMJSResponse;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/millennialmedia/android/MMJSResponse;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 74
    const-string v1, "call"

    iget-object v2, p0, Lcom/millennialmedia/android/MMJSResponse;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    :cond_1
    const-string v1, "result"

    iget v2, p0, Lcom/millennialmedia/android/MMJSResponse;->c:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 76
    iget-object v1, p0, Lcom/millennialmedia/android/MMJSResponse;->d:Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 77
    const-string v1, "response"

    iget-object v2, p0, Lcom/millennialmedia/android/MMJSResponse;->d:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    .line 78
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/millennialmedia/android/MMJSResponse;->e:[B

    if-eqz v1, :cond_3

    .line 79
    const-string v1, "response"

    iget-object v2, p0, Lcom/millennialmedia/android/MMJSResponse;->e:[B

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/millennialmedia/android/Base64;->encodeToString([BZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    const-string v1, "MMJSResponse"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v0, ""

    goto :goto_1

    .line 82
    :cond_3
    :try_start_2
    const-string v0, ""
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method
