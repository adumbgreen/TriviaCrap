.class public Lcom/admarvel/android/b/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field a:I

.field b:I

.field c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field d:J

.field e:J

.field f:F

.field g:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Lcom/admarvel/android/b/a/a;->d:J

    return-wide v0
.end method

.method public a(F)V
    .locals 0

    iput p1, p0, Lcom/admarvel/android/b/a/a;->f:F

    return-void
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/admarvel/android/b/a/a;->g:I

    return-void
.end method

.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/admarvel/android/b/a/a;->d:J

    return-void
.end method

.method public a(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/admarvel/android/b/a/a;->c:Ljava/util/HashMap;

    return-void
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lcom/admarvel/android/b/a/a;->e:J

    return-wide v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/admarvel/android/b/a/a;->a:I

    return-void
.end method

.method public b(J)V
    .locals 0

    iput-wide p1, p0, Lcom/admarvel/android/b/a/a;->e:J

    return-void
.end method

.method public c()F
    .locals 1

    iget v0, p0, Lcom/admarvel/android/b/a/a;->f:F

    return v0
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/admarvel/android/b/a/a;->b:I

    return-void
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/admarvel/android/b/a/a;->g:I

    return v0
.end method

.method public e()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/admarvel/android/b/a/a;->c:Ljava/util/HashMap;

    return-object v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/admarvel/android/b/a/a;->a:I

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/admarvel/android/b/a/a;->b:I

    return v0
.end method
