.class public Lorg/b/c/l;
.super Lorg/b/c/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/b/c/b",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final b:Lorg/b/c/i;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lorg/b/d/h;Lorg/b/c/i;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/b/d/h",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/b/c/i;",
            ")V"
        }
    .end annotation

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lorg/b/c/b;-><init>(Ljava/lang/Object;Lorg/b/d/h;)V

    .line 86
    iput-object p3, p0, Lorg/b/c/l;->b:Lorg/b/c/i;

    .line 87
    return-void
.end method

.method public constructor <init>(Lorg/b/d/h;Lorg/b/c/i;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/d/h",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/b/c/i;",
            ")V"
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lorg/b/c/b;-><init>(Lorg/b/d/h;)V

    .line 75
    iput-object p2, p0, Lorg/b/c/l;->b:Lorg/b/c/i;

    .line 76
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x2c

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    iget-object v1, p0, Lorg/b/c/l;->b:Lorg/b/c/i;

    invoke-virtual {v1}, Lorg/b/c/i;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 102
    iget-object v1, p0, Lorg/b/c/l;->b:Lorg/b/c/i;

    invoke-virtual {v1}, Lorg/b/c/i;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {p0}, Lorg/b/c/l;->b()Ljava/lang/Object;

    move-result-object v1

    .line 105
    invoke-virtual {p0}, Lorg/b/c/l;->a()Lorg/b/c/c;

    move-result-object v2

    .line 106
    if-eqz v1, :cond_0

    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    if-eqz v2, :cond_0

    .line 109
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 112
    :cond_0
    if-eqz v2, :cond_1

    .line 113
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 115
    :cond_1
    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
