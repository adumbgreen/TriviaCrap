.class public Lcom/etermax/tools/widget/a/g;
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
.field private a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private b:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/etermax/tools/widget/a/g;->a:Ljava/lang/Object;

    .line 10
    iput p2, p0, Lcom/etermax/tools/widget/a/g;->b:I

    .line 11
    return-void
.end method


# virtual methods
.method public c()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 14
    iget-object v0, p0, Lcom/etermax/tools/widget/a/g;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/etermax/tools/widget/a/g;->b:I

    return v0
.end method
