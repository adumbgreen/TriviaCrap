.class public Lcom/etermax/preguntados/ui/game/duelmode/adapter/c;
.super Lcom/etermax/tools/widget/a/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/widget/a/g",
        "<",
        "Lcom/etermax/preguntados/datasource/dto/DuelPlayerDTO;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Lcom/etermax/preguntados/datasource/dto/DuelPlayerDTO;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Lcom/etermax/tools/widget/a/g;-><init>(Ljava/lang/Object;I)V

    .line 12
    iput p3, p0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/c;->a:I

    .line 13
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/c;->a:I

    return v0
.end method
