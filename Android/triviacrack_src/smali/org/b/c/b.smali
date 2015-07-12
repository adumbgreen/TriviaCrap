.class public Lorg/b/c/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final a:Lorg/b/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/b/c/b",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lorg/b/c/c;

.field private final c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lorg/b/c/b;

    invoke-direct {v0}, Lorg/b/c/b;-><init>()V

    sput-object v0, Lorg/b/c/b;->a:Lorg/b/c/b;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, v0, v0}, Lorg/b/c/b;-><init>(Ljava/lang/Object;Lorg/b/d/h;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/b/c/b;-><init>(Ljava/lang/Object;Lorg/b/d/h;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/b/d/h;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/b/d/h",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lorg/b/c/b;->c:Ljava/lang/Object;

    .line 96
    new-instance v0, Lorg/b/c/c;

    invoke-direct {v0}, Lorg/b/c/c;-><init>()V

    .line 97
    if-eqz p2, :cond_0

    .line 98
    invoke-virtual {v0, p2}, Lorg/b/c/c;->putAll(Ljava/util/Map;)V

    .line 100
    :cond_0
    invoke-static {v0}, Lorg/b/c/c;->a(Lorg/b/c/c;)Lorg/b/c/c;

    move-result-object v0

    iput-object v0, p0, Lorg/b/c/b;->b:Lorg/b/c/c;

    .line 101
    return-void
.end method

.method public constructor <init>(Lorg/b/d/h;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/d/h",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/b/c/b;-><init>(Ljava/lang/Object;Lorg/b/d/h;)V

    .line 87
    return-void
.end method


# virtual methods
.method public a()Lorg/b/c/c;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lorg/b/c/b;->b:Lorg/b/c/c;

    return-object v0
.end method

.method public b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lorg/b/c/b;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lorg/b/c/b;->c:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    iget-object v1, p0, Lorg/b/c/b;->c:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 129
    iget-object v1, p0, Lorg/b/c/b;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 130
    iget-object v1, p0, Lorg/b/c/b;->b:Lorg/b/c/c;

    if-eqz v1, :cond_0

    .line 131
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 134
    :cond_0
    iget-object v1, p0, Lorg/b/c/b;->b:Lorg/b/c/c;

    if-eqz v1, :cond_1

    .line 135
    iget-object v1, p0, Lorg/b/c/b;->b:Lorg/b/c/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 137
    :cond_1
    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
