.class public Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final dateFormatStr:Ljava/lang/String;

.field private final threadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/text/DateFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig$1;

    invoke-direct {v0, p0}, Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig$1;-><init>(Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;)V

    iput-object v0, p0, Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;->threadLocal:Ljava/lang/ThreadLocal;

    .line 60
    iput-object p1, p0, Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;->dateFormatStr:Ljava/lang/String;

    .line 61
    return-void
.end method


# virtual methods
.method public getDateFormat()Ljava/text/DateFormat;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;->threadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;->dateFormatStr:Ljava/lang/String;

    return-object v0
.end method
