.class public Lcom/etermax/tools/social/a/a;
.super Ljava/lang/RuntimeException;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/tools/b/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 14
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 15
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 29
    sget v0, Lcom/etermax/o;->facebook_credentials_invalid:I

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 24
    sget v0, Lcom/etermax/o;->facebook_credentials_invalid:I

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    return v0
.end method
