.class public Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;
.super Ljava/lang/Object;
.source "HarmonizedColorsOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/HarmonizedColorsOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private colorAttributeToHarmonizeWith:I

.field private colorAttributes:Lcom/google/android/material/color/HarmonizedColorAttributes;

.field private colorResourceIds:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 80
    iput-object v0, p0, Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;->colorResourceIds:[I

    .line 82
    sget v0, Lcom/google/android/material/R$attr;->colorPrimary:I

    iput v0, p0, Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;->colorAttributeToHarmonizeWith:I

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;)[I
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;->colorResourceIds:[I

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;)Lcom/google/android/material/color/HarmonizedColorAttributes;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;->colorAttributes:Lcom/google/android/material/color/HarmonizedColorAttributes;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;)I
    .locals 0

    .line 78
    iget p0, p0, Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;->colorAttributeToHarmonizeWith:I

    return p0
.end method


# virtual methods
.method public build()Lcom/google/android/material/color/HarmonizedColorsOptions;
    .locals 2

    .line 125
    new-instance v0, Lcom/google/android/material/color/HarmonizedColorsOptions;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/color/HarmonizedColorsOptions;-><init>(Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;Lcom/google/android/material/color/HarmonizedColorsOptions$1;)V

    return-object v0
.end method

.method public setColorAttributeToHarmonizeWith(I)Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;
    .locals 0

    .line 119
    iput p1, p0, Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;->colorAttributeToHarmonizeWith:I

    return-object p0
.end method

.method public setColorAttributes(Lcom/google/android/material/color/HarmonizedColorAttributes;)Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;->colorAttributes:Lcom/google/android/material/color/HarmonizedColorAttributes;

    return-object p0
.end method

.method public setColorResourceIds([I)Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;->colorResourceIds:[I

    return-object p0
.end method
