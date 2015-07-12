.class public Lcom/etermax/tools/j/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lcom/google/gson/Gson;


# instance fields
.field a:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static a()Lcom/google/gson/Gson;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/etermax/tools/j/a;->b:Lcom/google/gson/Gson;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/etermax/tools/j/a;->b:Lcom/google/gson/Gson;

    .line 23
    :cond_0
    sget-object v0, Lcom/etermax/tools/j/a;->b:Lcom/google/gson/Gson;

    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/etermax/tools/j/a;->a:Landroid/content/Context;

    instance-of v0, v0, Lcom/etermax/tools/a;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/etermax/tools/j/a;->a:Landroid/content/Context;

    check-cast v0, Lcom/etermax/tools/a;

    invoke-interface {v0}, Lcom/etermax/tools/a;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Application must implement IApplicationDevice"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/etermax/tools/j/a;->a:Landroid/content/Context;

    instance-of v0, v0, Lcom/etermax/tools/j/b;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/etermax/tools/j/a;->a:Landroid/content/Context;

    check-cast v0, Lcom/etermax/tools/j/b;

    invoke-interface {v0}, Lcom/etermax/tools/j/b;->y()Z

    move-result v0

    return v0

    .line 45
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Application must implement IApplicationVersion"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
