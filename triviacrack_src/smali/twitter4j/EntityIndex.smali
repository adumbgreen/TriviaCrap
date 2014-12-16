.class abstract Ltwitter4j/EntityIndex;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Ltwitter4j/EntityIndex;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x34253b6026e7c95fL


# instance fields
.field private end:I

.field private start:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput v0, p0, Ltwitter4j/EntityIndex;->start:I

    .line 25
    iput v0, p0, Ltwitter4j/EntityIndex;->end:I

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 22
    check-cast p1, Ltwitter4j/EntityIndex;

    invoke-virtual {p0, p1}, Ltwitter4j/EntityIndex;->compareTo(Ltwitter4j/EntityIndex;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ltwitter4j/EntityIndex;)I
    .locals 4
    .parameter

    .prologue
    .line 29
    iget v0, p0, Ltwitter4j/EntityIndex;->start:I

    iget v1, p1, Ltwitter4j/EntityIndex;->start:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    .line 30
    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 31
    const/high16 v0, -0x8000

    .line 35
    :goto_0
    return v0

    .line 32
    :cond_0
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 33
    const v0, 0x7fffffff

    goto :goto_0

    .line 35
    :cond_1
    long-to-int v0, v0

    goto :goto_0
.end method

.method getEnd()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Ltwitter4j/EntityIndex;->end:I

    return v0
.end method

.method getStart()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Ltwitter4j/EntityIndex;->start:I

    return v0
.end method

.method setEnd(I)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput p1, p0, Ltwitter4j/EntityIndex;->end:I

    .line 44
    return-void
.end method

.method setStart(I)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput p1, p0, Ltwitter4j/EntityIndex;->start:I

    .line 40
    return-void
.end method
