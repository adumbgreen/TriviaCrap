.class public Lcom/mdotm/android/vast/c;
.super Lcom/mdotm/android/vast/b;
.source "SourceFile"


# instance fields
.field protected b:Ljava/lang/String;

.field protected c:Lcom/mdotm/android/vast/d;

.field protected d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected e:Lcom/mdotm/android/vast/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/mdotm/android/vast/b;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mdotm/android/vast/c;->d:Ljava/util/ArrayList;

    .line 5
    return-void
.end method


# virtual methods
.method public a(Lcom/mdotm/android/vast/d;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/mdotm/android/vast/c;->c:Lcom/mdotm/android/vast/d;

    .line 39
    return-void
.end method

.method public b()Lcom/mdotm/android/vast/d;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/mdotm/android/vast/c;->c:Lcom/mdotm/android/vast/d;

    return-object v0
.end method

.method public c()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lcom/mdotm/android/vast/c;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method public d()Lcom/mdotm/android/vast/a;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/mdotm/android/vast/c;->e:Lcom/mdotm/android/vast/a;

    return-object v0
.end method
