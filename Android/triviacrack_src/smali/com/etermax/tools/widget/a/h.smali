.class public Lcom/etermax/tools/widget/a/h;
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


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/etermax/tools/widget/a/g",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:I


# direct methods
.method public constructor <init>(Ljava/util/List;I)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/tools/widget/a/g",
            "<TT;>;>;I)V"
        }
    .end annotation

    .prologue
    .line 11
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/etermax/tools/widget/a/h;-><init>(Ljava/util/List;IZ)V

    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/util/List;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/tools/widget/a/g",
            "<TT;>;>;IZ)V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/etermax/tools/widget/a/h;->a:Ljava/util/List;

    .line 16
    iput p2, p0, Lcom/etermax/tools/widget/a/h;->c:I

    .line 17
    iput-boolean p3, p0, Lcom/etermax/tools/widget/a/h;->b:Z

    .line 18
    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/tools/widget/a/g",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Lcom/etermax/tools/widget/a/h;->a:Ljava/util/List;

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/etermax/tools/widget/a/h;->c:I

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/etermax/tools/widget/a/h;->b:Z

    return v0
.end method
