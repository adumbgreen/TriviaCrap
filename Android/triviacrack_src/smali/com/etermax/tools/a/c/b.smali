.class public abstract Lcom/etermax/tools/a/c/b;
.super Ljava/lang/RuntimeException;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/tools/b/e;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-direct {p0, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 17
    iput p1, p0, Lcom/etermax/tools/a/c/b;->a:I

    .line 18
    iput-object p2, p0, Lcom/etermax/tools/a/c/b;->b:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public constructor <init>(Lorg/b/e/a/b;)V
    .locals 2
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 24
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/b/e/a/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 25
    const-string v1, "code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/etermax/tools/a/c/b;->a:I

    .line 26
    const-string v1, "message"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/tools/a/c/b;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    return-void

    .line 27
    :catch_0
    move-exception v0

    .line 28
    throw p1
.end method


# virtual methods
.method public final c()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/etermax/tools/a/c/b;->a:I

    return v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/etermax/tools/a/c/b;->b:Ljava/lang/String;

    return-object v0
.end method
