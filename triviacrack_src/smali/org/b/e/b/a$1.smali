.class final Lorg/b/e/b/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/b/e/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/b/e/b/a;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 948
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 951
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lorg/b/e/b/d;
    .locals 0
    .parameter

    .prologue
    .line 959
    return-object p0
.end method

.method public a(Lorg/b/e/b/f;)Lorg/b/e/b/d;
    .locals 0
    .parameter

    .prologue
    .line 966
    return-object p0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 963
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 971
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 976
    const/16 v0, 0x2a

    return v0
.end method
