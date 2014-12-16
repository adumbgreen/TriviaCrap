.class public abstract Lcom/etermax/tools/f/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected P:[Lcom/etermax/tools/f/c;

.field protected Q:[Lcom/etermax/tools/f/c;

.field private a:Ljava/lang/String;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-array v0, v3, [Lcom/etermax/tools/f/c;

    sget-object v1, Lcom/etermax/tools/f/c;->a:Lcom/etermax/tools/f/c;

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/etermax/tools/f/a/a;->P:[Lcom/etermax/tools/f/c;

    .line 14
    new-array v0, v3, [Lcom/etermax/tools/f/c;

    sget-object v1, Lcom/etermax/tools/f/c;->a:Lcom/etermax/tools/f/c;

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/etermax/tools/f/a/a;->Q:[Lcom/etermax/tools/f/c;

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/etermax/tools/f/a/a;->b:Ljava/util/Map;

    .line 20
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/etermax/tools/f/a/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/etermax/tools/f/a/a;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    return-void
.end method

.method public abstract b()[Lcom/etermax/tools/f/c;
.end method

.method public e()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/etermax/tools/f/a/a;->b:Ljava/util/Map;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Lcom/etermax/tools/f/a/a;->a:Ljava/lang/String;

    .line 24
    return-void
.end method
