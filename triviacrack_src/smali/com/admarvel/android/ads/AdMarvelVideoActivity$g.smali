.class Lcom/admarvel/android/ads/AdMarvelVideoActivity$g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/admarvel/android/ads/AdMarvelVideoActivity;


# direct methods
.method public constructor <init>(Lcom/admarvel/android/ads/AdMarvelVideoActivity;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$g;->c:Lcom/admarvel/android/ads/AdMarvelVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$g;->b:Ljava/util/List;

    iput p2, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$g;->a:I

    iput-object p3, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$g;->b:Ljava/util/List;

    return-void
.end method
