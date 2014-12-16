.class public Lcom/etermax/widget/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/widget/a;

.field private b:Ljava/text/Collator;


# direct methods
.method public constructor <init>(Lcom/etermax/widget/a;Ljava/text/Collator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/etermax/widget/b;->a:Lcom/etermax/widget/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p2, p0, Lcom/etermax/widget/b;->b:Ljava/text/Collator;

    .line 69
    return-void
.end method


# virtual methods
.method public a(Lcom/etermax/widget/a/a;Lcom/etermax/widget/a/a;)I
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/etermax/widget/b;->b:Ljava/text/Collator;

    invoke-virtual {p1}, Lcom/etermax/widget/a/a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/etermax/widget/a/a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 63
    check-cast p1, Lcom/etermax/widget/a/a;

    check-cast p2, Lcom/etermax/widget/a/a;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/widget/b;->a(Lcom/etermax/widget/a/a;Lcom/etermax/widget/a/a;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method
