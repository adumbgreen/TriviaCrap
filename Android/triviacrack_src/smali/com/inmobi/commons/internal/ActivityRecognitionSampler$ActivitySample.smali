.class public Lcom/inmobi/commons/internal/ActivityRecognitionSampler$ActivitySample;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:I


# direct methods
.method public constructor <init>(IJ)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lcom/inmobi/commons/internal/ActivityRecognitionSampler$ActivitySample;->b:I

    .line 29
    iput-wide p2, p0, Lcom/inmobi/commons/internal/ActivityRecognitionSampler$ActivitySample;->a:J

    .line 30
    return-void
.end method


# virtual methods
.method public getActivity()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/inmobi/commons/internal/ActivityRecognitionSampler$ActivitySample;->b:I

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 18
    iget-wide v0, p0, Lcom/inmobi/commons/internal/ActivityRecognitionSampler$ActivitySample;->a:J

    return-wide v0
.end method
