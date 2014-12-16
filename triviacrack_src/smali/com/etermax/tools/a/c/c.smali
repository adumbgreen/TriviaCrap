.class public Lcom/etermax/tools/a/c/c;
.super Ljava/lang/RuntimeException;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/tools/b/e;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 22
    sget v0, Lcom/etermax/o;->no_internet_connection:I

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 27
    sget v0, Lcom/etermax/o;->no_internet_connection:I

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x1

    return v0
.end method
