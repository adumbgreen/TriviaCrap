.class public Lcom/etermax/tools/bugcatcher/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/etermax/tools/bugcatcher/i;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/etermax/tools/bugcatcher/i;->a:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/etermax/tools/bugcatcher/i;->b:Ljava/lang/String;

    .line 13
    iput-boolean p3, p0, Lcom/etermax/tools/bugcatcher/i;->c:Z

    .line 14
    return-void
.end method


# virtual methods
.method public a(Lcom/etermax/tools/bugcatcher/i;)I
    .locals 2
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/etermax/tools/bugcatcher/i;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/etermax/tools/bugcatcher/i;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/etermax/tools/bugcatcher/i;->c:Z

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/etermax/tools/bugcatcher/i;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/etermax/tools/bugcatcher/i;->b:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 4
    check-cast p1, Lcom/etermax/tools/bugcatcher/i;

    invoke-virtual {p0, p1}, Lcom/etermax/tools/bugcatcher/i;->a(Lcom/etermax/tools/bugcatcher/i;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 34
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/etermax/tools/bugcatcher/i;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/etermax/tools/bugcatcher/i;

    iget-object v0, p1, Lcom/etermax/tools/bugcatcher/i;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/etermax/tools/bugcatcher/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/etermax/tools/bugcatcher/i;->b:Ljava/lang/String;

    return-object v0
.end method
