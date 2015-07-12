.class public Lcom/smartadserver/android/library/ui/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/ui/SASAdView;

.field private b:I


# direct methods
.method private constructor <init>(Lcom/smartadserver/android/library/ui/SASAdView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1964
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/d;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    .line 1965
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1966
    iput p2, p0, Lcom/smartadserver/android/library/ui/d;->b:I

    .line 1967
    return-void
.end method

.method synthetic constructor <init>(Lcom/smartadserver/android/library/ui/SASAdView;ILcom/smartadserver/android/library/ui/SASAdView$1;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1938
    invoke-direct {p0, p1, p2}, Lcom/smartadserver/android/library/ui/d;-><init>(Lcom/smartadserver/android/library/ui/SASAdView;I)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 1978
    iget v0, p0, Lcom/smartadserver/android/library/ui/d;->b:I

    return v0
.end method
