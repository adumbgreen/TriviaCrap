.class public final Lcom/google/android/gms/internal/aj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/k;


# instance fields
.field public final a:I

.field public final b:J

.field public final c:Landroid/os/Bundle;

.field public final d:I

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Z

.field public final g:I

.field public final h:Z

.field public final i:Ljava/lang/String;

.field public final j:Lcom/google/android/gms/internal/ax;

.field public final k:Landroid/location/Location;

.field public final l:Ljava/lang/String;

.field public final m:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/k;

    invoke-direct {v0}, Lcom/google/android/gms/internal/k;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/aj;->CREATOR:Lcom/google/android/gms/internal/k;

    return-void
.end method

.method public constructor <init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/internal/ax;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Landroid/os/Bundle;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ZIZ",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ax;",
            "Landroid/location/Location;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/aj;->a:I

    iput-wide p2, p0, Lcom/google/android/gms/internal/aj;->b:J

    iput-object p4, p0, Lcom/google/android/gms/internal/aj;->c:Landroid/os/Bundle;

    iput p5, p0, Lcom/google/android/gms/internal/aj;->d:I

    iput-object p6, p0, Lcom/google/android/gms/internal/aj;->e:Ljava/util/List;

    iput-boolean p7, p0, Lcom/google/android/gms/internal/aj;->f:Z

    iput p8, p0, Lcom/google/android/gms/internal/aj;->g:I

    iput-boolean p9, p0, Lcom/google/android/gms/internal/aj;->h:Z

    iput-object p10, p0, Lcom/google/android/gms/internal/aj;->i:Ljava/lang/String;

    iput-object p11, p0, Lcom/google/android/gms/internal/aj;->j:Lcom/google/android/gms/internal/ax;

    iput-object p12, p0, Lcom/google/android/gms/internal/aj;->k:Landroid/location/Location;

    iput-object p13, p0, Lcom/google/android/gms/internal/aj;->l:Ljava/lang/String;

    iput-object p14, p0, Lcom/google/android/gms/internal/aj;->m:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/k;->a(Lcom/google/android/gms/internal/aj;Landroid/os/Parcel;I)V

    return-void
.end method
