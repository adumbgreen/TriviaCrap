.class public final Lcom/etermax/admob/millennial/MillennialAdapterExtras;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/mediation/NetworkExtras;


# instance fields
.field private children:Ljava/lang/Boolean;

.field private education:Lcom/etermax/admob/millennial/MillennialAdapterExtras$Education;

.field private ethnicity:Lcom/etermax/admob/millennial/MillennialAdapterExtras$Ethnicity;

.field private income:Ljava/lang/Integer;

.field private interstitialTime:Lcom/etermax/admob/millennial/MillennialAdapterExtras$InterstitialTime;

.field private maritalStatus:Lcom/etermax/admob/millennial/MillennialAdapterExtras$MaritalStatus;

.field private orientation:Lcom/etermax/admob/millennial/MillennialAdapterExtras$Orientation;

.field private politics:Lcom/etermax/admob/millennial/MillennialAdapterExtras$Politics;

.field private postalCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    sget-object v0, Lcom/etermax/admob/millennial/MillennialAdapterExtras$InterstitialTime;->UNKNOWN:Lcom/etermax/admob/millennial/MillennialAdapterExtras$InterstitialTime;

    iput-object v0, p0, Lcom/etermax/admob/millennial/MillennialAdapterExtras;->interstitialTime:Lcom/etermax/admob/millennial/MillennialAdapterExtras$InterstitialTime;

    .line 8
    iput-object v1, p0, Lcom/etermax/admob/millennial/MillennialAdapterExtras;->income:Ljava/lang/Integer;

    .line 10
    iput-object v1, p0, Lcom/etermax/admob/millennial/MillennialAdapterExtras;->maritalStatus:Lcom/etermax/admob/millennial/MillennialAdapterExtras$MaritalStatus;

    .line 12
    iput-object v1, p0, Lcom/etermax/admob/millennial/MillennialAdapterExtras;->ethnicity:Lcom/etermax/admob/millennial/MillennialAdapterExtras$Ethnicity;

    .line 14
    iput-object v1, p0, Lcom/etermax/admob/millennial/MillennialAdapterExtras;->orientation:Lcom/etermax/admob/millennial/MillennialAdapterExtras$Orientation;

    .line 16
    iput-object v1, p0, Lcom/etermax/admob/millennial/MillennialAdapterExtras;->politics:Lcom/etermax/admob/millennial/MillennialAdapterExtras$Politics;

    .line 18
    iput-object v1, p0, Lcom/etermax/admob/millennial/MillennialAdapterExtras;->education:Lcom/etermax/admob/millennial/MillennialAdapterExtras$Education;

    .line 20
    iput-object v1, p0, Lcom/etermax/admob/millennial/MillennialAdapterExtras;->children:Ljava/lang/Boolean;

    .line 22
    iput-object v1, p0, Lcom/etermax/admob/millennial/MillennialAdapterExtras;->postalCode:Ljava/lang/String;

    .line 202
    return-void
.end method


# virtual methods
.method public getChildren()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/etermax/admob/millennial/MillennialAdapterExtras;->children:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getEducation()Lcom/etermax/admob/millennial/MillennialAdapterExtras$Education;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/etermax/admob/millennial/MillennialAdapterExtras;->education:Lcom/etermax/admob/millennial/MillennialAdapterExtras$Education;

    return-object v0
.end method

.method public getEthnicity()Lcom/etermax/admob/millennial/MillennialAdapterExtras$Ethnicity;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/etermax/admob/millennial/MillennialAdapterExtras;->ethnicity:Lcom/etermax/admob/millennial/MillennialAdapterExtras$Ethnicity;

    return-object v0
.end method

.method public getIncomeInUsDollars()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/etermax/admob/millennial/MillennialAdapterExtras;->income:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMaritalStatus()Lcom/etermax/admob/millennial/MillennialAdapterExtras$MaritalStatus;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/etermax/admob/millennial/MillennialAdapterExtras;->maritalStatus:Lcom/etermax/admob/millennial/MillennialAdapterExtras$MaritalStatus;

    return-object v0
.end method

.method public getPolitics()Lcom/etermax/admob/millennial/MillennialAdapterExtras$Politics;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/etermax/admob/millennial/MillennialAdapterExtras;->politics:Lcom/etermax/admob/millennial/MillennialAdapterExtras$Politics;

    return-object v0
.end method

.method public getPostalCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/etermax/admob/millennial/MillennialAdapterExtras;->postalCode:Ljava/lang/String;

    return-object v0
.end method
